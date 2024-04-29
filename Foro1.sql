
USE NotasAlumnosDB

CREATE TABLE Profesores (
  ProfesorID int PRIMARY KEY IDENTITY,
  Nombre varchar(50) NOT NULL,
  Apellido varchar(50) NOT NULL,
  CorreoElectronico varchar(100) NOT NULL,
  Departamento varchar(50)
);

CREATE TABLE Materias (
  MateriaID int PRIMARY KEY IDENTITY,
  NombreMateria varchar(50) NOT NULL,
  Area varchar(50) NOT NULL
);

CREATE TABLE Asignaturas (
  AsignaturaID int PRIMARY KEY IDENTITY,
  ProfesorID int FOREIGN KEY REFERENCES Profesores(ProfesorID),
  MateriaID int FOREIGN KEY REFERENCES Materias(MateriaID),
  Semestre int NOT NULL,
  Anio int NOT NULL --no tengo la enie en mi teclado y pad numerico, le puse asi, mas que todo trabajo en ingles, disculpe
);

CREATE TABLE Evaluaciones (
  EvaluacionID int PRIMARY KEY IDENTITY,
  AsignaturaID int FOREIGN KEY REFERENCES Asignaturas(AsignaturaID),
  TipoEvaluacion varchar(50) NOT NULL,
  Ponderacion int NOT NULL
);

CREATE TABLE Estudiantes (
  EstudianteID int PRIMARY KEY IDENTITY,
  NombreEstudiante varchar(50) NOT NULL,
  ApellidoEstudiante varchar(50) NOT NULL,
  CorreoElectronicoEstudiante varchar(100) NOT NULL,
  Beca varchar(20)
);

CREATE TABLE Notas (
  NotaID int PRIMARY KEY IDENTITY,
  EstudianteID int FOREIGN KEY REFERENCES Estudiantes(EstudianteID),
  AsignaturaID int FOREIGN KEY REFERENCES Asignaturas(AsignaturaID),
  EvaluacionID int FOREIGN KEY REFERENCES Evaluaciones(EvaluacionID),
  Calificacion decimal(3,2) NOT NULL
);




--INSERTS

INSERT INTO Profesores (Nombre, Apellido, CorreoElectronico, Departamento)
VALUES ('Juan', 'Pérez', 'juan.perez@gmail.com', 'Matemáticas');

INSERT INTO Profesores (Nombre, Apellido, CorreoElectronico, Departamento)
VALUES ('María', 'García', 'maria.garcia@gmail.com', 'Lengua y Literatura');

INSERT INTO Profesores (Nombre, Apellido, CorreoElectronico, Departamento)
VALUES ('Pedro', 'López', 'pedro.lopez@gmail.com', 'Ciencias Naturales');

INSERT INTO Profesores (Nombre, Apellido, CorreoElectronico, Departamento)
VALUES ('Ana', 'Román', 'ana.roman@gmail.com', 'Ciencias Sociales');

INSERT INTO Profesores (Nombre, Apellido, CorreoElectronico, Departamento)
VALUES ('Carlos', 'Sánchez', 'carlos.sanchez@gmail.com', 'Informática');


INSERT INTO Materias (NombreMateria, Area)
VALUES ('Cálculo Diferencial', 'Matemáticas');

INSERT INTO Materias (NombreMateria, Area)
VALUES ('Gramática Española', 'Lengua y Literatura');

INSERT INTO Materias (NombreMateria, Area)
VALUES ('Biología Celular', 'Ciencias Naturales');

INSERT INTO Materias (NombreMateria, Area)
VALUES ('Historia Universal', 'Ciencias Sociales');

INSERT INTO Materias (NombreMateria, Area)
VALUES ('Programación Web', 'Informática');



INSERT INTO Asignaturas (ProfesorID, MateriaID, Semestre, Anio)
VALUES (1, 1, 1, 2024);

INSERT INTO Asignaturas (ProfesorID, MateriaID, Semestre, Anio)
VALUES (2, 2, 2, 2024);

INSERT INTO Asignaturas (ProfesorID, MateriaID, Semestre, Anio)
VALUES (3, 3, 1, 2024);

INSERT INTO Asignaturas (ProfesorID, MateriaID, Semestre, Anio)
VALUES (4, 4, 2, 2024);

INSERT INTO Asignaturas (ProfesorID, MateriaID, Semestre, Anio)
VALUES (5, 5, 1, 2024);



INSERT INTO Evaluaciones (AsignaturaID, TipoEvaluacion, Ponderacion)
VALUES (1, 'Examen Parcial', 30);

INSERT INTO Evaluaciones (AsignaturaID, TipoEvaluacion, Ponderacion)
VALUES (2, 'Quizz', 20);

INSERT INTO Evaluaciones (AsignaturaID, TipoEvaluacion, Ponderacion)
VALUES (3, 'Trabajo Grupal', 40);

INSERT INTO Evaluaciones (AsignaturaID, TipoEvaluacion, Ponderacion)
VALUES (4, 'Examen Final', 50);

INSERT INTO Evaluaciones (AsignaturaID, TipoEvaluacion, Ponderacion)
VALUES (5, 'Examen Midterm', 40);



INSERT INTO Estudiantes (NombreEstudiante, ApellidoEstudiante, CorreoElectronicoEstudiante, Beca)
VALUES ('Isabella', 'Castro', 'isabella.castro@alumno.udb.edu.sv', 'Deportiva');

INSERT INTO Estudiantes (NombreEstudiante, ApellidoEstudiante, CorreoElectronicoEstudiante, Beca)
VALUES ('Mateo', 'Diaz', 'mateo.diaz@alumno.udb.edu.sv', 'Academica');

INSERT INTO Estudiantes (NombreEstudiante, ApellidoEstudiante, CorreoElectronicoEstudiante, Beca)
VALUES ('Sofia', 'Gonzalez', 'sofia.gonzalez@alumno.udb.edu.sv', 'Ninguna');

INSERT INTO Estudiantes (NombreEstudiante, ApellidoEstudiante, CorreoElectronicoEstudiante, Beca)
VALUES ('Alejandro', 'Rodriguez', 'alejandro.rodriguez@alumno.udb.edu.sv', 'Hermano');

INSERT INTO Estudiantes (NombreEstudiante, ApellidoEstudiante, CorreoElectronicoEstudiante, Beca)
VALUES ('Valentina', 'Perez', 'valentina.perez@alumno.udb.edu.sv', 'Socioeconomica');



INSERT INTO Notas (EstudianteID, AsignaturaID, EvaluacionID, Calificacion)
VALUES (1, 1, 1, 8.5);

INSERT INTO Notas (EstudianteID, AsignaturaID, EvaluacionID, Calificacion)
VALUES (2, 2, 2, 9.0);

INSERT INTO Notas (EstudianteID, AsignaturaID, EvaluacionID, Calificacion)
VALUES (3, 3, 3, 7.8);

INSERT INTO Notas (EstudianteID, AsignaturaID, EvaluacionID, Calificacion)
VALUES (4, 4, 4, 6.5);

INSERT INTO Notas (EstudianteID, AsignaturaID, EvaluacionID, Calificacion)
VALUES (5, 5, 5, 9.2);

