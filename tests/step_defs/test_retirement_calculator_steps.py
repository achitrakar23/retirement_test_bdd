from pytest_bdd import scenarios, parsers, given, when, then
from retirement import calculate_retirement_age, calculate_retirement_date

EXTRA_TYPES = {
    'Number': int,
}

CONVERTERS = {
    'birth_year': int,
    'birth_month': int,
    'retire_age_year': int,
    'retire_age_month': int,
    'retire_date_month': int,
    'retire_date_year': int,
}

scenarios('../features/retirement_calculator.feature', example_converters=CONVERTERS)
def test_meh():
    pass

@given('The program asks the user for the year and month of their birth')
def start():
    return 1

@when('The user enters "<birth_year>" as the year and "<birth_month>" '
    'as the month of their birth')
def birth_date(birth_year, birth_month):
    return 1

@then('The program calculates the full retirement age of the user to '
      'be "<retire_age_year>" years and "<retire_age_month>" months')
def determine_retirement_age(birth_year, retire_age_year,
                             retire_age_month):
    received_retire_age_year, received_retire_age_month = \
        calculate_retirement_age(birth_year)
    assert received_retire_age_year == retire_age_year
    assert received_retire_age_month == retire_age_month

@then('The program calculates the user will reach their full retirement age in "<retire_date_month>" of "<retire_date_year>"')
def determine_retirement_date(birth_year, birth_month,
                              retire_age_year, retire_age_month,
                              retire_date_month, retire_date_year):

    received_retire_date_year, received_retire_date_month = \
        calculate_retirement_date(birth_year, birth_month,
                                  retire_age_year, retire_age_month)
    assert received_retire_date_year == retire_date_year
    assert received_retire_date_month == retire_date_month

