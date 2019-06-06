const express = require('express');
const router = express.Router();

//vamos a pedir la respuesta a la ruta /
const misControladores = require('../controllers/misControladores');

/* Lo que estoy escuchando */
router.get('/', misControladores.inicio);
router.get('/buscar', misControladores.buscar);
router.get('/buscarSong', misControladores.buscarSong);
module.exports = router;