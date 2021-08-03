# Pewlett Hackard Retirement Analysis 

## Overview 
Now that Bobby has proven his SQL chops, his manager has given both of us two more assignments: determine the number of retiring employees per title, and identify employees who are eligible to participate in a mentorship program. Then, summarizes your analysis and help prepare Bobby’s manager for the “silver tsunami” as many current employees reach retirement age.

## Analysis 
For our initial analysis we created 4 tables.
1. retirement_titles
2. unique_titles
3. retiring_titles
4. mentorship_eligibility 

#### Table 1: retirement_titles 
We created a table that holds all the titles of current employees who were born between January 1, 1952 and December 31, 1955. Because some employees may have multiple titles in the database—for example, due to promotions—we needed to use the DISTINCT ON statement to create a table that contains the most recent title of each employee.

#### Table 2: unique_titles 
Using the DISTINCT function we filtered Table 1 for only an employees most recent title.

#### Table 3: retiring_tables 
Next we retrieved the number of employees (count) by their most recent job title who are about to retire. 

#### Table 4: mentorship_eligibility 
Lastly we created a mentorship-eligibility table that holds the current employees who were born between January 1, 1965 and December 31, 1965.

## Results 
What we found is that Pewlett Hackard does face an impending "silver tsunami" which they should begin planning for. 
## Summary 
