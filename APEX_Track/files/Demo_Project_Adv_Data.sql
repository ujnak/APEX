create or replace package demo_project_comm_data_pkg as
  procedure load_sample_data;
  procedure remove_sample_data;
end demo_project_comm_data_pkg; 
/

create or replace package body demo_project_comm_data_pkg as
  procedure load_sample_data is
    l_project_id        number;
    l_comment_id        number;
    l_add_days          number;
  begin
    -- Remove any data currenlty in the tables
    remove_sample_data;

    -----------------------------------
    --<< Determine the data offset >>--
    -----------------------------------
    l_add_days := sysdate - to_date('20150101','YYYYMMDD');

    --*******************************************--
    --*** Load Comments for specific Projects ***-- 
    --*******************************************--
    -- Need to find the project and then insert the comment

    --------------------------------
    --<< Comments for Project 1 >>--
    --------------------------------
    for c1 in (select id
               from demo_projects
               where name = 'Configure APEX Environment'
              ) loop
      l_project_id := c1.id;

      -- Insert Project Comments
      insert into demo_project_comments
        (  project_id
         , comment_text
        )
      values
        (  l_project_id
         , 'We have decided to use Embedded PL/SQL Gateway (EPG) for Dev Only and Oracle REST Data Services (ORDS) for QA and Prod.'
        )
      returning id into l_comment_id;
      update demo_project_comments
        set created = to_date('20141202', 'YYYYMMDD') + l_add_days
        where id = l_comment_id;

      insert into demo_project_comments
        (  project_id
         , comment_text
        )
      values
        (  l_project_id
         , 'Installed Application Express 5.0.3.'
        )
      returning id into l_comment_id;
      update demo_project_comments
        set created = to_date('20141204', 'YYYYMMDD') + l_add_days
        ,   created_by = 'MEIYU'
        where id = l_comment_id;

      insert into demo_project_comments
        (  project_id
         , comment_text
        )
      values
        (  l_project_id
         , 'Installed ORDS 3.0.3. in QA and Prod environments'
        )
      returning id into l_comment_id;
      update demo_project_comments
        set created = to_date('20141204', 'YYYYMMDD') + l_add_days
        ,   created_by = 'HARRY'
        where id = l_comment_id;
    end loop;

    --------------------------------
    --<< Comments for Project 2 >>--
    --------------------------------
    for c1 in (select id
               from demo_projects
               where name = 'Train Developers on Application Express'
              ) loop
      l_project_id := c1.id;
      
      -- Insert Project Comments
      insert into demo_project_comments
        (  project_id
         , comment_text
        )
      values
        (  l_project_id
         , 'The exercises had some errors that need correcting ASAP.'
        )
      returning id into l_comment_id;
      update demo_project_comments
        set created = to_date('20141211', 'YYYYMMDD') + l_add_days
        where id = l_comment_id;

      insert into demo_project_comments
        (  project_id
         , comment_text
        )
      values
        (  l_project_id
         , 'Thanks for the feedback, Exercises corrected.'
        )
      returning id into l_comment_id;
      update demo_project_comments
        set created = to_date('20141212', 'YYYYMMDD') + l_add_days
        ,   created_by = 'TKING'
        where id = l_comment_id;
    end loop;

    --------------------------------
    --<< Comments for Project 3 >>--
    --------------------------------
    for c1 in (select id
               from demo_projects
               where name = 'Migrate .Net Applications'
              ) loop
      l_project_id := c1.id;
      
      -- Insert Project Comments
      insert into demo_project_comments
        (  project_id
         , comment_text
        )
      values
        (  l_project_id
         , 'Bernie - I have migrated all of the projects data across so you can start your pilot now.'
        )
      returning id into l_comment_id;
      update demo_project_comments
        set created = to_date('201412310100', 'YYYYMMDDHH24MI') + l_add_days
        ,   created_by = 'THEBROCK'
        where id = l_comment_id;

      insert into demo_project_comments
        (  project_id
         , comment_text
        )
      values
        (  l_project_id
         , 'I''m telling you now, this Customer Tracker thing had better be good'
        )
      returning id into l_comment_id;
      update demo_project_comments
        set created = to_date('201412310200', 'YYYYMMDDHH24MI') + l_add_days
        ,   created_by = 'BERNIE'
        where id = l_comment_id;

      insert into demo_project_comments
        (  project_id
         , comment_text
        )
      values
        (  l_project_id
         , 'This guy Mike told me this app is brilliant.'
        )
      returning id into l_comment_id;
      update demo_project_comments
        set created = to_date('201412310300', 'YYYYMMDDHH24MI') + l_add_days
        ,   created_by = 'THEBROCK'
        where id = l_comment_id;

      insert into demo_project_comments
        (  project_id
         , comment_text
        )
      values
        (  l_project_id
         , 'So far Customer Tracker is working out great - better than the old .Net apps. Brocky my boy you are the man!'
        )
      returning id into l_comment_id;
      update demo_project_comments
        set created = to_date('201501010100', 'YYYYMMDDHH24MI') + l_add_days
        ,   created_by = 'BERNIE'
        where id = l_comment_id;

      insert into demo_project_comments
        (  project_id
         , comment_text
        )
      values
        (  l_project_id
         , 'Bernie I told you that you were going to be impressed.'
        )
      returning id into l_comment_id;
      update demo_project_comments
        set created = to_date('201501010200', 'YYYYMMDDHH24MI') + l_add_days
        ,   created_by = 'THEBROCK'
        where id = l_comment_id;

      insert into demo_project_comments
        (  project_id
         , comment_text
        )
      values
        (  l_project_id
         , 'All of the SQL Server tables and T-SQL now migrated and ready for developers to use in the Oracle DB.'
        )
      returning id into l_comment_id;
      update demo_project_comments
        set created = to_date('20141217', 'YYYYMMDD') + l_add_days
        ,   created_by = 'THALL'
        where id = l_comment_id;
    end loop;

  end load_sample_data;

  procedure remove_sample_data is
  begin
    delete from demo_project_comments;
  end remove_sample_data;

end demo_project_comm_data_pkg;
/

-----------------------
--<< Load the Data >>--
-----------------------
begin
  demo_project_comm_data_pkg.load_sample_data;
end;
/
