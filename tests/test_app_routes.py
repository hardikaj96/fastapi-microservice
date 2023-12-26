import json
from fastapi.testclient import TestClient

from app.main import create_app

client = TestClient(create_app())


def test_read_docs() -> None:
    response = client.get("/")
    assert response.status_code == 200


def test_read_healthz() -> None:
    response = client.get("/health")
    assert response.status_code == 200
    assert response.json()["status"] == "Healthy!!!"


def test_list_services() -> None:
    response = client.get("/services")
    assert response.status_code == 200
    assert response.json() == [{"message": "All Good"}]
