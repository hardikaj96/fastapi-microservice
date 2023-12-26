from fastapi import APIRouter
from app.models import ServiceResponseModel

router = APIRouter(
    include_in_schema=True,
)


@router.get("/health")
def healthz():
    return {"status": "Healthy!!!"}


@router.get("/services", response_model=list[ServiceResponseModel])
def list_services():
    return [{"message": "All Good"}]
