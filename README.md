# Homework 4 - Database Funhouse

Your boss came to you all excited with another one of their great ideas. “I want you to build me a DATABASE!” 

## Background

Your company consists of a ragtag bunch of designers and developers trying to pay for school by picking up project work under the tutelage of the world famous sensei of Kill-Bill fame. (Careful, he's dangerous with a Hanzo katana!) Business has been slow and our sensei is looking for ways to jumpstart this frankenstein.

### Task 1

Your first task is to construct a company-wide resume capturing the collective skills and certifications of all the people in your company. Skills and certifications are stored in a database table. Each skill should have an ID, a name, a description, and a URL pointing to where customers can learn more about the credential and shake their heads in awe that this company is actually claiming it. The sensei has also asked that you include desired skills, credentials and certifications that he wants the company to have but no one in the company might yet have.

### Task 2

Your second task is to construct a listing of company employees, past and present. Data to support this report are stored in the same database. Each employee should have an employee ID, a name, an email address, a LinkedIn URL, a headshot, discord handle, a brief bio, and the date that they joined the company.

### Task 3

Your third task is to associate skills and certifications with employees. Each skill can be associated with none or more employees. Each employee can have none or more skills. Each pairing of skill and employee should include a date the skill was acquired by or awarded to the employee. The table can also include the date that the skill or credential is ANTICIPATED to be acquired, so that the table can include expected graduation dates of the employees. Go Team!

### Task 4

Your fourth task is to assign employees to roles. A role represents an activity undertaken for the company. Roles for this company include Boss, Mentor, Team Lead, Developer, Designer, and Recruit. All employees must have at least one role. New employees are assigned the Recruit role. After time they may choose Developer, Designer, or both. Employees can be team leads, too.  There is limited number of mentors and bosses.

### Task 5

Once the database is constructed, your last task is to build a series of queries that will test various aspects of the created table, eventually forming the basis of an entirely new suite of reports using information from the database.

## Table Schema

- skills( id,name, description, tag, url, time_commitment)
- people( id,first_name, last_name, email, linkedin_url, headshot_url, discord_handle, brief_bio, date_joined)
- peopleskills( id, skills_id, people_id, date_acquired )
- roles( id, name, sort_priority )
- peopleroles( id, people_id, role_id, date_acquired )

## Deliverables

For this assignment I'm experimenting with an autograder in gradescope.  For autograders to work, they need to recognize various sections of your submission and assign them to specific questions. For this assignment response sections are identified with a *Question #* or *"Section #"* tag in a comment.

I provide you with pre-completed DDL and DML files with the appropriate tags already included.  Your job is to simply add code to these pre-scripted sections.

**DO NOT CHANGE THE SECTION HEADINGS, THAT IS, THOSE SECTIONS MARKED WITH "QUESTION #" or "SECTION #" **

1. Edit the "homework4-ddl.sql" file, completing the various sections with valid SQL statements.
1. Edit the "homework-dml.sql" file, completing the various questions with valid SQL statements.

Both files contain sections to be completed.

## Submission and grading

When complete, visit Gradescope and submit your repo for review. You should receive feedback in real-time, permitting you to correct your assignment.

It's NOT the fastest, so please do not use the autograder like a compiler.  There ARE SIMPLER ways, for example, by using the SQL Tools add-on in VSCODE.

## Instructor notes

Homework 4 introduces the student to SQL statements, those that create and alter the *structure* of the data base (DDL or Data Definition Language statement) and those that create and alter the data itself (DML or Data Manipulation Language statements).

It's good practice to keep DML and DDL statements separate. DDL statements are best applied as scripts using a shell, while DML statements are best applied as snippets using a GUI or other report generator.

### Prerequisites

Everybody has to start somewhere! This is where I'm assuming that we're starting for this assignment.

- Verify that you can connect to MySQL using PHPMyAdmin;
- Verify that you can use VSCODE on your machine;
- Verify that you can use GIT on your machine;

### VSCode Extensions
Here is a listing of relevant extensions that I install in my VSCODE.

    code --install-extension github.classroom
    code --install-extension GitHub.vscode-pull-request-github
    code --install-extension ms-vscode-remote.remote-containers
    code --install-extension ms-vscode-remote.remote-ssh
    code --install-extension ms-vscode-remote.remote-ssh-edit
    code --install-extension ms-vscode.makefile-tools
    code --install-extension mtxr.sqltools
    code --install-extension mtxr.sqltools-driver-mysql
    code --install-extension yzhang.markdown-all-in-one


