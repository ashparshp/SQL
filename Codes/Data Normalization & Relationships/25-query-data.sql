SELECT * FROM employees AS e
LEFT JOIN projects_employees AS pe ON pe.employee_id = e.id
LEFT JOIN projects AS p ON p.id= pe.project_id;