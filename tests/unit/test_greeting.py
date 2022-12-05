from app import greeting

def test_greeting():
    res = greeting("DevOlsun")
    assert res == "Hello DevOlsun"