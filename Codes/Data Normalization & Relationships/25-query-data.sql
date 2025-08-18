-- SELECT * FROM employees AS e
-- LEFT JOIN projects_employees AS pe ON pe.employee_id = e.id
-- LEFT JOIN projects AS p ON p.id= pe.project_id;

SELECT e.id AS employee_id, e.first_name, t.name
FROM employees AS e
LEFT JOIN  teams AS t ON t.id = e.team_id
WHERE t.id = 2;