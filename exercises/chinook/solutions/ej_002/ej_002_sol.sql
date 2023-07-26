/* Visualiza el esquema de una tabla en particular he interpreta el resultado
obtenido.*/

-- Query:
.schema Employee


-- Resultado:
CREATE TABLE [Employee]
(
    [EmployeeId] INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    [LastName] NVARCHAR(20)  NOT NULL,
    [FirstName] NVARCHAR(20)  NOT NULL,
    [Title] NVARCHAR(30),
    [ReportsTo] INTEGER,
    [BirthDate] DATETIME,
    [HireDate] DATETIME,
    [Address] NVARCHAR(70),
    [City] NVARCHAR(40),
    [State] NVARCHAR(40),
    [Country] NVARCHAR(40),
    [PostalCode] NVARCHAR(10),
    [Phone] NVARCHAR(24),
    [Fax] NVARCHAR(24),
    [Email] NVARCHAR(60),
    FOREIGN KEY ([ReportsTo]) REFERENCES [Employee] ([EmployeeId]) 
		ON DELETE NO ACTION ON UPDATE NO ACTION
);
CREATE INDEX [IFK_EmployeeReportsTo] ON [Employee] ([ReportsTo]);

/*
Este código SQL crea una tabla llamada "Employee" (Empleado) con varias columnas
para almacenar información sobre los empleados. La tabla tiene las siguientes 
columnas:
EmployeeId: Es el identificador único del empleado y es de tipo INTEGER. 
  También es la clave primaria (PRIMARY KEY) de la tabla y se genera 
  automáticamente con valores incrementales (AUTOINCREMENT). Además, no se 
  permite que este campo sea nulo (NOT NULL).
LastName: Es una columna de texto de longitud máxima de 20 caracteres 
  (NVARCHAR(20)), que guarda el apellido del empleado. No se permite que esta 
  columna esté vacía (NOT NULL).
FirstName: Al igual que la columna anterior, es de texto con una longitud máxima
  de 20 caracteres (NVARCHAR(20)), y guarda el nombre del empleado. También se 
  requiere que tenga un valor (NOT NULL).
Title: Es una columna de texto de longitud máxima de 30 caracteres 
  (NVARCHAR(30)) que almacena el título o cargo del empleado.
ReportsTo: Es un campo de tipo INTEGER que guarda el identificador del empleado 
  al que este empleado reporta (su jefe o supervisor). Puede ser nulo, lo que 
  indica que no tiene un supervisor asignado.
BirthDate: Es una columna de tipo DATETIME que almacena la fecha de nacimiento 
  del empleado.
HireDate: Es una columna de tipo DATETIME que almacena la fecha en la que el 
  empleado fue contratado.
Address, City, State, Country, PostalCode: Son columnas que almacenan la 
  dirección y la información de ubicación del empleado, todas ellas de tipo 
  NVARCHAR con diferentes longitudes.
Phone y Fax: Son columnas que almacenan los números de teléfono y fax del 
  empleado, ambas de tipo NVARCHAR con diferentes longitudes.
Email: Es una columna de tipo NVARCHAR con una longitud máxima de 60 caracteres,
  que guarda la dirección de correo electrónico del empleado.

El código también incluye una restricción FOREIGN KEY en la columna "ReportsTo",
  que hace referencia a la columna "EmployeeId" de la misma tabla "Employee". 
  Esto indica una relación jerárquica entre los empleados, donde "ReportsTo" se 
  refiere al jefe del empleado. Además, se especifican las acciones 
  ON DELETE NO ACTION y ON UPDATE NO ACTION, lo que significa que no se 
  realizarán acciones automáticas si se eliminan o actualizan los registros 
  relacionados en la tabla.

Finalmente, el código crea un índice llamado "IFK_EmployeeReportsTo" en la 
  columna "ReportsTo" para mejorar el rendimiento de las consultas que utilizan 
  esta columna en las cláusulas WHERE o JOIN.
*/
