--<< Drop existing DB Objects >>--
--   Uncomment the following lines if rereunning the script
-- drop table demo_project_constraint_lookup cascade constraints;
-- drop table demo_project_comments cascade constraints;
-- drop package demo_projects_color_pkg;
-- drop function demo_projects_error_handling;
--
--   The following database objects are from the Basic Projects App
-- drop table demo_team_members cascade constraints;
-- drop table demo_projects cascade constraints;
-- drop table demo_milestones cascade constraints;
-- drop table demo_tasks cascade constraints;
-- drop package demo_projects_data_pkg;

-----------------------------------------------------------
-- Demo Build Constraint Lookup table
-----------------------------------------------------------
create table demo_project_constraint_lookup(
    constraint_name varchar2(30)   not null 
                    constraint demo_project_const_lookup_pk
                    primary key,
    message         varchar2(4000) not null)
/

-----------------------------------------------------------
-- Demo Project Comments table
-----------------------------------------------------------
create table demo_project_comments (
    id                   number        not null
                         constraint demo_project_comments_pk 
                         primary key,
    project_id           number not null,
    comment_text         varchar2(4000) not null,
    
    created                 timestamp with local time zone  not null,
    created_by              varchar2(255)                   not null,
    updated                 timestamp with local time zone  not null,
    updated_by              varchar2(255)                   not null )
/

alter table demo_project_comments add constraint demo_project_comments_proj_fk
  foreign key (project_id) references demo_projects (id) 
  on delete cascade;

create index demo_project_comments_proj_idx on demo_project_comments (project_id);

create or replace trigger biu_demo_project_comments
    before insert or update on demo_project_comments
    for each row
begin
    if :new.id is null then
        :new.id := to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
    end if;

    if inserting then
        :new.created    := localtimestamp;
        :new.created_by := nvl(wwv_flow.g_user,user);
    end if;
    :new.updated    := localtimestamp;
    :new.updated_by := nvl(wwv_flow.g_user,user);
end;
/
