/* Aqui agregaremos la funcionalidad general de la app */
const controlador = {};

//pagina de inicio o index
controlador.inicio = (req, res) => {
     res.render('index');//pinto la vista 'customers'  
}

module.exports = controlador;