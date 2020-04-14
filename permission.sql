USE ANTINFO
GO


SELECT [ar].[emp_id],
	   [ar.m_Employee].email,
       [ar.m_Employee].[firstname],
       [ar.m_Employee].[lastname],
       [ar].[role_id],
       [ar.m_SEC_ROLE].[role_nm],
	   (SELECT title FROM dbo.Faculty WHERE faculty_id = [ar.m_Employee].faculty_id) AS Facultyname,
       [srg].[module_id],
       [srg.m_SEC_MODULE].[module_name],
       [so].[oprn_id],
       [so].[oprn_desc],
       [srg].[permissions],
       [srg.m_SEC_ROLE].[permission_id]
FROM [Security].[ANT_ROLE] AS [ar]
    INNER JOIN [Employee] AS [ar.m_Employee]
        ON [ar].[emp_id] = [ar.m_Employee].[emp_id]
    INNER JOIN [Security].[SEC_ROLE] AS [ar.m_SEC_ROLE]
        ON [ar].[role_id] = [ar.m_SEC_ROLE].[role_id]
    INNER JOIN [Security].[SEC_ROLE_MODULE] AS [srg]
        ON [ar].[role_id] = [srg].[role_id]
    INNER JOIN [Security].[SEC_ROLE] AS [srg.m_SEC_ROLE]
        ON [srg].[role_id] = [srg.m_SEC_ROLE].[role_id]
    INNER JOIN [Security].[SEC_MODULE] AS [srg.m_SEC_MODULE]
        ON [srg].[module_id] = [srg.m_SEC_MODULE].[module_id]
    INNER JOIN [Security].[SEC_PERMISSION_OPRN] AS [spo]
        ON [ar.m_SEC_ROLE].[permission_id] = [spo].[permission_id]
    INNER JOIN [Security].[SEC_OPRN] AS [so]
        ON [spo].[oprn_id] = [so].[oprn_id]
    INNER JOIN [Security].[SEC_MODULE] AS [sm]
        ON [srg].[module_id] = [sm].[module_id]
    INNER JOIN [Security].[SEC_GRP_MODULE] AS [sgm]
        ON [sm].[module_id] = [sgm].[module_id]
    INNER JOIN [Security].[SEC_GRP] AS [sg]
        ON [sgm].[grp_id] = [sg].[grp_id]
--WHERE [ar.m_Employee].[email] = N'bencsunited@gmail.com';
WHERE ar.role_id = 'R005'