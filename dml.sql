
INSERT INTO Paises (pais_id, nombre) VALUES
(1, 'Estados Unidos'),
(2, 'México'),
(3, 'Canadá'),
(4, 'España'),
(5, 'Brasil');


INSERT INTO Ciudades (ciudad_id, nombre, pais_id) VALUES
(1, 'Nueva York', 1),
(2, 'Ciudad de México', 2),
(3, 'Toronto', 3),
(4, 'Madrid', 4),
(5, 'São Paulo', 5);


INSERT INTO Sucursales (sucursal_id, nombre, direccion, ciudad_id) VALUES
(1, 'Sucursal Manhattan', '123 Main St, New York', 1),
(2, 'Sucursal Reforma', '456 Av. Principal, Ciudad de México', 2),
(3, 'Sucursal Norte', '789 Calle Principal, Toronto', 3),
(4, 'Sucursal Central', '321 Calle Mayor, Madrid', 4),
(5, 'Sucursal Paulista', '987 Rua Principal, São Paulo', 5);


INSERT INTO Empleados (empleado_id, nombre, sucursal_id) VALUES
(1, 'Juan Pérez', 1),
(2, 'María García', 2),
(3, 'Carlos Martínez', 3),
(4, 'Ana López', 4),
(5, 'Pedro Sánchez', 5);


INSERT INTO Telefonos_Empleados (telefono_id, numero, empleado_id) VALUES
(1, '555-1234', 1),
(2, '555-5678', 2),
(3, '555-9876', 3),
(4, '555-4321', 4),
(5, '555-8765', 5);


INSERT INTO Conductores (conductor_id, nombre) VALUES
(1, 'Luis Hernández'),
(2, 'Elena Ramírez'),
(3, 'José Rodríguez'),
(4, 'Laura Gómez'),
(5, 'Daniel Pérez');


INSERT INTO Vehiculos (vehiculo_id, placa, marca, modelo, capacidad_carga, sucursal_id) VALUES
(1, 'ABC123', 'Ford', 'Fiesta', 1000.00, 1),
(2, 'DEF456', 'Chevrolet', 'Aveo', 800.00, 2),
(3, 'GHI789', 'Toyota', 'Corolla', 1200.00, 3),
(4, 'JKL012', 'Volkswagen', 'Jetta', 1100.00, 4),
(5, 'MNO345', 'Honda', 'Civic', 900.00, 5);


INSERT INTO Conductores_Vehiculos (conductor_id, vehiculo_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);


INSERT INTO Rutas (ruta_id, descripcion, sucursal_id) VALUES
(1, 'Ruta A', 1),
(2, 'Ruta B', 2),
(3, 'Ruta C', 3),
(4, 'Ruta D', 4),
(5, 'Ruta E', 5);


INSERT INTO Auxiliares (auxiliar_id, nombre) VALUES
(1, 'Martín Hernández'),
(2, 'Luisa Ramírez'),
(3, 'Sofía Rodríguez'),
(4, 'Juanita Gómez'),
(5, 'Diego Pérez');


INSERT INTO Ruta_Auxiliares (ruta_id, auxiliar_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);


INSERT INTO Clientes (cliente_id, nombre, email, direccion) VALUES
(1, 'Ana Martínez', 'ana@example.com', '789 Calle Principal, Ciudad de México'),
(2, 'Pedro García', 'pedro@example.com', '123 Av. Principal, Madrid'),
(3, 'María López', 'maria@example.com', '456 Rua Principal, São Paulo'),
(4, 'Carlos Fernández', 'carlos@example.com', '321 Main St, New York'),
(5, 'Laura Rodríguez', 'laura@example.com', '987 Avenue du Monde, Paris');


INSERT INTO Telefonos_Clientes (telefono_id, numero, cliente_id) VALUES
(6, '555-1111', 1),
(7, '555-2222', 2),
(8, '555-3333', 3),
(9, '555-4444', 4),
(10, '555-5555', 5);


INSERT INTO Paquetes (paquete_id, numero_seguimiento, peso, dimensiones, contenido, valor_declarado, tipo_servicio, estado) VALUES
(1, 'PKG001', 5.25, '20x30x15 cm', 'Libros', 50.00, 'Nacional', 'En tránsito'),
(2, 'PKG002', 3.75, '15x25x10 cm', 'Ropa', 30.00, 'Internacional', 'Entregado'),
(3, 'PKG003', 7.00, '25x40x20 cm', 'Electrónicos', 200.00, 'Exprés', 'Recibido'),
(4, 'PKG004', 2.50, '10x20x5 cm', 'Accesorios', 20.00, 'Nacional', 'Entregado'),
(5, 'PKG005', 4.80, '18x28x12 cm', 'Juguetes', 40.00, 'Internacional', 'En tránsito');


INSERT INTO Envios (envio_id, cliente_id, paquete_id, fecha_envio, destino, ruta_id, sucursal_id) VALUES
(1, 1, 1, '2024-06-20 10:00:00', 'Ciudad de México', 1, 1),
(2, 2, 2, '2024-06-19 12:00:00', 'Madrid', 2, 2),
(3, 3, 3, '2024-06-18 15:00:00', 'São Paulo', 3, 3),
(4, 4, 4, '2024-06-17 08:00:00', 'Nueva York', 4, 4),
(5, 5, 5, '2024-06-16 09:00:00', 'Londres', 5, 5);


INSERT INTO Seguimiento (seguimiento_id, paquete_id, ubicacion, fecha_hora, estado) VALUES
(1, 1, 'Sucursal Manhattan', '2024-06-20 11:30:00', 'En tránsito'),
(2, 2, 'Sucursal Reforma', '2024-06-20 14:00:00', 'Entregado'),
(3, 3, 'Sucursal Norte', '2024-06-19 09:45:00', 'Recibido'),
(4, 4, 'Sucursal Central', '2024-06-18 10:30:00', 'Entregado'),
(5, 5, 'Sucursal Paulista', '2024-06-17 13:20:00', 'En tránsito');
