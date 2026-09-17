const express = require('express');
const path = require('path');
const app = express();
const PORT = process.env.PORT || 3000;

// Servir archivos estáticos (HTML, JSON, imágenes)
app.use(express.static(path.join(__dirname)));

app.listen(PORT, () => {
    console.log(`Servidor de catálogo ejecutándose en el puerto ${PORT}`);
});