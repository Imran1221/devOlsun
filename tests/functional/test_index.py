
def test_index(client):
    response = client.get("/", follow_redirects=True)
    
    assert response.status_code == 200 #HTTP Statuscode for OK
    assert b'Hello DHBW' in response.data #Check if this is contained in the Website

def test_hello(client):
    response = client.post(       
        "/hello",
        data=dict(name="Robin"),
        follow_redirects=True
    )
    assert response.status_code == 200 #HTTP Statuscode for OK
    assert b'Robin' in response.data #Check if this is contained in the Website