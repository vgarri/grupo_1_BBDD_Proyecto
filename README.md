<p align="center">
  <a href="" rel="noopener">
 <img width=200px height=200px src="https://www.sevillaemprendedora.org/wp-content/uploads/2024/03/The-Bridge.png" alt="Project logo"></a>
</p>

<h3 align="center">PROYECTO BASE DE DATOS RELACIONAL DATASCIENCE + FULLSTACK</h3>

<div align="center">

[![Status](https://img.shields.io/badge/status-active-success.svg)]()

[![License](https://img.shields.io/badge/license-MIT-blue.svg)](/LICENSE)

</div>

---

<p align="justify"> El objetivo de este proyecto ha sido la creación de una base de datos relacional, ingesta de datos y generación de queries SQL que demuestren la validez del modelo elegido.
    <br> 
</p>

## 📝 ÍNDICE

- [Acerca de](#about)
- [Herramientas utilizadas](#built_using)
- [Detalles del procedimiento y ejemplos](#detalles)
- [Implementaciones futuras](#implementacionesf)

- [Autores](#authors)


##  Acerca de <a name = "about"></a>
#### El proyecto diferencia 4 puntos clave:
<p align="justify">

- Modelo Entidad-Relación (E/R): Se ha diseñado un modelo E/R que representa la estructura de la base de datos normalizada. Se han definido las entidades, atributos y relaciones entre ellas.

- Modelo Lógico de la Base de Datos: Con base en el modelo E/R, desarrollar un modelo lógico de la base de datos. Esto implica definir la estructura de las tablas y sus campos, así como las claves primarias y foráneas necesarias.

- Normalización de Datos: Analizar los datos y realizar una normalización adecuada para eliminar la redundancia y garantizar la integridad de los datos.

- Creación de la Base de Datos: Utilizando un sistema de gestión de bases de datos de PostgreSQL, se ha creado la base de datos y las tablas necesarias según el modelo lógico. De igual forma, se han hecho queries SQL de prueba para garantizar el correcto funcionamiento del modelo.

</p>



## ⛏️ Herramientas utilizadas <a name = "built_using"></a>

- [SQL](https://www.w3schools.com/sql/sql_intro.asp) - Structured Query Language
- [PostgreSQL](https://www.postgresql.org/) - Sistema de gestión de bases de datos
- [PgAdmin 4](https://www.pgadmin.org/download/pgadmin-4-windows/) - Interfaz gráfica para PostgreSQL
- [Render](https://render.com/) - Servicio en la nube para el hosting de la Base de datos

## Detalles del procedimiento <a name = "detalles"></a>
#### Paso previo: Render
Este paso ha consistido en la creación de un servidor de hosting en la nube desde el servicio Render, que se ha linkeado con la base de datos desde la interfaz de PgAdmin4. Se ha realizado como preparativo para poder hostear la base de datos desde el script.SQL como seed de la misma.
#### Paso 1: Modelo E/R:

El modelo entidad-relación comprende 6 entidades, con sus relaciones entre ellas, asi como los atributos de cada entidad, en los que se han subrayado las Primary Keys:

<a href="https://ibb.co/tpTcT72"><img src="https://i.ibb.co/Jjw2wfp/Captura-de-pantalla-2024-10-24-a-las-17-53-32.png" alt="Captura-de-pantalla-2024-10-24-a-las-17-53-32" border="0"></a>

#### Paso 2: Modelo lógico de la base de datos:
El siguiente paso ha sido crear el mdelo lógico a partir del diagrama E/R, el cual incluye las relaciones entre claves PK y FK, así como las tablas intermedias necesarias en las relaciones many to many de las entidades:

<a href="https://ibb.co/61pbQGw"><img src="https://i.ibb.co/gPXwYQ9/Captura-de-pantalla-2024-10-24-a-las-18-03-17.png" alt="Captura-de-pantalla-2024-10-24-a-las-18-03-17" border="0"></a>

#### Paso 3: Normalización de datos
Mediante la combinación de los archivos .csv proporcionados, se ha procedido a la limpieza de datos eliminando la redundancia y normalizando los mismos para convertirlos en tuplas. 
#### Paso 4: Creación de la base de datos
<p align="justify">
Desde la herramienta "Query Tool" de la interfaz PgAdmin4 se ejecutan queries de SQL para insertar las tablas y comprobar que las columnas corresponden al modelo lógico y las relaciones entre tablas son correctas.

De esta forma se crea un archivo "script.sql" que sirve de seed para importar la base de datos completa a partir del mismo. Dicho archivo está divido en 2 partes diferenciadas: La creación de tablas, en las que se especifican el tipo de datos, las claves primarias y foráneas (PK y FK). Los tipos de datos elegidos en este caso son "serial" para las PK, para garantizar la escalabilidad del modelo, "date" para las fechas, "int" para valores numéricos y "varchar" para las cadenas de caracteres. Además, los emails han sido destacados como valores unicos ("UNIQUE"), para generar las queries de SQL en caso de que se quiera identificar a los . En segundo lugar, ingesta de los datos, proceso en el que se incluyen las tuplas normalizadas como "VALUES" mediante el comando "INSERT INTO":
</p>

##### Creación de las tablas y columnas (code snippet):
<a href="https://ibb.co/TWYRQFK"><img src="https://i.ibb.co/VwJDFPH/Captura-de-pantalla-2024-10-24-a-las-18-50-06.png" alt="Captura-de-pantalla-2024-10-24-a-las-18-50-06" border="0"></a>

##### Ingesta de los datos en tuplas (code snippet):
<a href="https://ibb.co/jVbLVsZ"><img src="https://i.ibb.co/TKYHKdq/Captura-de-pantalla-2024-10-24-a-las-18-53-55.png" alt="Captura-de-pantalla-2024-10-24-a-las-18-53-55" border="0"></a>

#### Paso extra: SQL queries que garanticen el correcto funcionamiento del modelo:
En un archivo .sql se ha creado una serie de queries de SQL para comprobar desde pgAdmin4 que el modelo funciona de la forma esperada:
##### SQL queries (code snippet):
<a href="https://ibb.co/WWxw9PD"><img src="https://i.ibb.co/BVzxDr4/Captura-de-pantalla-2024-10-24-a-las-19-19-14.png" alt="Captura-de-pantalla-2024-10-24-a-las-19-19-14" border="0"></a>



## Mejoras futuras: <a name = "implementacionesf"></a>

- Optimizar el modelo de datos, priorizando la facilidad de uso de la base de datos, evitando queries SQL complejas en la medida de lo posible.

- Implementar consultas y rutas HTTP a la base de datos desde Python o JavaScript.

- Añadir filtros dinámicos en un front-end.

- Representación de datos con scripts Python o JS.

- Formulario de escritura y demás funciones CRUD.

- Uso de librerías para conexión con BD en JS o Python como PostgreSQL para evitar SQL injection:
<p align="center">
<a href="https://imgbb.com/"><img height=200px src="https://i.ibb.co/mFRHztx/Captura-de-pantalla-2024-10-24-a-las-23-40-45.png" alt="Captura-de-pantalla-2024-10-24-a-las-23-40-45" border="0"></a>
</p>






## ✍️ Autores <a name = "authors"></a>
- Rubén Veledo (Data Science)
- Ana Isabel Montero Martín (Data Science)
- Manuel Franceschi (Data Science)
- Víctor Garritano (FullStack Dev)
