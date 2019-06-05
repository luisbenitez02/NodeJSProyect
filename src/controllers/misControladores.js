/* Aqui agregaremos la funcionalidad general de la app */
const controlador = {};

//pagina de inicio o index
controlador.inicio = (req, res) => {
     res.render('index');//pinto la vista 'customers'  
}

//---- Paginas estaticas
controlador.rock = (req, res) => {
     res.render('rock');//pinto la vista 'customers'  
}

controlador.pop = (req, res) => {
     res.render('pop');//pinto la vista 'customers'  
}

controlador.swing = (req, res) => {
     res.render('swing');//pinto la vista 'customers'  
}

controlador.jazz = (req, res) => {
     res.render('jazz');//pinto la vista 'customers'  
}

module.exports = controlador;