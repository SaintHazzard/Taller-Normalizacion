-- Definición de tablas
CREATE TABLE Pais(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100),
    codigo VARCHAR(10)
);

CREATE TABLE Region (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100),
    id_pais INT,
    FOREIGN KEY (id_pais) REFERENCES Pais(id)
);

CREATE TABLE Ciudad(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100),
    codigo_postal VARCHAR(10),
    codigo_ciudad VARCHAR(10),
    region_id INT NOT NULL,
    FOREIGN KEY (region_id) REFERENCES Region(id)
);

CREATE TABLE Direccion(
    id INT PRIMARY KEY AUTO_INCREMENT,
    calle VARCHAR(30),
    calle_complemento VARCHAR(30),
    numero INT,
    ciudad_id INT NOT NULL,
    codigo_postal VARCHAR(10) NOT NULL,
    FOREIGN KEY (ciudad_id) REFERENCES Ciudad(id),
    UNIQUE (calle, calle_complemento, numero, ciudad_id)
);

CREATE TABLE Tercero (
    id INT PRIMARY KEY AUTO_INCREMENT,
    tipo ENUM('cliente', 'empresa', 'proveedor', 'otro') NOT NULL,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    UNIQUE (email)
);

CREATE TABLE Direccion_tercero(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre_direccion VARCHAR(45),
    tercero_id INT(11) NOT NULL,
    direccion_id INT(11) NOT NULL,
    FOREIGN KEY (tercero_id) REFERENCES Tercero(id),
    FOREIGN KEY (direccion_id) REFERENCES Direccion(id)
);

CREATE TABLE Tercero_contacto (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_tercero INT,
    telefono VARCHAR(20),
    FOREIGN KEY (id_tercero) REFERENCES Tercero(id)
);

CREATE TABLE Contacto(
    id INT PRIMARY KEY AUTO_INCREMENT,
    tercero_id INT(11) NOT NULL,
    telefono_id INT(11) NOT NULL,
    FOREIGN KEY (tercero_id) REFERENCES Tercero(id),
    FOREIGN KEY (telefono_id) REFERENCES Telefono(id)
);

CREATE TABLE Empleado(
    id INT PRIMARY KEY AUTO_INCREMENT,
    tercero_id INT NOT NULL,
    rol_id INT NOT NULL,
    oficina_id INT NOT NULL,
    jefe_id INT,
    puesto VARCHAR(100) NULL,
    FOREIGN KEY (tercero_id) REFERENCES Tercero(id),
    FOREIGN KEY (rol_id) REFERENCES Rol(id),
    FOREIGN KEY (oficina_id) REFERENCES Oficina(id),
    FOREIGN KEY (jefe_id) REFERENCES Empleado(id)
);

CREATE TABLE Rol(
    id INT PRIMARY KEY AUTO_INCREMENT,
    rol VARCHAR(100) NOT NULL
);

CREATE TABLE Telefono(
    id INT PRIMARY KEY AUTO_INCREMENT,
    numero INT(20) NOT NULL,
    tipo_telefono INT(11) NOT NULL,
    FOREIGN KEY (tipo_telefono) REFERENCES Tipo_telefono(id)
);

CREATE TABLE Tipo_telefono(
    id INT PRIMARY KEY AUTO_INCREMENT,
    tipo VARCHAR(50) NOT NULL
);

CREATE TABLE Producto(
    id INT PRIMARY KEY AUTO_INCREMENT,
    ean VARCHAR(13),
    nombre VARCHAR(100),
    precio DECIMAL NOT NULL,
    tipo_gama_id INT(11) NOT NULL,
    descripcion VARCHAR(255),
    width DECIMAL NOT NULL,
    height DECIMAL NOT NULL,
    length DECIMAL NOT NULL,
    proveedor_id INT(11) NOT NULL,
    precio_proveedor DECIMAL(15,2) NOT NULL,
    FOREIGN KEY (tipo_gama_id) REFERENCES Gama_producto(id),
    FOREIGN KEY (proveedor_id) REFERENCES Proveedor(id_tercero),
    UNIQUE (ean)
);

CREATE TABLE Gama_producto(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100),
    descripcion VARCHAR(255)
);

CREATE TABLE Forma_pago(
    id INT PRIMARY KEY AUTO_INCREMENT,
    tipo VARCHAR(50) NOT NULL,
    UNIQUE (tipo)
);

CREATE TABLE Tercero_forma_pago(
    id INT PRIMARY KEY AUTO_INCREMENT,
    tercero_id INT(11) NOT NULL,
    forma_pago_id INT(11) NOT NULL,
    FOREIGN KEY (tercero_id) REFERENCES Tercero(id),
    FOREIGN KEY (forma_pago_id) REFERENCES Forma_pago(id)
);

CREATE TABLE Pedido(
    id INT PRIMARY KEY AUTO_INCREMENT,
    fecha_pedido DATE NOT NULL,
    fecha_esperada DATE NOT NULL,
    fecha_entrega DATE NOT NULL,
    total DECIMAL NOT NULL,
    estado_pedido INT(11) NOT NULL,
    Tercero_forma_pago_id INT(11) NOT NULL DEFAULT 1,
    FOREIGN KEY (Tercero_forma_pago_id) REFERENCES Tercero_forma_pago(id),
    FOREIGN KEY (estado_pedido) REFERENCES Estado_pedido(id)
);

CREATE TABLE Estado_pedido(
    id INT PRIMARY KEY AUTO_INCREMENT,
    estado ENUM('pendiente', 'enviado', 'recibido') NOT NULL
);

CREATE TABLE Detalle_pedido(
    id INT PRIMARY KEY AUTO_INCREMENT,
    pedido_id INT(11) NOT NULL,
    producto_id INT(11) NOT NULL,
    cantidad INT(11) NOT NULL,
    precio DECIMAL NOT NULL,
    FOREIGN KEY (pedido_id) REFERENCES Pedido(id),
    FOREIGN KEY (producto_id) REFERENCES Producto(id)
);

CREATE TABLE Oficina(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100),
    direccion_id INT(11) NOT NULL,
    ciudad_id INT(11) NOT NULL,
    telefono_id INT(11) NOT NULL,
    FOREIGN KEY (direccion_id) REFERENCES Direccion(id),
    FOREIGN KEY (ciudad_id) REFERENCES Ciudad(id),
    FOREIGN KEY (telefono_id) REFERENCES Telefono(id)
);

CREATE TABLE Oficina_stock(
    id INT PRIMARY KEY AUTO_INCREMENT,
    oficina_id INT(11) NOT NULL,
    producto_id INT(11) NOT NULL,
    cantidad INT(11) NOT NULL,
    FOREIGN KEY (oficina_id) REFERENCES Oficina(id),
    FOREIGN KEY (producto_id) REFERENCES Producto(id)
);

CREATE TABLE Cliente (
    id_tercero INT PRIMARY KEY, 
    preferencias VARCHAR(150), 
    FOREIGN KEY (id_tercero) REFERENCES Tercero (id)
);

CREATE TABLE Empresa (
    id_tercero INT PRIMARY KEY, 
    numero_registro VARCHAR(50), 
    FOREIGN KEY (id_tercero) REFERENCES Tercero (id)
);

CREATE TABLE Proveedor (
    id_tercero INT PRIMARY KEY, 
    tipo_servicio VARCHAR(100), 
    FOREIGN KEY (id_tercero) REFERENCES Tercero (id)
);

![alt text](ERDpng.png)