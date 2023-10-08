-- Crear una base de datos
CREATE DATABASE MiBaseDeDatos;

-- Usar la base de datos
USE MiBaseDeDatos;

-- Crear la tabla de Monstruos
CREATE TABLE Monstruos (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Usuario VARCHAR(50) UNIQUE NOT NULL,
    Nombre VARCHAR(50) NOT NULL,
    Contrasena VARCHAR(100) NOT NULL,
    CorreoElectronico VARCHAR(100) UNIQUE NOT NULL
);

-- Insertar algunos datos de ejemplo en la tabla de Monstruos
INSERT INTO Monstruos (Usuario, Nombre, Contrasena, CorreoElectronico)
VALUES
    ('Nessie', 'Bananessie', 'clave123', 'nessie@example.com'),
    ('Dracula', 'BiteYourNet', 'segura456', 'drac@example.com'),
    ('Mummy', 'Imhotep', 'mummy123', 'imhotep@example.com'),
    ('Zombie', 'Zack Z.', 'zombie', 'zack@example.com'),
    ('Cíclope', 'Carlos C.', 'cyclops456', 'carlos@example.com'),

-- Crear la tabla de Locaciones
CREATE TABLE Locaciones (
    LocacionID INT PRIMARY KEY AUTO_INCREMENT,
    NombreLocacion VARCHAR(100),
    Pais VARCHAR(50),
    MonstruoID INT,
    FOREIGN KEY (MonstruoID) REFERENCES Monstruos(ID)
);

-- Insertar algunos datos de ejemplo en la tabla de Locaciones
INSERT INTO Locaciones (NombreLocacion, Pais, MonstruoID)
VALUES
--- Espero que esto pueda ayudar
    ('Lago Ness', 'Escocia', 1),
    ('Valle de los Reyes', 'Egipto', 3),
    ('Cementerio de Highgate', 'Inglaterra', 4),
    ('Casa de la Ópera', 'Francia', 5),
    ('Jardines de Versalles', 'Francia', 6),
    ('Cueva de la Sibila', 'Grecia', 8),
    ('Castillo de Bran', 'Rumania', 9),
    ('Castillo de Bran', 'Rumania', 10);
    ('Cueva Oscura', 'Misteriolandia', 1),
    ('Lago Profundo', 'Fantasilandia', 2),
    ('Montaña Embrujada', 'Terrormania', 3);

-- Mostrar los monstruos y sus locaciones
SELECT Monstruos.Nombre AS NombreMonstruo, Locaciones.NombreLocacion, Locaciones.Pais
FROM Monstruos
JOIN Locaciones ON Monstruos.ID = Locaciones.MonstruoID;
