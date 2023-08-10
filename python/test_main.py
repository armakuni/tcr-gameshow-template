from main import *


def test_hello():
    assert hello() == "Hello World!"


def test_goodbye():
    assert goodbye(1) == "Goodbye World!"
    assert goodbye(2) == "Goodbye, everyone!"
