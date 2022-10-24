# homework4-ddl.sql

## Code specifications
# 0. Homework 4 will form a basis for homework 5. Be sure to follow the specs!!
# 1. Complete all sections below.
# 2. Table names must MATCH EXACTLY to schemas provided.
# 3. Define primary keys in each table as appropriate;
# 4. Don't worry about foreign keys, that's next time!
# 5. Assign ID to skills, people, roles manually (you pick the ID number!)
# 6. Assign ID in the peopleskills and peopleroles automatically (use auto_increment)
# 7. Roles_id is manually assigned, peopleroles_id is auto_increment
# 8. Data types: ONLY use "int", "varchar(255)", "varchar(4096)" or "date" as appropriate.

# Section 1
# Drops all tables.  This section should be amended as new tables are added.

# show databases;
drop table if exists people;
drop table if exists peopleskills;
drop table if exists skills;

# Section 2
# Create skills( id,name, description, tag, url, time_commitment)
# ID, name, tag cannot be NULL. Other fields can default to NULL.

drop table if exists skills;
create table skills(
    id int, 
    name varchar(255),
    tag varchar(255),
    primary key (id)

)

# Section 3
# Populate skills
# Populates the skills table with six skills, their tag fields must exactly contain “Skill 1”, “Skill 2”, etc.
# You can assign skill names.

insert into skills ( id, name, tag) values
    (1001, 'Juggling', 'Skill 1'),
    (1002, 'Swimming', 'Skill 2'),
    (1003, 'Running', 'Skill 3'),
    (1004, 'Skiiing', 'Skill 4'),
    (1005, 'Drinking', 'Skill 5'),
    (1006, 'Coding', 'Skill 6')
    ;

select name,tag from skills;
select * from skills;

# Section 4
# Create people( id,first_name, last_name, email, linkedin_url, headshot_url, discord_handle, brief_bio, date_joined)
# ID cannot be null, Last name cannot be null, date joined cannot be NULL.
# All other fields can default to NULL.

drop table if exists people;
create table people{
    people_id int not null,
    people_lastname varchar(255),
    primary key (people_id)
}

# Section 5
# Populate people with six people.
# Their last names must exactly be “Person 1”, “Person 2”, etc.
# Other fields are for you to assign.

insert into people (people_id, people_lastname)
(2001, 'Person1'),
(2002, 'Person2'),
(2003, 'Person3'),
(2004, 'Person4'),
(2005, 'Person5'),
(2006, 'Person6');

select * from people;

# Section 6
# Create peopleskills( id, skills_id, people_id, date_acquired )
# None of the fields can ba NULL. ID can be auto_increment.

drop table if exists peopleskills;
create table peopleskills(
    peopleskills_id int not null,
    peopleskills_people_id in not null,
    peopleskills_skills_id int not null,
    peopleskills_data_acquired date,
    primary key (peopleskills_id)
)

# Section 7
# Populate peopleskills such that:
# Person 1 has skills 1,3,6;
# Person 2 has skills 3,4,5;
# Person 3 has skills 1,5;
# Person 4 has no skills;
# Person 5 has skills 3,6;
# Person 6 has skills 1,3,4,5,6;

insert into peopleskills (peopleskills_people_id, peopleskills_id, peopleskills_data_acquired)
(2001, 1001, '2022-10-24'),
(2001, 1002, '2022-10-24'),
(2001, 1003, '2022-10-24'),
(2001, 1004, '2022-10-24'),
(2001, 1005, '2022-10-24'),
(2001, 1006, '2022-10-24'),

(2002, 1001, '2022-10-24'),
(2002, 1002, '2022-10-24'),
(2002, 1003, '2022-10-24'),
(2002, 1004, '2022-10-24'),
(2002, 1005, '2022-10-24'),
(2002, 1006, '2022-10-24'),

(2003, 1001, '2022-10-24'),
(2003, 1002, '2022-10-24'),
(2003, 1003, '2022-10-24'),
(2003, 1004, '2022-10-24'),
(2003, 1005, '2022-10-24'),
(2003, 1006, '2022-10-24'),

(2004, 1001, '2022-10-24'),
(2004, 1002, '2022-10-24'),
(2004, 1003, '2022-10-24'),
(2004, 1004, '2022-10-24'),
(2004, 1005, '2022-10-24'),
(2004, 1006, '2022-10-24'),

(2005, 1001, '2022-10-24'),
(2005, 1002, '2022-10-24'),
(2005, 1003, '2022-10-24'),
(2005, 1004, '2022-10-24'),
(2005, 1005, '2022-10-24'),
(2005, 1006, '2022-10-24'),

(2006, 1001, '2022-10-24'),
(2006, 1002, '2022-10-24'),
(2006, 1003, '2022-10-24'),
(2006, 1004, '2022-10-24'),
(2006, 1005, '2022-10-24'),
(2006, 1006, '2022-10-24');

select * from peopleskills;

# Section 8
# Create roles( id, name, sort_priority )
# sort_priority is an integer and is used to provide an order for sorting roles
#


# Section 9
# Populate roles
# Designer, Developer, Recruit, Team Lead, Boss, Mentor
# Sort priority is assigned numerically in the order listed above (Designer=10, Developer=20, Recruit=30, etc.)


# Section 10
# Create peopleroles( id, people_id, role_id, date_assigned )
# None of the fields can be null.  ID can be auto_increment


# Section 11
# Populate peopleroles
# Person 1 is Developer 
# Person 2 is Boss, Mentor
# Person 3 is Developer and Team Lead
# Person 4 is Designer
# person 5 is Recruit
# Person 6 is Developer and Designer

