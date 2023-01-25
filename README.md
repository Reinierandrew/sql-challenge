# Pewlett Hackard Employee analysis



## Background
- I was asked to lead a project looking at the people whom the company employed during the 1980s and 1990s. 
  All that remains of the employee database from that period are six CSV files.;
- HR requested 8 analyses and tables for which links can be found below in the Output section
  


## Approach

- I studied the CSV files to determine  how I would need to construct the database, including relationships between the files, the types and sizes of the data, and any inconsitencies such as empty fields and possible unclear entries.
- I then created an ERD diagram to assist me in creating the various tables and constraints for the database.
- The sql file for creating the table schema can be found in [table_schema.mssql](https://github.com/Reinierandrew/sql-challenge/blob/main/EmployeeSQL/table_schema.mssql)
- I then used the results to create a file with the schema to load to an ERD package to generate the final ERD [ERD Pewlett Hackard.pdf](https://github.com/Reinierandrew/sql-challenge/blob/main/EmployeeSQL/ERD%20Pewlett%20Hackard.pdf)
- I loaded the CSV files which can be found in the data directory and wrote the script to analyse the data and create the 8 tables the HR department has requested.
-  The sql file for the data analysis can be found in [data_analysis.mssql](https://github.com/Reinierandrew/sql-challenge/tree/main/EmployeeSQL)

## Output

![ERDPewlettHackard](https://user-images.githubusercontent.com/112833174/214707578-6ec4b512-6502-4964-b4a0-d7115573f8c6.jpg)

The following analyses and tables are provided (links to CSVs):
  1. A list with the employee number, last and first name, sex, and salary of each employee. [Link](https://github.com/Reinierandrew/sql-challenge/blob/main/EmployeeSQL/output/Q1.csv)
  2. A list the first name, last name, and hire date for the employees who were hired in 1986. [Link](https://github.com/Reinierandrew/sql-challenge/blob/main/EmployeeSQL/output/Q2.csv)
  3. A list of the managers of each department along with their department number, department name, employee number, last name and first name.  [Link](https://github.com/Reinierandrew/sql-challenge/blob/main/EmployeeSQL/output/Q3.csv)
  4. A list of the department number for each employee along with that employee’s employee number, last name, first name, and department name.  [Link](https://github.com/Reinierandrew/sql-challenge/blob/main/EmployeeSQL/output/Q4.csv)
  5. A list of the first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.  [Link](https://github.com/Reinierandrew/sql-challenge/blob/main/EmployeeSQL/output/Q5.csv)
  6. A list of each employee in the Sales department, including their employee number, last name, and first name. [Link](https://github.com/Reinierandrew/sql-challenge/blob/main/EmployeeSQL/output/Q6.csv)
  7. A list of each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.  [Link](https://github.com/Reinierandrew/sql-challenge/blob/main/EmployeeSQL/output/Q7.csv)
  8. A list of the frequency counts, in descending order, of all the employee last names 
      (that is, how many employees share each last name).  [Link](https://github.com/Reinierandrew/sql-challenge/blob/main/EmployeeSQL/output/Q8.csv)

### Note
The data_for_ERD files are a query and a result table that I used to both check that my schema was as I intended and subsequently used to create the ERD
