from googletrans import Translator

translator = Translator()

def translate_text(text, lang):
    translated = translator.translate(text, dest=lang)
    return translated.text
