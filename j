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
