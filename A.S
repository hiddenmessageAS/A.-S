<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Una pregunta para ti</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            background: #f5f1ec;
            font-family: Arial, sans-serif;
            color: #333;
        }
        .contenedor {
            width: 90%;
            max-width: 500px;
            text-align: center;
            background: white;
            padding: 40px 25px;
            border-radius: 15px;
            box-shadow: 0 5px 20px rgba(0,0,0,0.1);
        }
        h1 {
            font-size: 24px;
            margin-bottom: 25px;
        }
        input {
            width: 90%;
            padding: 12px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 8px;
            margin-bottom: 15px;
            text-align: center;
        }
        button {
            padding: 12px 25px;
            font-size: 16px;
            border: none;
            border-radius: 8px;
            background: #333;
            color: white;
            cursor: pointer;
        }
        button:hover {
            background: #555;
        }
        #mensaje {
            display: none;
            margin-top: 25px;
            font-size: 18px;
            line-height: 1.6;
        }
        #error {
            color: #b00020;
            display: none;
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <div class="contenedor">
        <div id="pregunta">
            <h1>
                Hubo un tiempo en que te decían igual que a la protagonista de una famosa trilogía.
                ¿Cuál era ese nombre?
            </h1>
            <input 
                type="text" 
                id="respuesta" 
                placeholder="Escribe tu respuesta"
            >
            <br>
            <button onclick="comprobarRespuesta()">
                Continuar
            </button>
            <p id="error">
                Esa no es la respuesta. Inténtalo de nuevo.
            </p>
        </div>
        <div id="mensaje">
            <p>
                ✨ Aquí aparecerá el mensaje que quieras mostrarle.
            </p>
        </div>
    </div>
    <script>
        function comprobarRespuesta() {
            const respuesta = document
                .getElementById("respuesta")
                .value
                .trim()
                .toLowerCase();
            if (respuesta === "anastasia") {
                document.getElementById("pregunta").style.display = "none";
                document.getElementById("mensaje").style.display = "block";
            } else {
                document.getElementById("error").style.display = "block";
            }
        }
    </script>
</body>
</html>
