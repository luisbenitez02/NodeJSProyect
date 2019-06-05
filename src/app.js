const express = require('express');
const path = require('path');//para nombres de rutas
const morgan = require('morgan');//para DEBUG
const mysql = require('mysql');//para usar mysql
const myConnection = require('express-myconnection');//para usar mysql

const app = express(); //llamo express

//Importnado las rutas 
const misRutas = require('./routes/rutas');//guardo todas las rutas aqui

//Configuracion
app.set('port', process.env.PORT || 3000); //necesario despliegue en server real
app.set('view engine', 'ejs');
app.set('views', path.join(__dirname, 'views'));//concateno la ruta y entrego

//middleware
app.use(morgan('dev'));//nesario solo para dev
app.use(myConnection(mysql, {
     host: 'localhost',
     user: 'root', //dato por defecto DB Mysql
     password: '',//El pass de tu BD
     port: 3306,
     database: 'proyectomusica'
}, 'single'));

//Routes
app.use('/', misRutas);//cunado el usuairo llegue al home ejecutamos estas rutas

//archivos estaticos  (iamgens, frameworks, etc)
app.use(express.static(path.join(__dirname, 'public')));

//Arrancando el servidor
app.listen(app.get('port'), () => {
     console.log('Server en el puerto 3000')
})//inicializo puerto y escucha en el puerto 3000
