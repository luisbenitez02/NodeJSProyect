/* Aqui agregaremos la funcionalidad general de la app */
const controlador = {};

//pagina de inicio o index
controlador.inicio = (req, res) => {
     res.render('index');//pinto la vista 'customers'  
}

controlador.buscar = (req, res) => {
     const dato = req.query.dato;//obtengo dato que me entregaron URL
     //Solicito conexion a la BD
     const consulta = "SELECT art.name_artistas, art.link, ca.name_canciones, ca.letra FROM artistas art INNER JOIN canciones ca ON art.cod_artistas = ca.cod_artistas WHERE art.name_artistas " + " LIKE '%" + dato + "%'" + "OR ca.name_canciones" + " LIKE '%" + dato + "%'" + " OR ca.letra" + " LIKE '%" + dato + "%'";

     console.log(consulta);
     req.getConnection((err, conn) => {
          conn.query(consulta, (err, filas) => {
               res.render('resultado', { data: filas });  
          });
 
     /*req.getConnection((err, conn) => {
          conn.query("SELECT name_artistas, link FROM artistas WHERE name_artistas" + " LIKE '%" + dato + "%'",  (err, filas) => {    
               res.render('resultado', { data: filas });
          });*/
          
     });
}

module.exports = controlador;

/* consultas */
/*
SELECT art.name_artistas, art.link, ca.name_canciones, ca.letra FROM artistas art INNER JOIN canciones ca ON art.cod_artistas = ca.cod_artistas WHERE LIKE art.cod_artistas = 1 

----------------CORRECTA
SELECT art.name_artistas, art.link, ca.name_canciones, ca.letra FROM artistas art INNER JOIN canciones ca ON art.cod_artistas = ca.cod_artistas WHERE art.name_artistas LIKE '%LOUIS%' OR ca.name_canciones LIKE '%LOUIS%' OR ca.letra LIKE '%LOUIS%'

SELECT art.name_artistas, art.link, ca.name_canciones, ca.letra FROM artistas art INNER JOIN canciones ca ON art.cod_artistas = ca.cod_artistas WHERE art.name_artistas LIKE '%LOUIS%' 
*/