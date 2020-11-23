Feature: Determining Full Retirement Age
	As a user, I want to know my full retirement age so I know when I can retire.

	Scenario Outline: The user enters valid values for the year and
	month of their birth
		Given The program asks the user for the year and month of their birth
		When The user enters "<birth_year>" as the year and "<birth_month>" as the month of their birth
		Then The program calculates the full retirement age of the user to be "<retire_age_year>" years and "<retire_age_month>" months
		Then The program calculates the user will reach their full retirement age in "<retire_date_month>" of "<retire_date_year>"

		Examples:
		| birth_year | birth_month | retire_age_year | retire_age_month | retire_date_year | retire_date_month |
		| 1937 | 5 | 65 | 0 | 2002 | 5 |
		| 1937 | -2 | -1 | -1 | -1 | -1 |
		| 1937 | 13 | -1 | -1 | -1 | -1 |
		| 1938 | 6 | 65 | 2 | 2003 | 8 |
		| 1939 | 7 | 65 | 4 | 2004 | 11 |
		| 1940 | 8 | 65 | 6 | 2006 | 2 |
		| 1941 | 9 | 65 | 8 | 2007 | 5 |
		| 1942 | 10 | 65 | 10 | 2008 | 8 |
		| 1943 | 11 | 66 | 0 | 2009 | 11 |
		| 1955 | 12 | 66 | 2 | 2022 | 2 |
		| 1956 | 1 | 66 | 4 | 2022 | 5 |
		| 1957 | 2 | 66 | 6 | 2023 | 8 |
		| 1958 | 3 | 66 | 8 | 2024 | 11 |
		| 1959 | 4 | 66 | 10 | 2026 | 2 |
		| 1960 | 5 | 67 | 0 | 2027 | 5 |
		| 2020 | -1 | -1 | -1 | -1 | -1 |
		| 1899 | -1 | -1 | -1 | -1 | -1 |

