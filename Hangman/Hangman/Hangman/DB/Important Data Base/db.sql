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
    ('Espectro', 'Elena E.', 'espectro789', 'elena@example.com'),
    ('Gorgona', 'Gloria G.', 'gorgona123', 'gloria@example.com'),
    ('Frankenstein', 'Victor F.', 'monstruoverde152', 'frank@example.com'),
    ('Cíclope', 'Carlos C.', 'cyclops456', 'carlos@example.com'),
    ('Vampiro', 'Vicente V.', 'vampirodsa123', 'vicente@example.com'),
    ('Licántropo', 'Lucía L.', 'wolfina456', 'lucia@example.com');

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
    ('Cueva Oscura', 'Misteriolandia', 1),
    ('Lago Profundo', 'Fantasilandia', 2),
    ('Montaña Embrujada', 'Terrormania', 3);

-- Mostrar los monstruos y sus locaciones
SELECT Monstruos.Nombre AS NombreMonstruo, Locaciones.NombreLocacion, Locaciones.Pais
FROM Monstruos
JOIN Locaciones ON Monstruos.ID = Locaciones.MonstruoID;
