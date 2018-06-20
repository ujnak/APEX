-----------------------------------------------------------
-- Demo Projects Color package
-----------------------------------------------------------
create or replace package demo_projects_color_pkg is
  function project_color 
    (  p_project_id     in number
     , p_completed_date in date
    )
    return varchar2;
  function milestone_color 
    (  p_milestone_id   in number 
     , p_due_date       in date
    )
    return varchar2;
  function task_color 
    (  p_task_id        in number 
     , p_completed_date in date
     , p_due_date       in date
    )
    return varchar2;
end demo_projects_color_pkg;
/

create or replace package body demo_projects_color_pkg as
  --------------------------------
  --<< Project Color function >>--
  --------------------------------
  -- Determine the color to display the Project in the calendar
  --   Red = Tasks ended after completion date
  --   Orange = Incomplete tasks ended after completion date
  --   Green = All tasks ended on or before completion date
  --   Blue = Project not completed
  -- Note: Projects are only shown when there are Tasks with no Milestones
  function project_color
    (  p_project_id     in number
     , p_completed_date in date
    )
    return varchar2
  is
  begin
    -- When the Project is Assigned or In-Progress then return blue as the project is not yet completed
    -- As such, all tasks *should* be completed before the project is completed
    if p_completed_date is null then
      return 'apex-cal-blue fa fa-folder';
    end if;

    for c1 in (select nvl(t.is_complete_yn, 'N') completed
               ,      t.end_date
               from demo_tasks t
               where t.milestone_id is null
               and   t.project_id = p_project_id
               order by 2 desc, 1 desc
              ) loop
      -- Tasks with an end date after the Project completion date need to be flagged
      if c1.end_date > p_completed_date then
        if c1.completed = 'Y' then
          -- The task is completed so return red 
          return 'apex-cal-red fa fa-folder';
        else
          -- Otherwise return orange
          return 'apex-cal-orange fa fa-folder';
        end if;
      -- The task is not completed but the project is completed so return orange
      elsif c1.completed = 'N' then
        return 'apex-cal-orange fa fa-folder';
      end if;
    end loop;
    -- All of the tasks were ended before the completion date so return green
    return 'apex-cal-green fa fa-folder';
  end project_color;

  --
  ----------------------------------
  --<< Milestone Color function >>--
  ----------------------------------
  -- Determine the color to display the Milestone in the calendar
  --   Red = Milestone in the past and tasks ended after due date
  --   Orange = Milestone in the past and incomplete tasks
  --   Green = Milestone in the past and all tasks ended before due date
  --   Yellow = Milestone in the future and Tasks scheduled to finish after due date
  --   Blue = Milestone in the future and Tasks scheduled to finish on or before due date
  function milestone_color
    (  p_milestone_id  in number
     , p_due_date      in date
    )
    return varchar2
  is
  begin
    for c1 in (select nvl(t.is_complete_yn, 'N') completed
               from demo_tasks t
               where t.end_date > p_due_date
               and   t.milestone_id = p_milestone_id
               order by 1 desc
              ) loop
      -- The Task was completed after the Milestone due date so return red
      if c1.completed = 'Y' then
        return 'apex-cal-red fa fa-flag';
      else
        if p_due_date < sysdate then
          -- The Task is not completed but the Milestone due date is passed so return orange
          return 'apex-cal-orange fa fa-flag';
        else
          -- Otherwise return yellow as the Task may not be completed before the Milestone due date, so it is considered at risk
          return 'apex-cal-yellow fa fa-flag';
        end if;
      end if;
    end loop;

    -- The Task is not completed and the Milestone due date has already passed so return orange
    if p_due_date < sysdate then
      for c1 in (select 'Incomplete'
                 from demo_tasks t
                 where t.end_date <= p_due_date
                 and   nvl(t.is_complete_yn, 'N') = 'N'
                 and   t.milestone_id = p_milestone_id
                 order by 1 desc
                ) loop
        return 'apex-cal-orange fa fa-flag';
      end loop;
    end if;

    -- No errors / warnings found
    if p_due_date < sysdate then
      -- The Milestone due date has passed so return green
      return 'apex-cal-green fa fa-flag';
    else
      -- Otherwise return blue
      return 'apex-cal-blue fa fa-flag';
    end if;
  end milestone_color;

  --
  -----------------------------
  --<< Task Color function >>--
  -----------------------------
  -- Determine the color to display the Task in the calendar
  --   Red = Task ended after completion / due date
  --   Orange = Incomplete task ended after completion / due date
  --   Green = Task ended on or before completion / due date
  --   Yellow = Task scheduled to finish after due date
  --   Blue = Tasks scheduled to finish on or before due date or has no milestone
  function task_color
    (  p_task_id        in number
     , p_completed_date in date
     , p_due_date       in date
    )
    return varchar2
  is
    l_milestone_id  number;
    l_is_complete   varchar2(1);
    l_end_date      date;
  begin
    select t.milestone_id
    ,      nvl(t.is_complete_yn, 'N')
    ,      t.end_date 
    into l_milestone_id
    ,    l_is_complete
    ,    l_end_date
    from demo_tasks t
    where t.id = p_task_id;

    -- Check for errors / warnings for the task
    if l_end_date < sysdate
    and l_is_complete = 'N' then
      -- The task is Incomplete and the end date is in the past so return orange
      return 'apex-cal-orange fa fa-check-square-o';
    -- Set color for Tasks with no Milestone
    elsif l_milestone_id is null then
      if nvl(p_completed_date, l_end_date) < l_end_date then
        -- The task end date is after the projection completion date so return red
        -- Note: If the project does not have a completion date it will pass this check
        return 'apex-cal-red fa fa-check-square-o';
      else
        -- Otherwise return green
        return 'apex-cal-green fa fa-check-square-o';
      end if;
    -- Set color for tasks with Milestone
    else
      if p_due_date < l_end_date 
      and p_due_date < sysdate then
        -- The Milestone due date is in the past and before the Task end date so return red
        return 'apex-cal-red fa fa-check-square-o';
      elsif p_due_date < l_end_date 
      and p_due_date >= sysdate then
        -- The Milestone due date is in the future and before the Task end date so return yellow, as the task is at risk
        return 'apex-cal-yellow fa fa-check-square-o';
      end if;
    end if;

    -- No errors / warnings found
    if l_end_date < sysdate then
      -- The Task end date has passed so return green
      return 'apex-cal-green fa fa-check-square-o';
    else
      -- Otherwise return blue
      return 'apex-cal-blue fa fa-check-square-o';
    end if;
  end task_color;
    
end demo_projects_color_pkg;
/
