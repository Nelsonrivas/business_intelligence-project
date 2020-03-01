-- GENERAL QUERYING

CREATE USER 'BI'@'localhost' IDENTIFIED BY 'bi22019';

GRANT ALL PRIVILEGES ON INVENTARIO_DW_G20827907.* TO 'BI'@'localhost'; 
GRANT ALL PRIVILEGES ON INVENTARIO_G20827907.* TO 'BI'@'localhost';

SHOW GRANTS FOR 'BI'@'localhost';

DROP USER BI@localhost;

SHOW DATABASES;
SHOW TABLES;

SELECT user, host
FROM mysql.user;


-- INVENTARIO_G20827907

CREATE DATABASE INVENTARIO_G20827907;

USE INVENTARIO_G20827907

DROP DATABASE INVENTARIO_G20827907;

DROP TABLE INVENTARIO_G20827907.;

ALTER TABLE INVENTARIO_G20827907. DROP COLUMN id_tiend

-- BUSCAR
ALTER TABLE DROP COSTRAINT FOREIGN KEY id_tiend_fkey
----

SELECT *
FROM INVENTARIO_G20827907.ESTADO;

SELECT *
FROM INVENTARIO_G20827907.CIUDAD;

SELECT *
FROM INVENTARIO_G20827907.TIENDA;

SELECT *
FROM INVENTARIO_G20827907.PROVEEDOR

DELETE FROM 
INVENTARIO_G20827907.ESTADO
WHERE id_est = 

DELETE FROM 
INVENTARIO_G20827907.CIUDAD
WHERE id_ciud = 

UPDATE INVENTARIO_G20827907.ALMACEN
SET rif = 'J40460392'
WHERE id_alm = 10

UPDATE INVENTARIO_G20827907.CIUDAD
SET nomb_ciud = 'Pto. Ayacucho'
WHERE id_ciud = 17

SELECT id_ciud, nomb_ciud, E.id_est, nomb_est
FROM INVENTARIO_G20827907.ESTADO E
INNER JOIN INVENTARIO_G20827907.CIUDAD C
ON E.id_est = C.id_est


-- INVENTARIO_DW_G20827907

CREATE DATABASE INVENTARIO_DW_G20827907;

USE INVENTARIO_DW_G20827907

DROP DATABASE INVENTARIO_DW_G20827907;

SELECT *
FROM INVENTARIO_DW_G20827907.DIM_LOCALIDAD;

SELECT *
FROM INVENTARIO_DW_G20827907.DIM_PROVEEDOR

DELETE FROM 
INVENTARIO_DW_G20827907.DIM_LOCALIDAD
WHERE sk_dim_local =

DELETE FROM 
INVENTARIO_DW_G20827907.DIM_LOCALIDAD

DELETE FROM 
INVENTARIO_DW_G20827907.DIM_ALMACEN
WHERE sk_dim_almacen = 20


-- ¡Pilas aqui!

/* Este DDL es hecho en insert/ update table. Con él resuelve lo de
no actualizar la SK con cada nueva inserción 
*/
ALTER TABLE DIM_LOCALIDAD ADD COLUMN sk_dim_localidad_pdi INTEGER
;
UPDATE DIM_LOCALIDAD SET sk_dim_localidad_pdi = sk_dim_local
;
ALTER TABLE DIM_LOCALIDAD DROP COLUMN sk_dim_local
;
ALTER TABLE DIM_LOCALIDAD RENAME sk_dim_localidad_pdi TO sk_dim_local
;
CREATE INDEX idx_dim_localidad_lookup ON DIM_LOCALIDAD(codigo_concatenado)
;
