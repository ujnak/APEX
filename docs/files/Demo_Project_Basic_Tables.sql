--------------------------------------------------------------
--<< Create all of the necessary tables for Demo Projects >>--
--------------------------------------------------------------
 
--<< Drop existing DB Objects >>--
-- * Uncomment the following lines if rereunning the script *
-- drop table demo_team_members cascade constraints;
-- drop table demo_projects cascade constraints;
-- drop table demo_milestones cascade constraints;
-- drop table demo_tasks cascade constraints;
-- drop table demo_to_dos cascade constraints;
-- drop table demo_links cascade constraints;
-- drop package demo_projects_data_pkg;

-----------------------------------------------------------
-- Demo Team Members table
-----------------------------------------------------------
create table demo_team_members (
    id                  number        not null
                        constraint demo_team_members_pk 
                        primary key,
    username            varchar2(255) not null,
    full_name           varchar2(255) not null,
    email               varchar2(255),
    profile             varchar2(4000),
    
    photo_filename      varchar2(300),
    photo_blob          blob,
    photo_mimetype      varchar2(255),
    photo_charset       varchar2(128),
    photo_last_updated  date,
    --
    created                 timestamp with local time zone  not null,
    created_by              varchar2(255)                   not null,
    updated                 timestamp with local time zone  not null,
    updated_by              varchar2(255)                   not null )
/

alter table demo_team_members add constraint demo_team_members_uk
  unique (username);

create or replace trigger biu_demo_team_members
    before insert or update on demo_team_members
    for each row
begin
    if :new.id is null then
        :new.id := to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
    end if;

    if inserting then
        :new.created    := localtimestamp;
        :new.created_by := nvl(wwv_flow.g_user,user);
    end if;
    :new.username   := upper(:new.username);
    :new.updated    := localtimestamp;
    :new.updated_by := nvl(wwv_flow.g_user,user);
end;
/

-----------------------------------------------------------
-- Demo Projects table
-----------------------------------------------------------
create table demo_projects (
    id                   number        not null
                         constraint demo_projects_pk 
                         primary key,
    name                 varchar2(255) not null,
    project_lead         number not null,
    status               varchar2(30) not null,
    completed_date       date,
    description          varchar2(4000),
    --
    created              timestamp with local time zone  not null,
    created_by           varchar2(255)                   not null,
    updated              timestamp with local time zone  not null,
    updated_by           varchar2(255)                   not null )
/

alter table demo_projects add constraint demo_projects_uk
  unique (name);

alter table demo_projects add constraint demo_projects_team_member_fk
  foreign key (project_lead) references demo_team_members (id)
  on delete set null;

create index demo_projects_team_member_idx on demo_projects (project_lead);

alter table demo_projects add constraint demo_projects_status_chk 
  check ( status in ('Assigned','In-Progress','Completed'));

create or replace trigger biu_demo_projects
    before insert or update on demo_projects
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

-----------------------------------------------------------
-- Demo Milestones table
-----------------------------------------------------------
create table demo_milestones (
    id                   number        not null
                         constraint demo_milestones_pk 
                         primary key,
    project_id           number not null,
    name                 varchar2(255) not null,
    due_date             date not null,
    description          varchar2(4000),
    --    
    created              timestamp with local time zone  not null,
    created_by           varchar2(255)                   not null,
    updated              timestamp with local time zone  not null,
    updated_by           varchar2(255)                   not null )
/

alter table demo_milestones add constraint demo_milestones_proj_fk
  foreign key (project_id) references demo_projects (id) 
  on delete cascade;

create index demo_milestones_proj_idx on demo_milestones (project_id);

create or replace trigger biu_demo_milestones
    before insert or update on demo_milestones
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

-----------------------------------------------------------
-- Demo Tasks table
-----------------------------------------------------------
create table demo_tasks (
    id                   number        not null
                         constraint demo_tasks_pk 
                         primary key,
    project_id           number not null,
    milestone_id         number,
    assignee             number not null,
    name                 varchar2(255) not null,
    start_date           date not null,
    end_date             date not null,
    description          varchar2(4000),
    is_complete_yn       varchar2(1),
    --
    created                 timestamp with local time zone  not null,
    created_by              varchar2(255)                   not null,
    updated                 timestamp with local time zone  not null,
    updated_by              varchar2(255)                   not null )
/

alter table demo_tasks add constraint demo_tasks_uk
  unique (project_id, name);

alter table demo_tasks add constraint demo_tasks_team_member_fk
  foreign key (assignee) references demo_team_members (id) 
  on delete set null;

create index demo_tasks_team_member_idx on demo_tasks (assignee);

alter table demo_tasks add constraint demo_tasks_project_fk
  foreign key (project_id) references demo_projects (id) 
  on delete cascade;

create index demo_tasks_project_idx on demo_tasks (project_id);

alter table demo_tasks add constraint demo_tasks_milestone_fk
  foreign key (milestone_id) references demo_milestones (id) 
  on delete set null;

create index demo_tasks_milestone_idx on demo_tasks (milestone_id);

create or replace trigger biu_demo_tasks
    before insert or update on demo_tasks
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

-----------------------------------------------------------
-- Demo To Dos table
-----------------------------------------------------------
create table demo_to_dos (
    id                 number        not null
                         constraint demo_to_dos_pk 
                         primary key,
    project_id           number not null,
    task_id              number not null,
    assignee             number,
    --
    name                 varchar2(255) not null,
    description          varchar2(4000),
    is_complete_yn       varchar2(1),
    --
    created                 timestamp with local time zone  not null,
    created_by              varchar2(255)                   not null,
    updated                 timestamp with local time zone  not null,
    updated_by              varchar2(255)                   not null )
/

alter table demo_to_dos add constraint demo_to_do_project_fk
  foreign key (project_id) references demo_projects (id) 
  on delete cascade;

create index demo_to_do_project_idx  on demo_to_dos (project_id);

alter table demo_to_dos add constraint demo_to_do_task_fk
  foreign key (task_id) references demo_tasks (id) 
  on delete cascade;

create index demo_to_do_task_idx on demo_to_dos (task_id);

alter table demo_to_dos add constraint demo_to_do_team_member_fk
  foreign key (assignee) references demo_team_members (id) 
  on delete set null;

create index demo_to_do_team_member_idx on demo_to_dos (assignee);

create or replace trigger biu_demo_to_dos
    before insert or update on demo_to_dos
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

-----------------------------------------------------------
-- Demo Project Task Links table
-----------------------------------------------------------
create table demo_links (
    id                 number        not null
                         constraint demo_links_pk 
                         primary key,
    project_id         number not null,
    task_id            number not null,
    --
    link_type          varchar2(20) not null,
    url                varchar2(255),
    application_id     number,
    application_page   number,
    description        varchar2(4000),
    --
    created                 timestamp with local time zone  not null,
    created_by              varchar2(255)                   not null,
    updated                 timestamp with local time zone  not null,
    updated_by              varchar2(255)                   not null )
/

alter table demo_links add constraint demo_link_project_fk
  foreign key (project_id) references demo_projects (id) 
  on delete cascade;

create index demo_link_project_idx  on demo_links (project_id);

alter table demo_links add constraint demo_link_task_fk
  foreign key (task_id) references demo_tasks (id) 
  on delete cascade;

create index demo_link_task_idx on demo_links (task_id);

alter table demo_links add constraint demo_link_link_type_cc 
   check ( link_type in ('URL','Application'));


create or replace trigger biu_demo_links
    before insert or update on demo_links
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
