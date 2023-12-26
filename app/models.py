from pydantic import BaseModel


class ServiceResponseModel(BaseModel):
    message: str
