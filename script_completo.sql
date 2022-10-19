drop table Answer
go

drop table Question
go

drop table Survey
go

CREATE TABLE [dbo].[Survey] (
    [Id]          INT        IDENTITY (1, 1) NOT NULL,
    [Encuesta] VARCHAR (100) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

CREATE TABLE [dbo].[Question] (
    [Id]          INT           IDENTITY (1, 1) NOT NULL,
    [IdSurvey]    INT           NULL,
    [Pregunta] VARCHAR (250) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

CREATE TABLE [dbo].[Answer] (
    [Id]          INT           IDENTITY (1, 1) NOT NULL,
    [IdQuestion]  INT           NOT NULL,
    [Respuesta] VARCHAR (150) NOT NULL,
    [Puntaje]       INT           NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

------------------------------------------------
-- ENCUESTAS
------------------------------------------------
insert into Survey (Encuesta) values ('Encuesta 1')
go
insert into Survey (Encuesta) values ('Encuesta 2')
go
insert into Survey (Encuesta) values ('Encuesta 3')
go
insert into Survey (Encuesta) values ('Encuesta 4')
go
insert into Survey (Encuesta) values ('Encuesta 5')
go

------------------------------------------------
-- PREGUNTAS
------------------------------------------------
insert into Question (IdSurvey, Pregunta) values (1, 'Que guardas en los bolsillos')
go
insert into Question (IdSurvey, Pregunta) values (1, 'Otra forma de decirle a la panza')
go
insert into Question (IdSurvey, Pregunta) values (1, 'Qué haces cuando esperas el avión en el aeropuerto?')
go
insert into Question (IdSurvey, Pregunta) values (1, 'Objetos con los que les gusta jugar a los perros?')
go
insert into Question (IdSurvey, Pregunta) values (1, 'Cuáles son los muebles más usados en la casa?')
go
insert into Question (IdSurvey, Pregunta) values (1, 'Personajes en los que creemos cuando somos pequeñ@s?')
go
insert into Question (IdSurvey, Pregunta) values (1, 'Decisiones que las gente no toma a la ligera?')
go
insert into Question (IdSurvey, Pregunta) values (1, 'Qué podes encontrar en un colegio?')
go
insert into Question (IdSurvey, Pregunta) values (1, 'Formas cariñosas de decirle a tu pareja?')
go
insert into Question (IdSurvey, Pregunta) values (1, 'Qué instrumento podes tocar desnudo porque te cubre todo el cuerpo?')
go

insert into Question (IdSurvey, Pregunta) values (2, 'Videojuegos mas conocidos?')
go
insert into Question (IdSurvey, Pregunta) values (2, 'Qué podes comprar de a 6 unidades?')
go
insert into Question (IdSurvey, Pregunta) values (2, 'Refran o frase popular que tenga un animal en ella?')
go
insert into Question (IdSurvey, Pregunta) values (2, 'Qué te puede molestar que haga alguien en una ronda de mates?')
go
insert into Question (IdSurvey, Pregunta) values (2, 'Dónde te pueden llamar la atención por gritar?')
go
insert into Question (IdSurvey, Pregunta) values (2, 'Cuáles son los objetos o servicios que que podemos encontrar digitalizados?')
go
insert into Question (IdSurvey, Pregunta) values (2, 'Profesiones u oficios donde podes usar guantes?')
go
insert into Question (IdSurvey, Pregunta) values (2, 'Qué podes encontrar en la habitación de un adolescente?')
go
insert into Question (IdSurvey, Pregunta) values (2, 'refranes o frases populares que incluya la palabra ''paga o pagar''?')
go
insert into Question (IdSurvey, Pregunta) values (2, 'Qué excusa le pondrías a tus padres cuando te dicen para hacer alguna tarea de la casa y no quieres?')
go

insert into Question (IdSurvey, Pregunta) values (3, 'Qué podes atar o sujetar con una banda elástica?')
go
insert into Question (IdSurvey, Pregunta) values (3, 'Cuáles son los mejores jugadores de la selección Argentina?')
go
insert into Question (IdSurvey, Pregunta) values (3, 'Cuento o película infantil donde hay un hada?')
go
insert into Question (IdSurvey, Pregunta) values (3, 'A que lugar no te gustaría que te acompañen tus papás?')
go
insert into Question (IdSurvey, Pregunta) values (3, 'Qué te hace acordar a la navidad?')
go
insert into Question (IdSurvey, Pregunta) values (3, 'Sin decir la palabra "LOCO" como le dirías a una persona ''Este esta re...''?')
go
insert into Question (IdSurvey, Pregunta) values (3, 'De qué podes estar enamorado? (dejando afuera a los humanos)?')
go
insert into Question (IdSurvey, Pregunta) values (3, 'Completa la frase con una palabra ''No como más, estoy''?')
go
insert into Question (IdSurvey, Pregunta) values (3, 'Qué resulta difícil decirle a un compañero/a?')
go
insert into Question (IdSurvey, Pregunta) values (3, 'Qué le podes regalar a tu pareja si no tienes plata?')


insert into Question (IdSurvey, Pregunta) values (4, 'Cuáles son las aplicaciones más usadas en el celular? ')
go
insert into Question (IdSurvey, Pregunta) values (4, 'Qué no te podes llevar cuando te mudas de un departamento a otro?
')
go
insert into Question (IdSurvey, Pregunta) values (4, 'Por qué una persona se podría poner colorada?')
go
insert into Question (IdSurvey, Pregunta) values (4, 'Ritmos musicales bailables ')
go
insert into Question (IdSurvey, Pregunta) values (4, 'Qué esta prohibido hacer en un colegio?')
go
insert into Question (IdSurvey, Pregunta) values (4, 'Comenzando con la palabra ''Acá...'' completa lo que se dice cuando te preguntan donde queda un lugar?')
go
insert into Question (IdSurvey, Pregunta) values (4, 'Qué podes encontrar en un boliche?')
go
insert into Question (IdSurvey, Pregunta) values (4, 'Completa la frase Qué le puede decir un padre a su hijo harto, en un cumpleaños infantil, ''Por favor para de...''?')
go
insert into Question (IdSurvey, Pregunta) values (4, 'Qué objeto o tratamiento te puede dañar el pelo?')
go
insert into Question (IdSurvey, Pregunta) values (4, 'En un desfile Qué pude hacer caer a una modelo?')


insert into Question (IdSurvey, Pregunta) values (5, 'A pesar de que sea lo mismo Qué encuentras mejor en un hotel 5 estrellas que en tu casa?')
go
insert into Question (IdSurvey, Pregunta) values (5, 'Qué se oscurece cuando se moja?')
go
insert into Question (IdSurvey, Pregunta) values (5, 'Gestos que haces cuando tenes calor?')
go
insert into Question (IdSurvey, Pregunta) values (5, 'Pensando en naves, útiles, elementos para iluminar, armas y partes del cuerpo a que se parece el obelisco?')
go
insert into Question (IdSurvey, Pregunta) values (5, 'En que deporte se pueden usar rodilleras?')
go
insert into Question (IdSurvey, Pregunta) values (5, 'Por qué no te aceptarían un billete que no es falso?
')
go
insert into Question (IdSurvey, Pregunta) values (5, 'Lugares donde te podes quedar dormido que no sea tu cama?')
go
insert into Question (IdSurvey, Pregunta) values (5, 'Por qué una persona tiene que comprar un nuevo telefono?')
go
insert into Question (IdSurvey, Pregunta) values (5, 'Por qué alguien vendería, por internet, algo muy caro a un precio muy barato?')
go
insert into Question (IdSurvey, Pregunta) values (5, 'Apodos para decirle a un amigo que es pelado?')


------------------------------------------------
-- RESPUESTAS
------------------------------------------------
insert into answer (IdQuestion, Respuesta, Puntaje) values (1, 'Celular', 50)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (1, 'Llaves', 40)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (1, 'Billetera/Dinero', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (1, 'Auriculares', 20)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (1, 'Pañuelitos', 10)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (2, 'Estomago', 50)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (2, 'Barriga', 40)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (2, 'Zapan', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (2, 'Abdomen', 20)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (2, 'Pancita', 10)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (3, 'Encuesta 1 Pregunta 3 Respuesta 1', 50)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (3, 'Encuesta 1 Pregunta 3 Respuesta 2', 40)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (3, 'Encuesta 1 Pregunta 3 Respuesta 3', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (3, 'Encuesta 1 Pregunta 3 Respuesta 4', 20)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (3, 'Encuesta 1 Pregunta 3 Respuesta 5', 10)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (4, 'Encuesta 1 Pregunta 4 Respuesta 1', 50)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (4, 'Encuesta 1 Pregunta 4 Respuesta 2', 40)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (4, 'Encuesta 1 Pregunta 4 Respuesta 3', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (4, 'Encuesta 1 Pregunta 4 Respuesta 4', 20)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (4, 'Encuesta 1 Pregunta 4 Respuesta 5', 10)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (5, 'Encuesta 1 Pregunta 5 Respuesta 1', 50)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (5, 'Encuesta 1 Pregunta 5 Respuesta 2', 50)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (5, 'Encuesta 1 Pregunta 5 Respuesta 3', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (5, 'Encuesta 1 Pregunta 5 Respuesta 4', 20)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (5, 'Encuesta 1 Pregunta 5 Respuesta 5', 10)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (6, 'Encuesta 1 Pregunta 6 Respuesta 1', 60)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (6, 'Encuesta 1 Pregunta 6 Respuesta 2', 60)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (6, 'Encuesta 1 Pregunta 6 Respuesta 3', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (6, 'Encuesta 1 Pregunta 6 Respuesta 4', 20)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (6, 'Encuesta 1 Pregunta 6 Respuesta 5', 10)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (7, 'Encuesta 1 Pregunta 7 Respuesta 1', 70)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (7, 'Encuesta 1 Pregunta 7 Respuesta 2', 70)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (7, 'Encuesta 1 Pregunta 7 Respuesta 3', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (7, 'Encuesta 1 Pregunta 7 Respuesta 4', 20)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (7, 'Encuesta 1 Pregunta 7 Respuesta 5', 10)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (8, 'Encuesta 1 Pregunta 8 Respuesta 1', 80)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (8, 'Encuesta 1 Pregunta 8 Respuesta 2', 80)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (8, 'Encuesta 1 Pregunta 8 Respuesta 3', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (8, 'Encuesta 1 Pregunta 8 Respuesta 4', 20)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (8, 'Encuesta 1 Pregunta 8 Respuesta 5', 10)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (9, 'Encuesta 1 Pregunta 9 Respuesta 1', 90)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (9, 'Encuesta 1 Pregunta 9 Respuesta 2', 90)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (9, 'Encuesta 1 Pregunta 9 Respuesta 3', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (9, 'Encuesta 1 Pregunta 9 Respuesta 4', 20)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (9, 'Encuesta 1 Pregunta 9 Respuesta 5', 10)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (10, 'Encuesta 1 Pregunta 10 Respuesta 1', 100)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (10, 'Encuesta 1 Pregunta 10 Respuesta 2', 100)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (10, 'Encuesta 1 Pregunta 10 Respuesta 3', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (10, 'Encuesta 1 Pregunta 10 Respuesta 4', 20)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (10, 'Encuesta 1 Pregunta 10 Respuesta 5', 10)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (11, 'Encuesta 2 Pregunta 1 Respuesta 1', 50)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (11, 'Encuesta 2 Pregunta 1 Respuesta 2', 40)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (11, 'Encuesta 2 Pregunta 1 Respuesta 3', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (11, 'Encuesta 2 Pregunta 1 Respuesta 4', 20)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (11, 'Encuesta 2 Pregunta 1 Respuesta 5', 10)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (12, 'Encuesta 2 Pregunta 2 Respuesta 1', 50)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (12, 'Encuesta 2 Pregunta 2 Respuesta 2', 40)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (12, 'Encuesta 2 Pregunta 2 Respuesta 3', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (12, 'Encuesta 2 Pregunta 2 Respuesta 4', 20)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (12, 'Encuesta 2 Pregunta 2 Respuesta 5', 10)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (13, 'Encuesta 2 Pregunta 3 Respuesta 1', 50)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (13, 'Encuesta 2 Pregunta 3 Respuesta 2', 40)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (13, 'Encuesta 2 Pregunta 3 Respuesta 3', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (13, 'Encuesta 2 Pregunta 3 Respuesta 4', 20)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (13, 'Encuesta 2 Pregunta 3 Respuesta 5', 10)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (14, 'Encuesta 2 Pregunta 4 Respuesta 1', 50)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (14, 'Encuesta 2 Pregunta 4 Respuesta 2', 40)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (14, 'Encuesta 2 Pregunta 4 Respuesta 3', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (14, 'Encuesta 2 Pregunta 4 Respuesta 4', 20)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (14, 'Encuesta 2 Pregunta 4 Respuesta 5', 10)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (15, 'Encuesta 2 Pregunta 5 Respuesta 1', 50)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (15, 'Encuesta 2 Pregunta 5 Respuesta 2', 50)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (15, 'Encuesta 2 Pregunta 5 Respuesta 3', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (15, 'Encuesta 2 Pregunta 5 Respuesta 4', 20)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (15, 'Encuesta 2 Pregunta 5 Respuesta 5', 10)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (16, 'Encuesta 2 Pregunta 6 Respuesta 1', 60)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (16, 'Encuesta 2 Pregunta 6 Respuesta 2', 60)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (16, 'Encuesta 2 Pregunta 6 Respuesta 3', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (16, 'Encuesta 2 Pregunta 6 Respuesta 4', 20)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (16, 'Encuesta 2 Pregunta 6 Respuesta 5', 10)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (17, 'Encuesta 2 Pregunta 7 Respuesta 1', 70)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (17, 'Encuesta 2 Pregunta 7 Respuesta 2', 70)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (17, 'Encuesta 2 Pregunta 7 Respuesta 3', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (17, 'Encuesta 2 Pregunta 7 Respuesta 4', 20)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (17, 'Encuesta 2 Pregunta 7 Respuesta 5', 10)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (18, 'Encuesta 2 Pregunta 8 Respuesta 1', 80)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (18, 'Encuesta 2 Pregunta 8 Respuesta 2', 80)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (18, 'Encuesta 2 Pregunta 8 Respuesta 3', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (18, 'Encuesta 2 Pregunta 8 Respuesta 4', 20)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (18, 'Encuesta 2 Pregunta 8 Respuesta 5', 10)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (19, 'Encuesta 2 Pregunta 9 Respuesta 1', 90)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (19, 'Encuesta 2 Pregunta 9 Respuesta 2', 90)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (19, 'Encuesta 2 Pregunta 9 Respuesta 3', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (19, 'Encuesta 2 Pregunta 9 Respuesta 4', 20)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (19, 'Encuesta 2 Pregunta 9 Respuesta 5', 10)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (20, 'Encuesta 2 Pregunta 10 Respuesta 1', 100)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (20, 'Encuesta 2 Pregunta 10 Respuesta 2', 100)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (20, 'Encuesta 2 Pregunta 10 Respuesta 3', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (20, 'Encuesta 2 Pregunta 10 Respuesta 4', 20)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (20, 'Encuesta 2 Pregunta 10 Respuesta 5', 10)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (21, 'Encuesta 3 Pregunta 1 Respuesta 1', 50)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (21, 'Encuesta 3 Pregunta 1 Respuesta 2', 40)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (21, 'Encuesta 3 Pregunta 1 Respuesta 3', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (21, 'Encuesta 3 Pregunta 1 Respuesta 4', 20)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (21, 'Encuesta 3 Pregunta 1 Respuesta 5', 10)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (22, 'Encuesta 3 Pregunta 2 Respuesta 1', 50)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (22, 'Encuesta 3 Pregunta 2 Respuesta 2', 40)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (22, 'Encuesta 3 Pregunta 2 Respuesta 3', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (22, 'Encuesta 3 Pregunta 2 Respuesta 4', 20)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (22, 'Encuesta 3 Pregunta 2 Respuesta 5', 10)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (23, 'Encuesta 3 Pregunta 3 Respuesta 1', 50)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (23, 'Encuesta 3 Pregunta 3 Respuesta 2', 40)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (23, 'Encuesta 3 Pregunta 3 Respuesta 3', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (23, 'Encuesta 3 Pregunta 3 Respuesta 4', 20)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (23, 'Encuesta 3 Pregunta 3 Respuesta 5', 10)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (24, 'Encuesta 3 Pregunta 4 Respuesta 1', 50)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (24, 'Encuesta 3 Pregunta 4 Respuesta 2', 40)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (24, 'Encuesta 3 Pregunta 4 Respuesta 3', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (24, 'Encuesta 3 Pregunta 4 Respuesta 4', 20)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (24, 'Encuesta 3 Pregunta 4 Respuesta 5', 10)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (25, 'Encuesta 3 Pregunta 5 Respuesta 1', 50)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (25, 'Encuesta 3 Pregunta 5 Respuesta 2', 50)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (25, 'Encuesta 3 Pregunta 5 Respuesta 3', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (25, 'Encuesta 3 Pregunta 5 Respuesta 4', 20)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (25, 'Encuesta 3 Pregunta 5 Respuesta 5', 10)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (26, 'Encuesta 3 Pregunta 6 Respuesta 1', 60)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (26, 'Encuesta 3 Pregunta 6 Respuesta 2', 60)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (26, 'Encuesta 3 Pregunta 6 Respuesta 3', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (26, 'Encuesta 3 Pregunta 6 Respuesta 4', 20)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (26, 'Encuesta 3 Pregunta 6 Respuesta 5', 10)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (27, 'Encuesta 3 Pregunta 7 Respuesta 1', 70)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (27, 'Encuesta 3 Pregunta 7 Respuesta 2', 70)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (27, 'Encuesta 3 Pregunta 7 Respuesta 3', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (27, 'Encuesta 3 Pregunta 7 Respuesta 4', 20)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (27, 'Encuesta 3 Pregunta 7 Respuesta 5', 10)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (28, 'Encuesta 3 Pregunta 8 Respuesta 1', 80)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (28, 'Encuesta 3 Pregunta 8 Respuesta 2', 80)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (28, 'Encuesta 3 Pregunta 8 Respuesta 3', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (28, 'Encuesta 3 Pregunta 8 Respuesta 4', 20)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (28, 'Encuesta 3 Pregunta 8 Respuesta 5', 10)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (29, 'Encuesta 3 Pregunta 9 Respuesta 1', 90)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (29, 'Encuesta 3 Pregunta 9 Respuesta 2', 90)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (29, 'Encuesta 3 Pregunta 9 Respuesta 3', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (29, 'Encuesta 3 Pregunta 9 Respuesta 4', 20)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (29, 'Encuesta 3 Pregunta 9 Respuesta 5', 10)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (30, 'Encuesta 3 Pregunta 10 Respuesta 1', 100)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (30, 'Encuesta 3 Pregunta 10 Respuesta 2', 100)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (30, 'Encuesta 3 Pregunta 10 Respuesta 3', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (30, 'Encuesta 3 Pregunta 10 Respuesta 4', 20)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (30, 'Encuesta 3 Pregunta 10 Respuesta 5', 10)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (31, 'Encuesta 4 Pregunta 1 Respuesta 1', 50)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (31, 'Encuesta 4 Pregunta 1 Respuesta 2', 40)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (31, 'Encuesta 4 Pregunta 1 Respuesta 3', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (31, 'Encuesta 4 Pregunta 1 Respuesta 4', 20)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (31, 'Encuesta 4 Pregunta 1 Respuesta 5', 10)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (32, 'Encuesta 4 Pregunta 2 Respuesta 1', 50)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (32, 'Encuesta 4 Pregunta 2 Respuesta 2', 40)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (32, 'Encuesta 4 Pregunta 2 Respuesta 3', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (32, 'Encuesta 4 Pregunta 2 Respuesta 4', 20)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (32, 'Encuesta 4 Pregunta 2 Respuesta 5', 10)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (33, 'Encuesta 4 Pregunta 3 Respuesta 1', 50)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (33, 'Encuesta 4 Pregunta 3 Respuesta 2', 40)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (33, 'Encuesta 4 Pregunta 3 Respuesta 3', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (33, 'Encuesta 4 Pregunta 3 Respuesta 4', 20)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (33, 'Encuesta 4 Pregunta 3 Respuesta 5', 10)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (34, 'Encuesta 4 Pregunta 4 Respuesta 1', 50)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (34, 'Encuesta 4 Pregunta 4 Respuesta 2', 40)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (34, 'Encuesta 4 Pregunta 4 Respuesta 3', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (34, 'Encuesta 4 Pregunta 4 Respuesta 4', 20)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (34, 'Encuesta 4 Pregunta 4 Respuesta 5', 10)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (35, 'Encuesta 4 Pregunta 5 Respuesta 1', 50)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (35, 'Encuesta 4 Pregunta 5 Respuesta 2', 50)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (35, 'Encuesta 4 Pregunta 5 Respuesta 3', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (35, 'Encuesta 4 Pregunta 5 Respuesta 4', 20)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (35, 'Encuesta 4 Pregunta 5 Respuesta 5', 10)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (36, 'Encuesta 4 Pregunta 6 Respuesta 1', 60)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (36, 'Encuesta 4 Pregunta 6 Respuesta 2', 60)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (36, 'Encuesta 4 Pregunta 6 Respuesta 3', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (36, 'Encuesta 4 Pregunta 6 Respuesta 4', 20)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (36, 'Encuesta 4 Pregunta 6 Respuesta 5', 10)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (37, 'Encuesta 4 Pregunta 7 Respuesta 1', 70)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (37, 'Encuesta 4 Pregunta 7 Respuesta 2', 70)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (37, 'Encuesta 4 Pregunta 7 Respuesta 3', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (37, 'Encuesta 4 Pregunta 7 Respuesta 4', 20)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (37, 'Encuesta 4 Pregunta 7 Respuesta 5', 10)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (38, 'Encuesta 4 Pregunta 8 Respuesta 1', 80)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (38, 'Encuesta 4 Pregunta 8 Respuesta 2', 80)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (38, 'Encuesta 4 Pregunta 8 Respuesta 3', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (38, 'Encuesta 4 Pregunta 8 Respuesta 4', 20)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (38, 'Encuesta 4 Pregunta 8 Respuesta 5', 10)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (39, 'Encuesta 4 Pregunta 9 Respuesta 1', 90)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (39, 'Encuesta 4 Pregunta 9 Respuesta 2', 90)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (39, 'Encuesta 4 Pregunta 9 Respuesta 3', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (39, 'Encuesta 4 Pregunta 9 Respuesta 4', 20)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (39, 'Encuesta 4 Pregunta 9 Respuesta 5', 10)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (40, 'Encuesta 4 Pregunta 10 Respuesta 1', 100)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (40, 'Encuesta 4 Pregunta 10 Respuesta 2', 100)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (40, 'Encuesta 4 Pregunta 10 Respuesta 3', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (40, 'Encuesta 4 Pregunta 10 Respuesta 4', 20)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (40, 'Encuesta 4 Pregunta 10 Respuesta 5', 10)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (41, 'Encuesta 5 Pregunta 1 Respuesta 1', 50)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (41, 'Encuesta 5 Pregunta 1 Respuesta 2', 40)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (41, 'Encuesta 5 Pregunta 1 Respuesta 3', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (41, 'Encuesta 5 Pregunta 1 Respuesta 4', 20)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (41, 'Encuesta 5 Pregunta 1 Respuesta 5', 10)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (42, 'Encuesta 5 Pregunta 2 Respuesta 1', 50)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (42, 'Encuesta 5 Pregunta 2 Respuesta 2', 40)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (42, 'Encuesta 5 Pregunta 2 Respuesta 3', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (42, 'Encuesta 5 Pregunta 2 Respuesta 4', 20)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (42, 'Encuesta 5 Pregunta 2 Respuesta 5', 10)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (43, 'Encuesta 5 Pregunta 3 Respuesta 1', 50)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (43, 'Encuesta 5 Pregunta 3 Respuesta 2', 40)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (43, 'Encuesta 5 Pregunta 3 Respuesta 3', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (43, 'Encuesta 5 Pregunta 3 Respuesta 4', 20)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (43, 'Encuesta 5 Pregunta 3 Respuesta 5', 10)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (44, 'Encuesta 5 Pregunta 4 Respuesta 1', 50)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (44, 'Encuesta 5 Pregunta 4 Respuesta 2', 40)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (44, 'Encuesta 5 Pregunta 4 Respuesta 3', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (44, 'Encuesta 5 Pregunta 4 Respuesta 4', 20)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (44, 'Encuesta 5 Pregunta 4 Respuesta 5', 10)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (45, 'Encuesta 5 Pregunta 5 Respuesta 1', 50)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (45, 'Encuesta 5 Pregunta 5 Respuesta 2', 50)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (45, 'Encuesta 5 Pregunta 5 Respuesta 3', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (45, 'Encuesta 5 Pregunta 5 Respuesta 4', 20)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (45, 'Encuesta 5 Pregunta 5 Respuesta 5', 10)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (46, 'Encuesta 5 Pregunta 6 Respuesta 1', 60)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (46, 'Encuesta 5 Pregunta 6 Respuesta 2', 60)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (46, 'Encuesta 5 Pregunta 6 Respuesta 3', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (46, 'Encuesta 5 Pregunta 6 Respuesta 4', 20)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (46, 'Encuesta 5 Pregunta 6 Respuesta 5', 10)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (47, 'Encuesta 5 Pregunta 7 Respuesta 1', 70)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (47, 'Encuesta 5 Pregunta 7 Respuesta 2', 70)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (47, 'Encuesta 5 Pregunta 7 Respuesta 3', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (47, 'Encuesta 5 Pregunta 7 Respuesta 4', 20)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (47, 'Encuesta 5 Pregunta 7 Respuesta 5', 10)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (48, 'Encuesta 5 Pregunta 8 Respuesta 1', 80)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (48, 'Encuesta 5 Pregunta 8 Respuesta 2', 80)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (48, 'Encuesta 5 Pregunta 8 Respuesta 3', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (48, 'Encuesta 5 Pregunta 8 Respuesta 4', 20)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (48, 'Encuesta 5 Pregunta 8 Respuesta 5', 10)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (49, 'Encuesta 5 Pregunta 9 Respuesta 1', 90)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (49, 'Encuesta 5 Pregunta 9 Respuesta 2', 90)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (49, 'Encuesta 5 Pregunta 9 Respuesta 3', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (49, 'Encuesta 5 Pregunta 9 Respuesta 4', 20)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (49, 'Encuesta 5 Pregunta 9 Respuesta 5', 10)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (50, 'Encuesta 5 Pregunta 10 Respuesta 1', 100)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (50, 'Encuesta 5 Pregunta 10 Respuesta 2', 100)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (50, 'Encuesta 5 Pregunta 10 Respuesta 3', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (50, 'Encuesta 5 Pregunta 10 Respuesta 4', 20)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (50, 'Encuesta 5 Pregunta 10 Respuesta 5', 10)
go


