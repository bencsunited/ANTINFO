/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) s.[role_id], s.role_nm
      ,e.[emp_id], e.email, e.firstname, e.lastname, f.title, f.faculty_name
  FROM [ANTINFO].[Security].[ANT_ROLE]
  INNER JOIN dbo.Employee e ON e.emp_id = ANT_ROLE.emp_id
  INNER JOIN Security.SEC_ROLE s ON s.role_id = ANT_ROLE.role_id
  INNER JOIN dbo.Faculty f ON f.faculty_id = e.faculty_id