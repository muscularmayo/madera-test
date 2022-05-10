USE DeveloperTest

/***********************************************************************************************************************
Congratulations on successfully completing the written practicum for the Madera Unified Developer position. We are
excited and pleased to have you here. For this portion of the interview process, you will be developing SQL queries to 
demonstrate your proficiency in SQL.

There are 4 tables in the DeveloperTest Database.
	1. StaffAndJobTitles
	2. UserAccountsAndGroups
	3. UserGroupAssignments
	4. UserGroupPermissions
***********************************************************************************************************************/

/***********************************************************************************************************************
DEFINITIONS:

User - An account setup for a staff member or other. Used to login.

Group - An organizational unit used to group users.

Permissions - Access permissions given. Can be assigned to a user or group. If assigned to a group, all members of the 
group receive the same permissions.

Table Relationships -	StaffAndJobTitles.StaffId = UserAccountsAndGroups.StaffId
						UserAccountsAndGroups.UserId = UserGroupAssignments.UserId
						UserAccountsAndGroups.UserId = UserGroupAssignments.GroupId  -- All Groups are also Users and 
																					 -- have their own UserId
						UserAccountsAndGroups.UserId = UserGroupPermissions.UserId
************************************************************************************************************************/

/************************************************************************************************************************
STEPS TO COMPLETE:

	1a. Write a query that joins the StaffAndJobTitles and the UserAccountsAndGroups table
			Include the columns StaffId, JobTitle, UserId 

	1b. Using the query from (1a), joing to the UserGroupsAssignments table to find out which groups staff members are in. 
		Only include staff that are in 1 group or more.
			Include the columns StaffId, JobTitle, UserId, GroupId

	2.	Write a query that produces an unduplicated list of Table Code and Field Code permissions by JobTitle. Your query 
		should produce the maximum value for the columns ReadAccess, UpdateAccess, InsertAccess, and DeleteAccess. See 
		the example below.
			Include the columns JobTitle, TableCode, FieldCode, ReadAccess, UpdateAccess, InsertAccess, DeleteAccess

	Example for Question 2: If Teacher A has ReadAccess (ReadAccess = 1) and Teacher B does not have ReadAccess 
	(ReadAccess = 0) to STU Table (TableCode = STU), your query should return ReadAccess = 1 for the teacher JobTitle 
	on the STU Table Code.  


IMPORTANT!! ALL FINAL QUERIES SHOULD BE SAVED ON THIS FILE IN THE DESIGNATED SPOTS BELOW. FEEL FREE TO OPEN MORE QUERY 
			WINDOWS AS NECESSARY.
*************************************************************************************************************************/

--Query for Step 1a Below


--Query for Step 1b Below


--Query for Step 2 Below




------- Save this file as {Your First Initial}_{Your Last Name}_SQLScript.sql in the Exam Materials Folder
