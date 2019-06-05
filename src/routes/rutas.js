const express = require('express');
const router = express.Router();

//vamos a pedir la respuesta a la ruta /
const misControladores = require('../controllers/misControladores');

/* Lo que estoy escuchando */
router.get('/', misControladores.inicio);

/* Rutas estaticas  */
router.get('/rock', misControladores.rock);
router.get('/pop', misControladores.pop);
router.get('/swing', misControladores.swing);
router.get('/jazz', misControladores.jazz);

module.exports = router;