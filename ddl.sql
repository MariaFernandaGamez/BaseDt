CREATE DATABASE logistica_sql;

USE logistica_sql;


CREATE TABLE Paises (
    pais_id INT PRIMARY KEY,
    nombre VARCHAR(100)
);

CREATE TABLE Ciudades (
    ciudad_id INT PRIMARY KEY,
    nombre VARCHAR(100),
    pais_id INT,
    FOREIGN KEY (pais_id) REFERENCES Paises(pais_id)
);


CREATE TABLE Sucursales (
    sucursal_id INT PRIMARY KEY,
    nombre VARCHAR(200),
    direccion VARCHAR(200),
    ciudad_id INT,
    FOREIGN KEY (ciudad_id) REFERENCES Ciudades(ciudad_id)
);

CREATE TABLE Empleados (
    empleado_id INT PRIMARY KEY,
    nombre VARCHAR(100),
    sucursal_id INT,
    FOREIGN KEY (sucursal_id) REFERENCES Sucursales(sucursal_id)
);

CREATE TABLE Telefonos_Empleados (
    telefono_id INT PRIMARY KEY,
    numero VARCHAR(20),
    empleado_id INT,
    FOREIGN KEY (empleado_id) REFERENCES Empleados(empleado_id)
);


CREATE TABLE Conductores (
    conductor_id INT PRIMARY KEY,
    nombre VARCHAR(100)
);

CREATE TABLE Vehiculos (
    vehiculo_id INT PRIMARY KEY,
    placa VARCHAR(20),
    marca VARCHAR(50),
    modelo VARCHAR(50),
    capacidad_carga DECIMAL(10,2),
    sucursal_id INT,
    FOREIGN KEY (sucursal_id) REFERENCES Sucursales(sucursal_id)
);

CREATE TABLE Conductores_Vehiculos (
    conductor_id INT,
    vehiculo_id INT,
    PRIMARY KEY (conductor_id, vehiculo_id),
    FOREIGN KEY (conductor_id) REFERENCES Conductores(conductor_id),
    FOREIGN KEY (vehiculo_id) REFERENCES Vehiculos(vehiculo_id)
);


CREATE TABLE Rutas (
    ruta_id INT PRIMARY KEY,
    descripcion VARCHAR(200),
    sucursal_id INT,
    FOREIGN KEY (sucursal_id) REFERENCES Sucursales(sucursal_id)
);

CREATE TABLE Auxiliares (
    auxiliar_id INT PRIMARY KEY,
    nombre VARCHAR(100)
);

CREATE TABLE Ruta_Auxiliares (
    ruta_id INT,
    auxiliar_id INT,
    PRIMARY KEY (ruta_id, auxiliar_id),
    FOREIGN KEY (ruta_id) REFERENCES Rutas(ruta_id),
    FOREIGN KEY (auxiliar_id) REFERENCES Auxiliares(auxiliar_id)
);


CREATE TABLE Clientes (
    cliente_id INT PRIMARY KEY,
    nombre VARCHAR(100),
    email VARCHAR(100),
    direccion VARCHAR(200)
);

CREATE TABLE Telefonos_Clientes (
    telefono_id INT PRIMARY KEY,
    numero VARCHAR(20),
    cliente_id INT,
    FOREIGN KEY (cliente_id) REFERENCES Clientes(cliente_id)
);

CREATE TABLE Paquetes (
    paquete_id INT PRIMARY KEY,
    numero_seguimiento VARCHAR(50),
    peso DECIMAL(10,2),
    dimensiones VARCHAR(50),
    contenido TEXT,
    valor_declarado DECIMAL(10,2),
    tipo_servicio VARCHAR(50),
    estado VARCHAR(50)
);

CREATE TABLE Envios (
    envio_id INT PRIMARY KEY,
    cliente_id INT,
    paquete_id INT,
    fecha_envio TIMESTAMP,
    destino VARCHAR(200),
    ruta_id INT,
    sucursal_id INT,
    FOREIGN KEY (cliente_id) REFERENCES Clientes(cliente_id),
    FOREIGN KEY (paquete_id) REFERENCES Paquetes(paquete_id),
    FOREIGN KEY (ruta_id) REFERENCES Rutas(ruta_id),
    FOREIGN KEY (sucursal_id) REFERENCES Sucursales(sucursal_id)
);


CREATE TABLE Seguimiento (
    seguimiento_id INT PRIMARY KEY,
    paquete_id INT,
    ubicacion VARCHAR(200),
    fecha_hora TIMESTAMP,
    estado VARCHAR(50),
    FOREIGN KEY (paquete_id) REFERENCES Paquetes(paquete_id)
);


CREATE TABLE Telefonos_Conductores (
    telefono_id INT PRIMARY KEY,
    numero VARCHAR(20),
    conductor_id INT,
    FOREIGN KEY (conductor_id) REFERENCES Conductores(conductor_id)
);