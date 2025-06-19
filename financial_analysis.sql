# Financial Analysis Database

SHOW DATABASES;
CREATE DATABASE IF NOT EXISTS mydatabase;
USE mydatabase;
SHOW TABLES;

# Create tables

CREATE TABLE empresas (
    id INT PRIMARY KEY,
    nombre VARCHAR(100),
    sector VARCHAR(50)
);

CREATE TABLE precios_acciones (
    empresa_id INT,
    fecha DATE,
    precio DECIMAL(10, 2),
    FOREIGN KEY (empresa_id) REFERENCES empresas(id)
);

CREATE TABLE ingresos (
    empresa_id INT,
    año INT,
    ingresos DECIMAL(15, 2),
    PRIMARY KEY (empresa_id, año),
    FOREIGN KEY (empresa_id) REFERENCES empresas(id)
);

CREATE TABLE gastos (
    empresa_id INT,
    año INT,
    gastos DECIMAL(15, 2),
    PRIMARY KEY (empresa_id, año),
    FOREIGN KEY (empresa_id) REFERENCES empresas(id)
);

#Insert data into tables

INSERT INTO empresas (id, nombre, sector) VALUES
(1, 'Empresa A', 'Tecnología'),
(2, 'Empresa B', 'Finanzas'),
(3, 'Empresa C', 'Salud'),
(4, 'Empresa D', 'Energía'),
(5, 'Empresa E', 'Consumo'),
(6, 'Empresa F', 'Industrial'),
(7, 'Empresa G', 'Telecomunicaciones'),
(8, 'Empresa H', 'Inmobiliario');

INSERT INTO precios_acciones (empresa_id, fecha, precio) VALUES
-- Company A
(1, '2022-01-01', 140.50), (1, '2022-02-01', 142.00), (1, '2022-03-01', 145.50), 
(1, '2022-04-01', 147.75), (1, '2022-05-01', 150.00), (1, '2022-06-01', 148.50), 
(1, '2022-07-01', 149.00), (1, '2022-08-01', 151.00), (1, '2022-09-01', 152.50), 
(1, '2022-10-01', 153.75), (1, '2022-11-01', 155.00), (1, '2022-12-01', 156.50),
(1, '2023-01-01', 150.50), (1, '2023-02-01', 155.00), (1, '2023-03-01', 160.75),
(1, '2023-04-01', 162.00), (1, '2023-05-01', 163.50), (1, '2023-06-01', 164.75),
(1, '2023-07-01', 166.00), (1, '2023-08-01', 167.50), (1, '2023-09-01', 168.75),
(1, '2023-10-01', 170.00), (1, '2023-11-01', 171.50), (1, '2023-12-01', 173.00);

INSERT INTO precios_acciones (empresa_id, fecha, precio) VALUES
-- Company B
(2, '2022-01-01', 190.00), (2, '2022-02-01', 192.00), (2, '2022-03-01', 194.50), 
(2, '2022-04-01', 196.75), (2, '2022-05-01', 198.00), (2, '2022-06-01', 197.50), 
(2, '2022-07-01', 198.00), (2, '2022-08-01', 199.00), (2, '2022-09-01', 200.50), 
(2, '2022-10-01', 202.75), (2, '2022-11-01', 204.00), (2, '2022-12-01', 206.50),
(2, '2023-01-01', 200.00), (2, '2023-02-01', 210.00), (2, '2023-03-01', 220.50),
(2, '2023-04-01', 225.00), (2, '2023-05-01', 230.00), (2, '2023-06-01', 235.00),
(2, '2023-07-01', 240.00), (2, '2023-08-01', 245.00), (2, '2023-09-01', 250.00),
(2, '2023-10-01', 255.00), (2, '2023-11-01', 260.00), (2, '2023-12-01', 265.00);

INSERT INTO precios_acciones (empresa_id, fecha, precio) VALUES
-- Company C
(3, '2022-01-01', 290.00), (3, '2022-02-01', 292.00), (3, '2022-03-01', 295.50), 
(3, '2022-04-01', 297.75), (3, '2022-05-01', 300.00), (3, '2022-06-01', 299.50), 
(3, '2022-07-01', 300.00), (3, '2022-08-01', 301.00), (3, '2022-09-01', 302.50), 
(3, '2022-10-01', 304.75), (3, '2022-11-01', 306.00), (3, '2022-12-01', 308.50),
(3, '2023-01-01', 300.00), (3, '2023-02-01', 310.00), (3, '2023-03-01', 320.00),
(3, '2023-04-01', 325.00), (3, '2023-05-01', 330.00), (3, '2023-06-01', 335.00),
(3, '2023-07-01', 340.00), (3, '2023-08-01', 345.00), (3, '2023-09-01', 350.00),
(3, '2023-10-01', 355.00), (3, '2023-11-01', 360.00), (3, '2023-12-01', 365.00);

INSERT INTO precios_acciones (empresa_id, fecha, precio) VALUES
-- Company D
(4, '2022-01-01', 120.00), (4, '2022-02-01', 121.00), (4, '2022-03-01', 122.50), 
(4, '2022-04-01', 123.75), (4, '2022-05-01', 125.00), (4, '2022-06-01', 124.50), 
(4, '2022-07-01', 125.00), (4, '2022-08-01', 126.00), (4, '2022-09-01', 127.50), 
(4, '2022-10-01', 128.75), (4, '2022-11-01', 130.00), (4, '2022-12-01', 131.50),
(4, '2023-01-01', 125.00), (4, '2023-02-01', 126.00), (4, '2023-03-01', 127.50),
(4, '2023-04-01', 128.75), (4, '2023-05-01', 130.00), (4, '2023-06-01', 131.50),
(4, '2023-07-01', 132.75), (4, '2023-08-01', 134.00), (4, '2023-09-01', 135.50),
(4, '2023-10-01', 136.75), (4, '2023-11-01', 138.00), (4, '2023-12-01', 139.50);

INSERT INTO precios_acciones (empresa_id, fecha, precio) VALUES
-- Company E
(5, '2022-01-01', 170.00), (5, '2022-02-01', 172.00), (5, '2022-03-01', 175.50), 
(5, '2022-04-01', 177.75), (5, '2022-05-01', 180.00), (5, '2022-06-01', 179.50), 
(5, '2022-07-01', 180.00), (5, '2022-08-01', 181.00), (5, '2022-09-01', 182.50), 
(5, '2022-10-01', 184.75), (5, '2022-11-01', 186.00), (5, '2022-12-01', 188.50),
(5, '2023-01-01', 180.00), (5, '2023-02-01', 185.00), (5, '2023-03-01', 190.00),
(5, '2023-04-01', 195.00), (5, '2023-05-01', 200.00), (5, '2023-06-01', 205.00),
(5, '2023-07-01', 210.00), (5, '2023-08-01', 215.00), (5, '2023-09-01', 220.00),
(5, '2023-10-01', 225.00), (5, '2023-11-01', 230.00), (5, '2023-12-01', 235.00);

INSERT INTO precios_acciones (empresa_id, fecha, precio) VALUES
-- Company F
(6, '2022-01-01', 130.00), (6, '2022-02-01', 132.00), (6, '2022-03-01', 135.50), 
(6, '2022-04-01', 137.75), (6, '2022-05-01', 140.00), (6, '2022-06-01', 139.50), 
(6, '2022-07-01', 140.00), (6, '2022-08-01', 141.00), (6, '2022-09-01', 142.50), 
(6, '2022-10-01', 144.75), (6, '2022-11-01', 146.00), (6, '2022-12-01', 148.50),
(6, '2023-01-01', 140.00), (6, '2023-02-01', 145.00), (6, '2023-03-01', 150.00),
(6, '2023-04-01', 155.00), (6, '2023-05-01', 160.00), (6, '2023-06-01', 165.00),
(6, '2023-07-01', 170.00), (6, '2023-08-01', 175.00), (6, '2023-09-01', 180.00),
(6, '2023-10-01', 185.00), (6, '2023-11-01', 190.00), (6, '2023-12-01', 195.00);

INSERT INTO precios_acciones (empresa_id, fecha, precio) VALUES
-- Company G
(7, '2022-01-01', 160.00), (7, '2022-02-01', 162.00), (7, '2022-03-01', 165.50), 
(7, '2022-04-01', 167.75), (7, '2022-05-01', 170.00), (7, '2022-06-01', 169.50), 
(7, '2022-07-01', 170.00), (7, '2022-08-01', 171.00), (7, '2022-09-01', 172.50), 
(7, '2022-10-01', 174.75), (7, '2022-11-01', 176.00), (7, '2022-12-01', 178.50),
(7, '2023-01-01', 170.00), (7, '2023-02-01', 175.00), (7, '2023-03-01', 180.00),
(7, '2023-04-01', 185.00), (7, '2023-05-01', 190.00), (7, '2023-06-01', 195.00),
(7, '2023-07-01', 200.00), (7, '2023-08-01', 205.00), (7, '2023-09-01', 210.00),
(7, '2023-10-01', 215.00), (7, '2023-11-01', 220.00), (7, '2023-12-01', 225.00);

INSERT INTO precios_acciones (empresa_id, fecha, precio) VALUES
-- Company H
(8, '2022-01-01', 180.00), (8, '2022-02-01', 182.00), (8, '2022-03-01', 185.50), 
(8, '2022-04-01', 187.75), (8, '2022-05-01', 190.00), (8, '2022-06-01', 189.50), 
(8, '2022-07-01', 190.00), (8, '2022-08-01', 191.00), (8, '2022-09-01', 192.50), 
(8, '2022-10-01', 194.75), (8, '2022-11-01', 196.00), (8, '2022-12-01', 198.50),
(8, '2023-01-01', 190.00), (8, '2023-02-01', 195.00), (8, '2023-03-01', 200.00),
(8, '2023-04-01', 205.00), (8, '2023-05-01', 210.00), (8, '2023-06-01', 215.00),
(8, '2023-07-01', 220.00), (8, '2023-08-01', 225.00), (8, '2023-09-01', 230.00),
(8, '2023-10-01', 235.00), (8, '2023-11-01', 240.00), (8, '2023-12-01', 245.00);

INSERT INTO ingresos (empresa_id, año, ingresos) VALUES
(1, 2022, 500000.00), (1, 2023, 550000.00),
(2, 2022, 800000.00), (2, 2023, 820000.00),
(3, 2022, 1000000.00), (3, 2023, 1100000.00);

INSERT INTO ingresos (empresa_id, año, ingresos) VALUES
(4, 2022, 1250000.00), (4, 2023, 1300000.00),
(5, 2022, 1500000.00), (5, 2023, 1600000.00),
(6, 2022, 2000000.00), (6, 2023, 2100000.00),
(7, 2022, 1800000.00), (7, 2023, 1900000.00),
(8, 2022, 1700000.00), (8, 2023, 1800000.00);

INSERT INTO gastos (empresa_id, año, gastos) VALUES
(1, 2022, 300000.00), (1, 2023, 320000.00),
(2, 2022, 500000.00), (2, 2023, 520000.00),
(3, 2022, 700000.00), (3, 2023, 750000.00);

INSERT INTO gastos (empresa_id, año, gastos) VALUES
(4, 2022, 1000000.00), (4, 2023, 1050000.00),
(5, 2022, 1200000.00), (5, 2023, 1300000.00),
(6, 2022, 1700000.00), (6, 2023, 1800000.00),
(7, 2022, 1500000.00), (7, 2023, 1600000.00),
(8, 2022, 1400000.00), (8, 2023, 1500000.00);

#Show tables

SELECT * FROM empresas;

#Add new companies and delete them after
INSERT INTO empresas (id, nombre, sector) VALUES
(9, 'Empresa I', 'Alimentación');
 
DELETE FROM  empresas
WHERE id=9;

#Show data from tables

SELECT * FROM precios_acciones;
SELECT * FROM ingresos;
SELECT * FROM gastos;

#STOCK PRICE TREND ANALYSIS

#Company A
SELECT empresa_id, fecha, precio
FROM precios_acciones
WHERE empresa_id = 1
ORDER BY fecha;

#STOCK PRICE TRENDS
SELECT empresa_id,  YEAR(fecha) AS año, ROUND(AVG(precio),2) AS avg_precio_anual
FROM precios_acciones
GROUP BY empresa_id, YEAR(fecha)
ORDER BY empresa_id, año;

#CALCULATE PROFITABILITY
SELECT ingresos.empresa_id, ingresos.año, ROUND((ingresos - gastos) / ingresos, 2) AS margen_beneficio
FROM ingresos
JOIN gastos ON ingresos.empresa_id = gastos.empresa_id AND ingresos.año = gastos.año;

#MEAN MARGIN ANALYSIS (By company)
SELECT e.nombre, e.sector, ROUND(AVG((i.ingresos - g.gastos) / i.ingresos),2) AS promedio_margen_beneficio
FROM empresas e
JOIN ingresos i ON e.id = i.empresa_id
JOIN gastos g ON e.id = g.empresa_id AND i.año = g.año
GROUP BY e.nombre, e.sector
ORDER BY promedio_margen_beneficio DESC;

#PROFIT MARGIN ANALYSIS (By company and year)
SELECT i.empresa_id, i.año,
       i.ingresos,
       g.gastos,
       (i.ingresos - g.gastos) AS ganancia_neta,
       ROUND((i.ingresos - g.gastos) / i.ingresos * 100, 2) AS margen_utilidad
FROM ingresos i
JOIN gastos g ON i.empresa_id = g.empresa_id AND i.año = g.año
ORDER BY i.empresa_id, i.año;

#TOP 5 PERFORMING COMPANIES
SELECT e.nombre, i.año, (i.ingresos - g.gastos) AS ganancia_neta
FROM ingresos i
JOIN gastos g ON i.empresa_id = g.empresa_id AND i.año = g.año
JOIN empresas e ON e.id = i.empresa_id
ORDER BY ganancia_neta DESC
LIMIT 5;

#EXPORT CSV FILES TO CREATE A DASHBOARD IN POWER BI (SEE POWER BI PROJECTS)
