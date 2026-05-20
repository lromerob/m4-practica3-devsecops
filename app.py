from flask import Flask
import time
import random

app = Flask(__name__)

@app.route("/")
def hello_world():
    print(">>> Petición recibida - Generando traza...") # Esto DEBE salir en consola
    delay = random.uniform(0.1, 0.5)
    time.sleep(delay)
    return {"message": "Hola Leonardo, OTel funcionando", "delay": delay}

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)