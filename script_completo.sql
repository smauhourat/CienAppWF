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
insert into answer (IdQuestion, Respuesta, Puntaje) values (1, 'Celular', 40)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (1, 'Llaves', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (1, 'Billetera/Dinero', 15)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (1, 'Auriculares', 10)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (1, 'Pañuelitos', 5)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (2, 'Estomago', 40)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (2, 'Barriga', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (2, 'Zapan', 15)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (2, 'Abdomen', 10)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (2, 'Pancita', 5)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (3, 'Usar el celular', 40)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (3, 'Dormir', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (3, 'Escuchar musica', 15)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (3, 'Comer/beber', 10)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (3, 'Ir al free shop', 5)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (4, 'Pelotas', 40)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (4, 'Huesos', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (4, 'Peluches/Jueguetes', 15)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (4, 'Medias/Zapatillas', 10)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (4, 'Botellas', 5)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (5, 'Silla', 40)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (5, 'Mesa', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (5, 'Cama', 15)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (5, 'Sillón', 10)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (5, 'Escritorio', 5)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (6, 'Pizarron', 40)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (6, 'Profesores/as', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (6, 'Alumnos', 15)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (6, 'Bancos', 10)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (6, 'Utiles', 5)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (7, 'Papa Noel', 40)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (7, 'Ratón perez', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (7, 'Reyes magos', 15)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (7, 'Hada de los dientes', 10)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (7, 'Conejo de pascua', 5)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (8, 'Mudarse/Comprar casa', 40)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (8, 'Orientacion de estudio', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (8, 'Casarse', 15)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (8, 'Terminar una relacion', 10)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (8, 'Tener hijos', 5)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (9, 'Amor/Amorcito', 40)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (9, 'Bebe', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (9, 'Gordo/a', 15)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (9, 'Mi vida', 10)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (9, 'Mi cielo', 5)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (10, 'Violonchelo', 40)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (10, 'Guitarra', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (10, 'Piano', 15)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (10, 'Bateria', 10)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (10, 'Tuba', 5)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (11, 'Minecraft', 40)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (11, 'Mario Bros/Kart', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (11, 'Fifa', 15)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (11, 'GTA', 10)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (11, 'Roblox', 5)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (12, 'Latas con bebidas', 40)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (12, 'Huevos', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (12, 'Medialunas', 15)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (12, 'Empanadas', 10)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (12, 'Alfajores', 5)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (13, 'A caballo regalado no se le miran los dientes', 40)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (13, 'Perro que ladra no muerde', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (13, 'En boca cerrada no entran moscas', 15)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (13, 'Por la plata baila el mono', 10)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (13, 'El burro adelante para que no se espante', 5)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (14, 'Que muevan la bombilla', 40)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (14, 'Que no lo pase/Que tome solo', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (14, 'Que tarde mucho en tomarlo', 15)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (14, 'Que lo babe/Que lo escupa', 10)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (14, 'Que le ponga azúcar/edulcorante', 5)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (15, 'Colegio', 40)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (15, 'Biblioteca', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (15, 'Cine/Teatro', 15)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (15, 'Iglesia/Misa', 10)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (15, 'Hospital', 5)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (16, 'Libro', 40)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (16, 'Cursos/Clases', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (16, 'Cine/Entretenimiento', 15)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (16, 'Tarjetas', 10)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (16, 'Mapa/GPS', 5)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (17, 'Medico/Cirujano', 40)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (17, 'Dentista', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (17, 'Servicio de limpieza', 15)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (17, 'Albañil/Obrero', 10)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (17, 'Arquero', 5)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (18, 'Ropa sucia', 40)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (18, 'Posters', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (18, 'Computadora', 15)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (18, 'Álbum de figuritas', 10)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (18, 'Vasos', 5)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (19, 'Me las vas a pagar', 40)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (19, 'El que las hace las paga', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (19, 'Pagar con la misma moneda', 15)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (19, 'No me pagan lo suficiente', 10)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (19, 'El que rompe paga', 5)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (20, 'Estoy estudiando', 40)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (20, 'Me siento mal', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (20, 'Estoy cansado/a', 15)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (20, 'Más tarde lo hago', 10)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (20, 'Estoy ocupado/a', 5)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (21, 'Pelo', 40)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (21, 'Lápices/Lapiceras', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (21, 'Figuritas', 15)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (21, 'Plata', 10)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (21, 'Cartas', 5)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (22, 'Leonel Messi', 40)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (22, 'Ángel Di María (Fideo)', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (22, 'Julián Álvarez', 15)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (22, 'Rodrigo De Paul', 10)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (22, 'Emiliano Martínez (Dibu)', 5)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (23, 'Peter Pan/Tinkerbelle', 40)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (23, 'Cenicienta', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (23, 'Pinocho', 15)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (23, 'Barbie', 10)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (23, 'La Bella Durmiente', 5)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (24, 'Boliche', 40)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (24, 'Una cita', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (24, 'Una salida con amigos', 15)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (24, 'Colegio', 10)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (24, 'Medico', 5)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (25, 'Comida', 40)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (25, 'Luces de colores', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (25, 'Color rojo/verde', 15)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (25, 'Regalos', 10)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (25, 'Arboles', 5)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (26, 'Chapa', 40)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (26, 'Pirado', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (26, 'Fumado', 15)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (26, 'Chiflado', 10)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (26, 'Demente', 5)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (27, 'Mascotas', 40)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (27, 'Comida', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (27, 'Celular', 15)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (27, 'Canción', 10)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (27, 'Serie/Película', 5)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (28, 'Lleno/a', 40)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (28, 'Explotado/a', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (28, 'Gordo/a', 15)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (28, 'Repleto/a', 10)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (28, 'Satisfecho/a', 5)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (29, 'No te banco/Me caes mal', 40)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (29, 'Que se calle', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (29, 'Tiene mal olor', 15)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (29, 'Que te gusta', 10)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (29, 'Que es cornud@/Su pareja lo/a engaño', 5)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (30, 'Un beso', 40)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (30, 'Una carta', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (30, 'Flores', 15)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (30, 'Una canción', 10)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (30, 'Un dibujo', 5)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (31, 'Instagram', 40)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (31, 'TikTok', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (31, 'Whatsapp', 15)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (31, 'Twitter', 10)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (31, 'Spotify', 5)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (32, 'El inodoro', 40)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (32, 'Las paredes', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (32, 'El piso', 15)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (32, 'El horno', 10)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (32, 'Las puertas', 5)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (33, 'Vergüenza/Nervios', 40)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (33, 'Por la persona que le gusta', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (33, 'Quemadura', 15)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (33, 'Esta enojado/a', 10)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (33, 'Esta borracho/a', 5)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (34, 'Reggaetón', 40)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (34, 'Cumbia', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (34, 'Bachata', 15)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (34, 'Pop', 10)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (34, 'Cuarteto', 5)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (35, 'Fumar', 40)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (35, 'Golpear a alguien', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (35, 'Robar', 15)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (35, 'Romper el lugar', 10)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (35, 'Salir del aula sin permiso', 5)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (36, 'A la vuelta', 40)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (36, 'A x cuadras', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (36, 'En la esquina', 15)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (36, 'Nomas', 10)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (36, 'Cerca', 5)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (37, 'Personas/Borrach@s', 40)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (37, 'Luces', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (37, 'Alcohol', 15)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (37, 'Música', 10)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (37, 'DJ', 5)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (38, 'Joder', 40)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (38, 'Correr/Saltar', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (38, 'Gritar', 15)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (38, 'Molestar', 10)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (38, 'Llorar', 5)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (39, 'Decolorar', 40)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (39, 'Alisado', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (39, 'Tintura', 15)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (39, 'Queratina', 10)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (39, 'Plancha', 5)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (40, 'Zapatos', 40)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (40, 'Piso/alfombra', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (40, 'Ropa', 15)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (40, 'Pise mal/ se tropiece', 10)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (40, 'Otro/a modelo', 5)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (41, 'Comida', 40)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (41, 'El baño', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (41, 'Atención', 15)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (41, 'Vista', 10)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (41, 'Limpieza', 5)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (42, 'Ropa', 40)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (42, 'Tierra', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (42, 'Arena', 15)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (42, 'Papel', 10)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (42, 'Pelo', 5)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (43, 'Hacer un abanico con la mano', 40)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (43, 'Sacudir la ropa', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (43, 'Atar el pelo', 15)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (43, 'Resoplar', 10)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (43, 'Secar el sudor', 5)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (44, 'Cohete', 40)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (44, 'Espada', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (44, 'Lápiz/Lapicera', 15)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (44, 'Vela', 10)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (44, 'Dedo', 5)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (45, 'Vóley', 40)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (45, 'Futbol', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (45, 'Hockey', 15)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (45, 'Rugby', 10)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (45, 'Handball', 5)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (46, 'Esta roto', 40)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (46, 'Esta dibujado', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (46, 'No está vigente', 15)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (46, 'Está desgastado/viejo', 10)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (46, 'No es del país', 5)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (47, 'Sillón', 40)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (47, 'Transporte público', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (47, 'Piso', 15)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (47, 'Auto', 10)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (47, 'Colegio', 5)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (48, 'Se rompió', 40)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (48, 'No anda bien', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (48, 'Se lo robaron', 15)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (48, 'Se perdió', 10)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (48, 'No tiene espacio', 5)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (49, 'Es usado', 40)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (49, 'Se lo quiere sacar de encima', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (49, 'Es una estafa/ es robado', 15)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (49, 'Necesita la plata', 10)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (49, 'No conoce el precio real', 5)
go

insert into answer (IdQuestion, Respuesta, Puntaje) values (50, 'Cabeza de rodilla', 40)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (50, 'Tobogán de piojos', 30)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (50, 'Frente infinita', 15)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (50, 'Bola de cristal', 10)
go
insert into answer (IdQuestion, Respuesta, Puntaje) values (50, 'Foco de luz', 5)
go



