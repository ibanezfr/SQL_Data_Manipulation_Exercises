-- Visualiza el esquema de una tabla en particular he interpreta el resultado
-- obtenido.

-- Query:
.schema Employees


-- Resultado:
CREATE TABLE [Employees]
(      [EmployeeID] INTEGER PRIMARY KEY AUTOINCREMENT,
       [LastName] TEXT,
       [FirstName] TEXT,
       [Title] TEXT,
       [TitleOfCourtesy] TEXT,
       [BirthDate] DATE,
       [HireDate] DATE,
       [Address] TEXT,
       [City] TEXT,
       [Region] TEXT,
       [PostalCode] TEXT,
       [Country] TEXT,
       [HomePhone] TEXT,
       [Extension] TEXT,
       [Photo] BLOB,
       [Notes] TEXT,
       [ReportsTo] INTEGER,
       [PhotoPath] TEXT,
	   FOREIGN KEY ([ReportsTo]) REFERENCES [Employees] ([EmployeeID]) 
		ON DELETE NO ACTION ON UPDATE NO ACTION
);

/*
Interpretación:
Es una descripción del esquema de la tabla 'Employees'.
Esta setencia SQL crea una tabla llamada 'Employees' con las siguientes 
columnas y restricciones:
[EmployeeID]: Es un campo entero que se utilizará como clave principal 
    (PRIMARY KEY) y se incrementará automáticamente con cada nuevo registro 
    debido al atributo "AUTOINCREMENT".
[LastName]: Es un campo de texto que almacenará el apellido del empleado.
[FirstName]: Es un campo de texto que almacenará el nombre del empleado.
[Title]: Es un campo de texto que almacenará el título del empleado.
[TitleOfCourtesy]: Es un campo de texto que almacenará el título de cortesía 
    del empleado.
[BirthDate]: Es un campo de tipo fecha (DATE) que almacenará la fecha de 
    nacimiento del empleado.
[HireDate]: Es un campo de tipo fecha (DATE) que almacenará la fecha de 
    contratación del empleado.
[Address]: Es un campo de texto que almacenará la dirección del empleado.
[City]: Es un campo de texto que almacenará la ciudad del empleado.
[Region]: Es un campo de texto que almacenará la región del empleado.
[PostalCode]: Es un campo de texto que almacenará el código postal del 
    empleado.
[Country]: Es un campo de texto que almacenará el país del empleado.
[HomePhone]: Es un campo de texto que almacenará el número de teléfono del 
    hogar del empleado.
[Extension]: Es un campo de texto que almacenará la extensión telefónica del 
    empleado.
[Photo]: Es un campo de tipo BLOB (Binary Large Object) que almacenará la  
    foto del empleado.
[Notes]: Es un campo de texto que almacenará notas o comentarios sobre el 
    empleado.
[ReportsTo]: Es un campo entero que se utilizará para establecer una relación 
    jerárquica entre los empleados. Hace referencia al campo [EmployeeID] de 
    la misma tabla "Employees", lo que significa que cada empleado puede 
    tener un jefe (representado por el valor de [EmployeeID] 
    de otro empleado).
[PhotoPath]: Es un campo de texto que almacenará la ruta de la foto del 
    empleado.

La última línea de la sentencia define una restricción de clave externa 
(FOREIGN KEY) en el campo [ReportsTo] que hace referencia al campo 
[EmployeeID]  de la misma tabla "Employees". Esto establece una relación 
jerárquica donde el campo [ReportsTo] puede contener el valor [EmployeeID] de
otro empleado, indicando quién es el jefe de cada empleado. Además, se  
especifica que NO se realizará ninguna acción (ON DELETE NO ACTION,
ON UPDATE NO ACTION) si un empleado relacionado se borra o actualiza. 
Es decir, si un empleado es eliminado o actualizado, no se realizarán 
automáticamente cambios en la tabla de empleados relacionada.
*/
