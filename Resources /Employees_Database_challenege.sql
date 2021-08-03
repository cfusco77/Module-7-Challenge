--find number of titles retiring 
SELECT e.emp_no,
    e.first_name,
    e.last_name,
    t.title,
    t.from_date,
    t.to_date
INTO retirement_titles
FROM employees AS e
INNER JOIN titles AS t 
	ON (e.emp_no = t.emp_no)
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

SELECT * FROM retirement_titles;

--create unique_titles table 
SELECT DISTINCT ON (emp_no) emp_no,
    first_name,
    last_name,
    title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no ASC, to_date DESC;

SELECT * FROM unique_titles; 

--creat retiring_titles table 
SELECT COUNT(title) AS count, title
INTO retiring_titles
FROM unique_titles
GROUP BY title


ORDER BY count DESC;

select * from retiring_titles;

--create mentorship_eligibility table 
SELECT DISTINCT ON (e.emp_no) e.emp_no,
    e.first_name,
    e.last_name,
    e.birth_date,
    de.from_date,
    de.to_date,
    t.title
INTO mentorship_eligibility
FROM employees AS e
JOIN dept_emp as de 
    ON (e.emp_no = de.emp_no)
JOIN titles AS t 
    ON (e.emp_no = t.emp_no)
WHERE (de.to_date = '9999-01-01') AND
    (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no;

SELECT * from mentorship_eligibility; 

--count the available mentors 
SELECT COUNT(title) AS count, title
INTO available_mentors
FROM mentorship_eligibility
GROUP BY title;

SELECT * FROM available_mentors;