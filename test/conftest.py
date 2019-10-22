import pytest

def pytest_addoption(parser):
    parser.addoption("--numero", action="store", default=8)


def pytest_generate_tests(metafunc):
    option_value = metafunc.config.option.numero
    if 'numero' in metafunc.fixturenames and option_value is not None:
        metafunc.parametrize("numero", [option_value])