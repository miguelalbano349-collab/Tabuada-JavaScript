<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Animação Interativa com Canvas</title>

    <style>
        body {
            background-color: #111111;
            color: white;
            font-family: Arial, sans-serif;
            text-align: center;
        }

        h1 {
            color: #00bfff;
        }

        canvas {
            background-color: #222222;
            border: 3px solid #00bfff;
            border-radius: 10px;
        }
    </style>
</head>

<body>

    <h1>Animação Interativa com Canvas</h1>
    <p>Clique na tela para mudar a cor do círculo!</p>

    <canvas id="meuCanvas" width="600" height="400"></canvas>

    <script>
        const canvas = document.getElementById("meuCanvas");
        const ctx = canvas.getContext("2d");

        let x = 100;
        let y = 100;
        let velocidadeX = 3;
        let velocidadeY = 2;
        let raio = 30;

        let cores = ["red", "blue", "green", "yellow", "purple", "orange"];
        let indiceCor = 0;

        function animar() {
            ctx.clearRect(0, 0, canvas.width, canvas.height);

            ctx.beginPath();
            ctx.arc(x, y, raio, 0, Math.PI * 2);
            ctx.fillStyle = cores[indiceCor];
            ctx.fill();

            x += velocidadeX;
            y += velocidadeY;

            if (x + raio > canvas.width || x - raio < 0) {
                velocidadeX *= -1;
            }

            if (y + raio > canvas.height || y - raio < 0) {
                velocidadeY *= -1;
            }

            requestAnimationFrame(animar);
        }

        canvas.addEventListener("click", function() {
            indiceCor = (indiceCor + 1) % cores.length;
        });

        animar();
    </script>

</body>
</html>
