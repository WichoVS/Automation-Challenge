import re
import requests


def obtener_respuesta(birth):
    token = "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"

    url = 'https://api.openai.com/v1/chat/completions'
    data = {
        "model": "gpt-3.5-turbo",
        "messages": [
            {
                "role": "user",
                "content": f"Dame respuesta a esta pregunta: ¿Con qué frecuencia realizas compras?, responde como si fueras una persona con esta fecha de nacimiento: {birth} donde el formato esta en dd/mm/yyyy y solo puedes escoger una de estas respuestas: 1.Una vez a la semana 2.Una vez al mes 3.Cada tres meses 4.Una vez al año. Solo respondeme con el numero de la respuesta y nada mas"
            }
        ]
    }
    headers = {'Authorization': f'Bearer {token}'}

    response = requests.post(url, json=data, headers=headers)
    response_dict = response.json()

    choices = response_dict["choices"]

    numero = re.findall(r'\d+', choices[0]["message"]["content"])[0]

    return numero


print(obtener_respuesta("07/03/1999"))
