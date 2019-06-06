/* Aqui agregaremos la funcionalidad general de la app */
const controlador = {};

//pagina de inicio o index
controlador.inicio = (req, res) => {
     res.render('index');//pinto la vista 'customers'  
}

controlador.buscar = (req, res) => {
     const dato = req.query.dato;//obtengo dato que me entregaron URL
     //Solicito conexion a la BD
     req.getConnection((err, conn) => {

          conn.query("SELECT name_artistas, link FROM artistas WHERE name_artistas" + " LIKE '%" + dato + "%'",  (err, filas) => {
               console.log(filas);
               
               res.render('resultado', { data: filas });
          });
     });
}

module.exports = controlador;