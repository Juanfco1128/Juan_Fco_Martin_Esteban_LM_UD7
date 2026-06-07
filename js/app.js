async function cargarPeliculas() {
    const contenedor = document.getElementById("contenedor-peliculas");

    try {
        const respuesta = await fetch("../datos/datos.json");

        if (!respuesta.ok) {
            throw new Error("No se pudo cargar el archivo JSON.");
        }

        const datos = await respuesta.json();

        const peliculas = datos.peliculas.pelicula;

        contenedor.innerHTML = "";

        peliculas.forEach((pelicula) => {
            const tarjeta = document.createElement("article");
            tarjeta.className = "tarjeta-pelicula";

            tarjeta.innerHTML = `
                <h2>${pelicula.titulo}</h2>
                <p><strong>Año:</strong> ${pelicula.año}</p>
                <p><strong>Género:</strong> ${pelicula.genero}</p>
                <p><strong>Director:</strong> ${pelicula.director}</p>
                <p><strong>Duración:</strong> ${pelicula.duracion} min</p>
                <p><strong>Puntuación:</strong> ${pelicula.puntuacion}</p>
            `;

            contenedor.appendChild(tarjeta);
        });

    } catch (error) {
        contenedor.innerHTML = `<p class="error">Error: ${error.message}</p>`;
    }
}

cargarPeliculas();