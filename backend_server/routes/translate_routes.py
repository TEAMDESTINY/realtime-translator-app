from fastapi import APIRouter
from services.translate import translate_text

router = APIRouter(prefix="/translate")

@router.get("/")
def translate_api(text: str, lang: str):
    result = translate_text(text, lang)
    return {"translated": result}
