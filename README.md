# Pewlett Hackard Employee analysis



## Background
- I was asked to lead a project looking at the people whom the company employed during the 1980s and 1990s. All that remains of the employee database from that period are six CSV files.;

## Approach

- I studies the CSV files to determine to determine how I would need to construct the database, including relationships between the files, the types and sizes of the data, and any inconsitencies such as empty fields and possible unclear entries.
- I then created an ERD diagram to assist me in creating the various tables and constraints for the database. The ERD can be found in [ERD Pewlett Hackard.pdf](https://github.com/Reinierandrew/sql-challenge/blob/main/EmployeeSQL/ERD%20Pewlett%20Hackard.pdf) and below.
- The sql file for creating the table schema can be found in [table_schema.mssql](https://github.com/Reinierandrew/sql-challenge/blob/main/EmployeeSQL/table_schema.mssql)
- I then used the results to create a file with the schema to load to a ERD package to generate the final ERD [ERD Pewlett Hackard.pdf](https://github.com/Reinierandrew/sql-challenge/blob/main/EmployeeSQL/ERD%20Pewlett%20Hackard.pdf)
- I loaded the CSV files which can be found in the data directory and wrote the script to analyse the data and create the 8 tables the HR department has requested.
-  The sql file for the data analysis can be found in [data_analysis.mssql](https://github.com/Reinierandrew/sql-challenge/tree/main/EmployeeSQL)

## Output

![ERDPewlettHackard](https://user-images.githubusercontent.com/112833174/214707578-6ec4b512-6502-4964-b4a0-d7115573f8c6.jpg)
