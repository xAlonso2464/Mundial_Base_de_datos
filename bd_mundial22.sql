-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-12-2023 a las 17:58:18
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_mundial22`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `definicionpenal`
--
-- Creación: 06-12-2023 a las 04:57:56
--

CREATE TABLE `definicionpenal` (
  `idPartido` tinyint(4) NOT NULL,
  `idJugador` smallint(6) NOT NULL,
  `turno` tinyint(3) UNSIGNED NOT NULL,
  `acierto` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadio`
--
-- Creación: 06-12-2023 a las 04:57:56
-- Última actualización: 06-12-2023 a las 06:37:42
--

CREATE TABLE `estadio` (
  `idEstadio` tinyint(4) NOT NULL,
  `nombre` varchar(40) DEFAULT NULL,
  `infoEstadio` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estadio`
--

INSERT INTO `estadio` (`idEstadio`, `nombre`, `infoEstadio`) VALUES
(1, 'Estadio de Lusail', 'Inagurado el 09-2022, tiene capacidad para 88.966 espectadores');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gol`
--
-- Creación: 06-12-2023 a las 04:57:56
--

CREATE TABLE `gol` (
  `idJugador` smallint(6) NOT NULL,
  `idPartido` tinyint(4) NOT NULL,
  `minuto` tinyint(3) UNSIGNED DEFAULT NULL,
  `enContra` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jugador`
--
-- Creación: 06-12-2023 a las 04:57:56
-- Última actualización: 06-12-2023 a las 06:37:20
--

CREATE TABLE `jugador` (
  `idJugador` smallint(6) NOT NULL,
  `idPais` tinyint(4) NOT NULL,
  `idPosicion` tinyint(4) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `apellido` varchar(20) NOT NULL,
  `nacimiento` date NOT NULL,
  `numCamiseta` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `jugador`
--

INSERT INTO `jugador` (`idJugador`, `idPais`, `idPosicion`, `nombre`, `apellido`, `nacimiento`, `numCamiseta`) VALUES
(1037, 1, 1, 'Franco', 'Armani', '1986-10-16', 1),
(1038, 1, 2, 'Juan', 'Foyth', '1998-01-12', 2),
(1039, 1, 2, 'Nicolás', 'Tagliafico', '1992-08-31', 3),
(1040, 1, 2, 'Gonzalo', 'Montiel', '1997-01-01', 4),
(1041, 1, 3, 'Leandro', 'Paredes', '1994-06-29', 5),
(1042, 1, 2, 'Germán', 'Pezzella', '1991-06-27', 6),
(1043, 1, 3, 'Rodrigo', 'De Paul', '1994-05-24', 7),
(1044, 1, 3, 'Marcos', 'Acuña', '1991-10-28', 8),
(1045, 1, 4, 'Julian', 'Alvarez', '2000-01-31', 9),
(1046, 1, 4, 'Lionel', 'Messi', '1987-06-24', 10),
(1047, 1, 4, 'Angel', 'Di Maria', '1988-02-14', 11),
(1048, 1, 1, 'Geronimo', 'Rulli', '1992-05-20', 12),
(1049, 1, 2, 'Cristian', 'Romero', '1998-04-27', 13),
(1050, 1, 3, 'Exequiel', 'Palacios', '1998-10-05', 14),
(1051, 1, 4, 'Angel', 'Correa', '1995-03-09', 15),
(1052, 1, 3, 'Thiago', 'Almada', '2001-04-26', 16),
(1053, 1, 3, 'Alejandro', 'Gomez', '1988-02-15', 17),
(1054, 1, 3, 'Guido', 'Rodriguez', '1994-04-12', 18),
(1055, 1, 2, 'Nicolas', 'Otamendi', '1988-02-12', 19),
(1056, 1, 3, 'Alexis', 'Mac Allister', '1998-12-24', 20),
(1057, 1, 4, 'Paulo', 'Dybala', '1993-11-15', 21),
(1058, 1, 4, 'Lautaro', 'Martínez', '1997-08-22', 22),
(1059, 1, 1, 'Emiliano', 'Martínez', '1992-09-02', 23),
(1060, 1, 3, 'Enzo', 'Fernandez', '2001-01-17', 24),
(1061, 1, 2, 'Lisandro', 'Martínez', '1998-01-18', 25),
(1062, 1, 2, 'Nahuel', 'Molina', '1998-04-06', 26),
(1063, 2, 1, 'Hugo', 'Lloris', '1986-12-26', 1),
(1064, 2, 1, 'Steve', 'Mandada', '1985-03-27', 16),
(1065, 2, 1, 'Alphonse ', 'Areola', '1993-02-26', 23),
(1066, 2, 2, 'Benjamin', 'Pavard', '1996-03-27', 2),
(1067, 2, 2, 'Axel', 'Disasi', '1998-03-10', 3),
(1068, 2, 2, 'Raphael', 'Varane', '1993-04-24', 4),
(1069, 2, 2, 'Dayot', 'Upamecano', '1998-10-26', 18),
(1070, 2, 2, 'Ibrahima', 'Konaté', '1996-03-27', 24),
(1071, 2, 2, 'William', 'Saliba', '2001-03-23', 17),
(1072, 2, 2, 'Jules', 'Koundé', '1998-11-11', 5),
(1073, 2, 2, 'Lucas', 'Hernandez', '1996-02-13', 21),
(1074, 2, 2, 'Theo', 'Hernandez', '1997-10-05', 22),
(1075, 2, 3, 'Aurelien', 'Tchouameni', '2000-01-26', 8),
(1076, 2, 3, 'Matteo', 'Guendouzi', '1999-04-13', 6),
(1077, 2, 3, 'Jordan', 'Veretout', '1993-02-28', 15),
(1078, 2, 3, 'Youssouf', 'Fofana', '1999-01-09', 13),
(1079, 2, 3, 'Adrien', 'Rabiot', '1995-04-02', 14),
(1080, 2, 3, 'Eduardo', 'Camavinga', '2002-11-09', 25),
(1081, 2, 4, 'Antoine', 'Griezmann', '1991-03-20', 7),
(1082, 2, 4, 'Oliver', 'Giroud', '1986-09-29', 9),
(1083, 2, 4, 'Kylian', 'Mbappe', '1998-12-19', 10),
(1084, 2, 4, 'Ousmane', 'Dembele', '1997-05-14', 11),
(1085, 2, 4, 'Randai', 'Kolo Muani', '1996-06-12', 12),
(1086, 2, 4, 'Kingsley', 'Coman', '1998-12-04', 20),
(1087, 2, 4, 'Marcus', 'Thuram', '1997-08-05', 26),
(1088, 3, 1, 'Marc-Andre', 'Ter stegen', '1992-04-30', 22),
(1089, 3, 1, 'Kevin', 'Trapp', '1990-07-08', 12),
(1090, 3, 1, 'Manuel', 'Neuer', '1986-03-27', 1),
(1091, 3, 2, 'Antonio', 'Ruediger', '1993-03-03', 2),
(1092, 3, 2, 'David', 'Raum', '1998-04-22', 3),
(1093, 3, 2, 'Matthias', 'Ginter', '1994-01-19', 4),
(1094, 3, 2, 'Thilo', 'Kehrer', '1996-09-21', 5),
(1095, 3, 2, 'Niklas', 'Suele', '1995-09-03', 15),
(1096, 3, 2, 'Lukas', 'Klostermann', '1996-06-03', 16),
(1097, 3, 2, 'Christian', 'Guenter', '1993-02-28', 20),
(1098, 3, 2, 'Nico', 'Schlotterbeck', '1999-12-01', 23),
(1099, 3, 2, 'Armel', 'Bella-Kotchap', '2001-12-11', 25),
(1100, 3, 3, 'Joshua', 'Kimmich', '1995-02-08', 6),
(1101, 3, 3, 'Leon', 'Goretzka', '1995-02-06', 8),
(1102, 3, 3, 'Mario', 'Goetze', '1992-06-03', 11),
(1103, 3, 3, 'Thomas', 'Mueller', '1983-09-13', 13),
(1104, 3, 3, 'Jamal', 'Musiala', '2003-02-26', 14),
(1105, 3, 3, 'Julian', 'Brandt', '1996-05-02', 17),
(1106, 3, 3, 'Jonas', 'Hofmann', '1992-07-12', 18),
(1107, 3, 3, 'Leroy', 'Sane', '1996-01-11', 19),
(1108, 3, 3, 'Ilkay', 'Guendogan', '1990-10-24', 21),
(1109, 3, 4, 'Kai', 'Havertz', '1999-06-11', 7),
(1110, 3, 4, 'Niclas', 'Fuellkrug', '1993-02-09', 9),
(1111, 3, 4, 'Serge', 'Gnabry', '1995-07-14', 10),
(1112, 3, 4, 'Karim', 'Adeyemi', '2002-01-18', 24),
(1113, 3, 4, 'Youssoufa', 'Moukoko', '2004-11-20', 26),
(1114, 4, 1, 'Mohammed', 'Alyami', '1997-08-14', 1),
(1115, 4, 1, 'Mohammed', 'Alowais', '1991-10-10', 21),
(1116, 4, 1, 'Nawaf', 'Alaqidi', '2000-05-10', 22),
(1117, 4, 2, 'Sultan', 'Alghannam', '1994-05-06', 2),
(1118, 4, 2, 'Abdullah', 'Madu', '1993-07-15', 3),
(1119, 4, 2, 'Abdulelah', 'Alamri', '1997-01-15', 4),
(1120, 4, 2, 'Ali', 'Albulayhi', '1989-11-21', 5),
(1121, 4, 2, 'Mohammed', 'Alburayk', '1992-09-15', 6),
(1122, 4, 2, 'Saud', 'Abdulhamid', '1999-07-18', 12),
(1123, 4, 2, 'Yasser', 'Alshahrani', '1992-05-25', 13),
(1124, 4, 2, 'Hassan', 'Altambakti', '1999-02-09', 17),
(1125, 4, 3, 'Salman', 'Alfaraj', '1989-08-01', 7),
(1126, 4, 3, 'Abdulelah', 'Almalki', '1994-10-11', 8),
(1127, 4, 3, 'Abdullah', 'Otayf', '1992-08-03', 14),
(1128, 4, 3, 'Ali', 'Alhassan', '1997-03-04', 15),
(1129, 4, 3, 'Sami', 'Alnaji', '1997-02-07', 16),
(1130, 4, 3, 'Nawaf', 'Al Abid', '1990-01-26', 18),
(1131, 4, 3, 'Mohamed', 'Kanno', '1994-09-22', 23),
(1132, 4, 3, 'Nasser', 'Aldawsari', '1998-12-19', 24),
(1133, 4, 3, 'Riyadh', 'Sharahili', '1993-04-29', 26),
(1134, 4, 4, 'Feras', 'Albrikan', '2000-05-14', 9),
(1135, 4, 4, 'Salem', 'Aldawsari', '1991-08-19', 10),
(1136, 4, 4, 'Saleh', 'Alshehri', '1993-11-01', 11),
(1137, 4, 4, 'Hatan', 'Bahbri', '1992-07-16', 19),
(1138, 4, 4, 'Abdulrahman', 'Alobud', '1995-06-01', 20),
(1139, 4, 4, 'Haitham', 'Asiri', '2001-03-25', 25),
(1140, 5, 1, 'Mathew', 'Ryan', '1992-04-08', 1),
(1141, 5, 1, 'Andrew', 'Redamyne', '1989-01-13', 12),
(1142, 5, 1, 'Danny', 'Vukovic', '1985-03-27', 18),
(1143, 5, 2, 'Milos', 'Degenek', '1994-04-28', 2),
(1144, 5, 2, 'Nathaniel', 'Atkinson', '1999-06-13', 3),
(1145, 5, 2, 'Kye', 'Rowles', '1998-06-24', 4),
(1146, 5, 2, 'Fran', 'Karacic', '1996-05-12', 5),
(1147, 5, 2, 'Bailey', 'Wright', '1992-07-28', 8),
(1148, 5, 2, 'Aziz', 'Behich', '1990-12-16', 16),
(1149, 5, 2, 'Harry', 'Souttar', '0199-10-22', 19),
(1150, 5, 2, 'Thomas', 'Deng', '1997-03-20', 20),
(1151, 5, 2, 'Joel', 'King', '2000-10-30', 24),
(1152, 5, 4, 'Marco', 'Tilio', '2001-08-23', 6),
(1153, 5, 4, 'Mathew', 'Leckie', '1991-02-04', 7),
(1154, 5, 4, 'Jamie', 'Maclaren', '1993-07-29', 9),
(1155, 5, 4, 'Awer', 'Mabil', '1995-09-15', 11),
(1156, 5, 4, 'Mitchell', 'Duke', '1991-01-18', 15),
(1157, 5, 4, 'Garang ', 'Kuol', '2004-09-15', 21),
(1158, 5, 4, 'Craig ', 'Goodwin', '1991-12-16', 23),
(1159, 5, 4, 'Jason ', 'Cummings', '1995-08-01', 25),
(1160, 5, 3, 'Ajdin ', 'Hrustic', '1996-07-11', 10),
(1161, 5, 3, 'Aaron ', 'Mooy', '1990-09-15', 13),
(1162, 5, 3, 'Riley ', 'McGree', '1998-11-02', 14),
(1163, 5, 3, 'Cameron ', 'Devlin', '1998-06-07', 17),
(1164, 5, 3, 'Jackson ', 'Irvine', '1993-03-07', 22),
(1165, 5, 3, 'Keanu ', 'Baccus', '1998-06-07', 26),
(1166, 9, 1, 'Dayne', 'St. Clair', '1997-05-09', 1),
(1167, 9, 1, 'James', 'Pantemis', '1997-02-21', 16),
(1168, 9, 1, 'Milan', 'Borjan', '1987-10-23', 18),
(1169, 9, 2, 'Alistair', 'Johnston', '1998-10-08', 2),
(1170, 9, 2, 'Sam', 'Adekugbe', '1995-01-16', 3),
(1171, 9, 2, 'Kamal', 'Miller', '1997-05-16', 4),
(1172, 9, 2, 'Steven', 'Vitoria', '1987-01-11', 5),
(1173, 9, 2, 'Richie', 'Laryea', '1995-01-07', 22),
(1174, 25, 2, 'Derek', 'Cornelius', '1997-11-25', 4),
(1175, 9, 2, 'Joel', 'Waterman', '1996-01-24', 26),
(1176, 9, 3, 'Samuel', 'Piette', '1994-11-12', 6),
(1177, 9, 3, 'Stephen', 'Eustaquio', '1996-12-21', 7),
(1178, 9, 3, 'Liam', 'Fraser', '1998-02-13', 8),
(1179, 9, 3, 'Junior', 'Hoilett', '1990-06-05', 10),
(1180, 9, 3, 'Atiba', 'Hutchinson', '1983-02-08', 13),
(1181, 9, 3, 'Mark-Anthony', 'Kaye', '1994-12-02', 14),
(1182, 9, 3, 'Ismael', 'Kone', '2002-06-16', 15),
(1183, 9, 3, 'Jonathan', 'Osorio', '1992-06-12', 21),
(1184, 9, 3, 'Liam', 'Millar', '1999-09-27', 23),
(1185, 9, 3, 'David', 'Wotherspoon', '1990-01-16', 24),
(1186, 9, 4, 'Lucas', 'Cavallini', '1992-12-28', 9),
(1187, 9, 4, 'Tajon', 'Buchanan', '1999-02-08', 11),
(1188, 9, 4, 'Ike', 'Ugbo', '1998-09-21', 12),
(1189, 9, 4, 'Cyle', 'Larin', '1995-04-17', 17),
(1190, 9, 4, 'Alphonso', 'Davies', '2000-11-02', 19),
(1191, 9, 4, 'Jonathan', 'David', '2000-01-14', 20),
(1192, 10, 1, 'Keylor', 'Navas', '1986-12-15', 1),
(1193, 10, 1, 'Esteban', 'Alvarado', '1989-04-28', 18),
(1194, 10, 1, 'Patrick', 'Sequeira', '1999-03-01', 23),
(1195, 10, 3, 'Daniel', 'Chacon', '2001-04-11', 2),
(1196, 10, 3, 'Celso', 'Borges', '1988-05-27', 5),
(1197, 10, 3, 'Jewison', 'Bennette', '2004-06-15', 9),
(1198, 10, 3, 'Bryan', 'Ruiz', '1985-08-18', 10),
(1199, 10, 3, 'Gerson', 'Torres', '1997-08-28', 13),
(1200, 10, 3, 'Youstin', 'Salas', '1996-06-17', 14),
(1201, 10, 3, 'Yeltsin', 'Tejeda', '1992-03-17', 17),
(1202, 10, 3, 'Brandon', 'Aguilera', '2003-06-28', 20),
(1203, 10, 3, 'Douglas', 'Lopez', '1998-09-21', 21),
(1204, 10, 3, 'Roan', 'Wilson', '2002-05-01', 24),
(1205, 10, 3, 'Anthony', 'Hernandez', '1998-07-22', 25),
(1206, 10, 3, 'Alvaro', 'Zamora', '2002-03-09', 26),
(1207, 10, 2, 'Juan', 'Vargas', '1995-06-06', 3),
(1208, 10, 2, 'Keysher', 'Fuller', '1994-07-12', 4),
(1209, 10, 2, 'Oscar', 'Duarte', '1989-06-03', 6),
(1210, 10, 2, 'Bryan', 'Oviedo', '1990-02-18', 8),
(1211, 10, 2, 'Francisco', 'Calvo', '1992-07-08', 15),
(1212, 10, 2, 'Carlos', 'Martinez', '1999-03-30', 16),
(1213, 10, 2, 'Kendall', 'Watson', '1998-01-01', 19),
(1214, 10, 2, 'Ronald', 'Matarrita', '1994-07-09', 22),
(1215, 10, 4, 'Anthony', 'Contreras', '2000-01-29', 7),
(1216, 10, 4, 'Johan', 'Venegas', '1988-11-27', 11),
(1217, 10, 4, 'Joel', 'Campbell', '1992-06-26', 12),
(1218, 8, 1, 'Brady', 'Ngapandouetnbu', '2003-04-12', 1),
(1219, 8, 1, 'Devis', 'Epassy', '1993-02-02', 16),
(1220, 8, 1, 'Andre', 'Onana', '1996-04-02', 23),
(1221, 8, 2, 'Jerome', 'Ngom Mbekeli', '1998-09-30', 2),
(1222, 8, 2, 'Nicolas', 'Nkoulou', '1990-03-27', 3),
(1223, 8, 2, 'Christopher', 'Wooh', '2001-09-18', 4),
(1224, 8, 2, 'Olivier', 'Mbaizo', '1997-08-15', 17),
(1225, 8, 2, 'Collins', 'Fai', '1992-08-13', 19),
(1226, 8, 2, 'Jean-Charles', 'Castelletto', '1995-01-26', 21),
(1227, 8, 2, 'Nouhou', 'Tolo', '1997-06-23', 25),
(1228, 8, 2, 'Enzo', 'Ebosse', '1999-03-11', 24),
(1229, 8, 3, 'Gael', 'Ondoua', '1995-11-04', 5),
(1230, 8, 3, 'Georges-Kevin', 'Nkoudou', '1995-02-13', 7),
(1231, 8, 3, 'Andre-Frank', 'Zambo Anguissa', '1995-11-16', 8),
(1232, 8, 3, 'Samuel', 'Gouet', '1997-12-14', 14),
(1233, 8, 3, 'Pierre', 'Kunde', '1995-07-26', 15),
(1234, 8, 3, 'Martin', 'Hongla', '1998-03-16', 18),
(1235, 8, 3, 'Olivier', 'Ntcham', '1996-02-09', 22),
(1236, 8, 3, 'Souaibou', 'Marou', '2000-12-03', 26),
(1237, 8, 4, 'Nicolas', 'Ngamaleu', '1994-07-09', 6),
(1238, 8, 4, 'Jean-Pierre', 'Nsame', '1993-05-01', 9),
(1239, 8, 4, 'Vincent', 'Aboubakar', '1992-01-22', 10),
(1240, 8, 4, 'Christian', 'Bassogog', '1995-10-18', 11),
(1241, 8, 4, 'Karl', 'Toko Ekambi', '1992-09-14', 12),
(1242, 8, 4, 'Eric', 'Maxim Choupo-Moting', '1989-03-23', 13),
(1243, 8, 4, 'Bryan', 'Mbeumo', '1999-08-07', 20),
(1244, 11, 1, 'Dominik', 'Livakovic', '1995-01-09', 1),
(1245, 11, 1, 'Ivo', 'Grbic', '1996-01-18', 12),
(1246, 11, 1, 'Ivica', 'Ivusic', '1995-02-01', 23),
(1247, 11, 2, 'Josip', 'Stanisic', '2000-04-02', 2),
(1248, 11, 2, 'Borna', 'Barisic', '1992-11-10', 3),
(1249, 11, 2, 'Martin', 'Erlic', '1998-01-24', 5),
(1250, 11, 2, 'Dejan', 'Lovren', '1989-07-05', 6),
(1251, 11, 2, 'Borna', 'Sosa', '1998-01-21', 19),
(1252, 11, 2, 'Josko', 'Gvardiol', '2002-01-23', 20),
(1253, 11, 2, 'Damagoj', 'Vida', '1989-04-29', 21),
(1254, 11, 2, 'Josip', 'Juranovic', '1995-08-16', 22),
(1255, 11, 2, 'Josip', 'Sutalo', '2000-02-28', 24),
(1256, 11, 3, 'Lovro', 'Majer', '1998-01-17', 7),
(1257, 11, 3, 'Mateo', 'Kovacic', '1994-05-06', 8),
(1258, 11, 3, 'Luka', 'Modric', '1985-09-09', 10),
(1259, 11, 3, 'Marcelo', 'Brozovic', '1992-11-16', 11),
(1260, 11, 3, 'Nikola', 'Vlasic', '1997-10-04', 13),
(1261, 11, 3, 'Mario', 'Pasalic', '1995-02-09', 15),
(1262, 11, 3, 'Luka', 'Sucic', '2002-09-08', 25),
(1263, 11, 3, 'Kristijan', 'Jakic', '1997-05-14', 26),
(1264, 11, 4, 'Ivan', 'Perisic', '1989-02-02', 4),
(1265, 11, 4, 'Andrej', 'Kramaric', '1991-06-19', 9),
(1266, 11, 4, 'Marko', 'Livaja', '1993-08-26', 14),
(1267, 11, 4, 'Bruno', 'Petkovic', '1994-09-16', 16),
(1268, 11, 4, 'Ante', 'Budimir', '1991-07-22', 17),
(1269, 11, 4, 'Mislav', 'Orsic', '1992-12-29', 18),
(1270, 12, 1, 'Kasper', 'Schmeichel', '1986-11-05', 1),
(1271, 12, 1, 'Oliver', 'Christensen', '1999-03-22', 16),
(1272, 12, 1, 'Frederik', 'Ronnow', '1992-08-04', 22),
(1273, 12, 2, 'Joachim', 'Andersen', '1996-05-31', 2),
(1274, 12, 2, 'Victor', 'Nelsson', '1998-10-14', 3),
(1275, 12, 2, 'Simon', 'kjaer', '1989-03-26', 4),
(1276, 12, 2, 'Joakim', 'Maehle', '1997-05-20', 5),
(1277, 12, 2, 'Andreas', 'Christensen', '1996-04-10', 6),
(1278, 12, 2, 'Ramus', 'Kristensen', '1997-07-11', 13),
(1279, 12, 2, 'Jeans', 'Stryger Larsen', '1991-02-21', 17),
(1280, 12, 2, 'Daniel', 'Wass', '1989-05-31', 18),
(1281, 12, 2, 'Alexander', 'Bah', '1997-12-09', 26),
(1282, 12, 3, 'Mathias', 'Jensen', '1996-01-01', 7),
(1283, 12, 3, 'Thomas', 'Delaney', '1991-09-03', 8),
(1284, 12, 3, 'Christian', 'Eriksen', '1992-02-14', 10),
(1285, 12, 3, 'Andreas', 'Skov Olsen', '1999-12-29', 11),
(1286, 12, 3, 'Mikkel', 'Damsgaard', '2000-07-03', 14),
(1287, 12, 3, 'Christian', 'Norgaard', '1994-03-10', 15),
(1288, 12, 3, 'Perre-Emile', 'Hojbjerg', '1995-08-05', 23),
(1289, 12, 3, 'Robert', 'Skov', '1996-05-20', 24),
(1290, 12, 3, 'Jesper', 'Lindstrom', '2000-02-29', 25),
(1291, 12, 4, 'Martin', 'Braithwaite', '1991-06-05', 9),
(1292, 12, 4, 'Kasper', 'Dolberg', '1997-10-06', 12),
(1293, 12, 4, 'Jonas', 'Wind', '1999-02-07', 19),
(1294, 12, 4, 'Yussuf', 'Yurary Poulsen', '1994-06-15', 20),
(1295, 12, 4, 'Andreas', 'Cornelius', '1993-03-16', 21),
(1296, 13, 1, 'Hernán', 'Galindez', '1987-03-30', 1),
(1297, 13, 1, 'Moises', 'Ramírez', '2000-09-09', 12),
(1298, 13, 2, 'Alexander', 'Domínguez', '1987-06-05', 22),
(1299, 13, 2, 'Félix', 'Torres', '1997-01-11', 2),
(1300, 13, 2, 'Piero', 'Hincapie', '2002-01-09', 3),
(1301, 13, 2, 'Robert', 'Arboleda', '1991-10-22', 4),
(1302, 13, 2, 'William', 'Pacho', '2001-10-16', 6),
(1303, 13, 2, 'Pervis', 'Estupiñán', '1998-01-21', 7),
(1304, 13, 2, 'Xavier', 'Arreaga', '1994-09-28', 14),
(1305, 13, 2, 'Angelo', 'Preciado', '1998-02-18', 17),
(1306, 13, 2, 'Diego', 'Palacios', '1999-07-12', 18),
(1307, 13, 2, 'Jackson', 'Porozo', '2000-08-04', 25),
(1308, 13, 3, 'José', 'Cifuentes', '1999-03-12', 5),
(1309, 13, 3, 'Carlos', 'Gruezo', '1995-04-19', 8),
(1310, 13, 3, 'Eduar', 'Preciado', '1994-07-28', 9),
(1311, 13, 3, 'Romario', 'Ibarra', '1994-09-24', 10),
(1312, 13, 3, 'Angel', 'Mena', '1988-01-21', 15),
(1313, 13, 3, 'Jeremy', 'Sarmiento', '2002-06-16', 16),
(1314, 13, 3, 'Gonzalo', 'Plata', '2000-11-01', 19),
(1315, 13, 3, 'Jhegson', 'Méndez', '1997-04-26', 20),
(1316, 13, 3, 'Alan', 'Franco', '1998-08-21', 21),
(1317, 13, 4, 'Moisés', 'Caicedo', '2001-11-02', 23),
(1318, 13, 4, 'Michael', 'Estrada', '1996-04-07', 11),
(1319, 13, 4, 'Enner', 'Valencia', '1989-11-04', 13),
(1320, 13, 4, 'Djorkaeff', 'Reasco', '1999-01-18', 24),
(1321, 13, 4, 'Kevin', 'Rodriguez', '2000-03-04', 26),
(1322, 16, 1, 'Wayne', 'Hennessey', '1987-01-24', 1),
(1323, 16, 1, 'Danny', 'Ward', '1993-06-22', 12),
(1324, 16, 1, 'Adam', 'Davies', '1992-07-17', 21),
(1325, 16, 2, 'Chris', 'Gunter', '1989-07-21', 2),
(1326, 16, 2, 'Neco', 'williams', '2001-04-13', 3),
(1327, 16, 2, 'Ben', 'Davies', '1993-04-24', 4),
(1328, 16, 2, 'Chris', 'Mepham', '1997-11-05', 5),
(1329, 16, 2, 'Joe', 'Rodon', '1997-10-22', 6),
(1330, 16, 2, 'Connor', 'Robert', '1995-09-23', 14),
(1331, 16, 2, 'Ethan', 'Ampadu', '2000-09-14', 15),
(1332, 16, 2, 'Tom', 'Lokyer', '1994-12-03', 17),
(1333, 16, 2, 'Ben', 'Cabango', '2000-05-30', 24),
(1334, 16, 2, 'Rubin', 'Colwill', '2002-04-27', 25),
(1335, 16, 3, 'Joe', 'Allen', '1990-03-14', 7),
(1336, 16, 3, 'Harry', 'Wilsond', '1997-03-22', 8),
(1337, 16, 3, 'Aaron', 'Ramsey', '1990-12-26', 10),
(1338, 16, 3, 'Joseff', 'Morrell', '1997-01-03', 16),
(1339, 16, 3, 'Jonathan', 'Williams', '1993-10-09', 18),
(1340, 16, 3, 'Sorba', 'Thomas', '1999-01-23', 22),
(1341, 16, 3, 'Dylan', 'Levitt', '2000-11-17', 23),
(1342, 16, 3, 'Matt', 'Smith', '1999-11-22', 26),
(1343, 16, 4, 'Brennan', 'Johnson', '2001-05-23', 9),
(1344, 16, 4, 'Gareth', 'Bale', '1989-07-16', 11),
(1345, 16, 4, 'Keiffer', 'Moore', '1992-08-08', 13),
(1346, 16, 4, 'Mark', 'Harris', '1998-12-29', 19),
(1347, 16, 4, 'Daniel', 'James', '1997-11-10', 20),
(1348, 17, 1, 'Manaf', 'Nurudeen', '1999-02-08', 16),
(1349, 17, 1, 'Lawrence', 'Ati-Zigi', '1996-11-29', 1),
(1350, 17, 1, 'Ibrahim', 'Danlad', '2002-12-02', 12),
(1351, 17, 2, 'Tariq', 'Lamptey', '2000-09-30', 2),
(1352, 17, 2, 'Denis', 'Odoi', '1988-05-27', 3),
(1353, 17, 2, 'Mohammed', 'Salisu', '1999-04-17', 4),
(1354, 17, 2, 'Gideon', 'Mensah', '1998-06-18', 14),
(1355, 17, 2, 'Joseph', 'Aidoo', '1995-09-29', 15),
(1356, 17, 2, 'Baba', 'Rahman', '1994-07-02', 17),
(1357, 17, 2, 'Daniel', 'Amartey', '1994-12-21', 18),
(1358, 17, 2, 'Alexander', 'Djiku', '1994-08-09', 23),
(1359, 17, 2, 'Alidu', 'Seidu', '2000-06-04', 26),
(1360, 17, 3, 'Thomas', 'Partey', '1993-06-13', 5),
(1361, 17, 3, 'Elisha', 'Owusu', '1997-11-07', 6),
(1362, 17, 3, 'Daniel-Kofi', 'Kyereh', '1996-03-08', 8),
(1363, 17, 4, 'André', 'Ayew', '1989-12-17', 10),
(1364, 17, 4, 'Jordan', 'Ayew', '1991-09-11', 9),
(1365, 17, 3, 'Daniel', 'Afriyie', '2001-06-26', 13),
(1366, 17, 3, 'Mohammed', 'Kudus', '2000-08-02', 20),
(1367, 17, 3, 'Salis', 'Samed', '2000-03-26', 21),
(1368, 17, 3, 'Abdul', 'Issahaku', '2004-03-08', 7),
(1369, 17, 3, 'Osman ', 'Bukari', '1998-12-13', 11),
(1370, 17, 4, 'Iñaki', 'Williams', '1994-06-15', 19),
(1371, 17, 3, 'Kamaldeen', 'Sulemana', '2002-02-15', 22),
(1372, 17, 3, 'Kamal', 'Sowah', '2000-01-09', 24),
(1373, 17, 4, 'Antoine', 'Semenyo', '2000-01-07', 25),
(1374, 18, 1, 'Jordan', 'Pickford', '1994-03-07', 1),
(1375, 18, 1, 'Nick', 'Pope', '1992-04-19', 13),
(1376, 18, 1, 'Aaron', 'Ramsdale', '1998-05-14', 23),
(1377, 18, 2, 'Kyle', 'Walker', '1990-05-28', 2),
(1378, 18, 2, 'Luke', 'Shaw', '1995-07-12', 3),
(1379, 18, 2, 'John', 'Stones', '1994-05-28', 5),
(1380, 18, 2, 'Harry', 'Maguire', '1993-03-05', 6),
(1381, 18, 2, 'Kieran', 'Trippier', '1990-09-19', 12),
(1382, 18, 2, 'Eric', 'Dier', '1994-01-15', 15),
(1383, 18, 2, 'Conor', 'Coady', '1993-02-25', 16),
(1384, 18, 2, 'Trent', 'Alexander-Arnold', '1998-10-07', 18),
(1385, 18, 2, 'Ben', 'White', '1997-10-08', 21),
(1386, 18, 3, 'Declan', 'Rice', '1999-01-14', 4),
(1387, 18, 3, 'Jordan', 'Henderson', '1990-06-17', 8),
(1388, 18, 3, 'Kalvin', 'Phillips', '1995-12-02', 14),
(1389, 18, 3, 'Mason', 'Mount', '1999-01-10', 19),
(1390, 18, 3, 'Phil', 'Foden', '2000-05-28', 20),
(1391, 18, 3, 'Jude', 'Bellingham', '2003-06-29', 22),
(1392, 18, 3, 'James', 'Maddison', '1996-11-23', 25),
(1393, 18, 3, 'Conor', 'Gallagher', '2000-02-06', 26),
(1394, 18, 4, 'Jack', 'Grealish', '1995-09-10', 7),
(1395, 18, 4, 'Harry', 'Kane', '1993-07-28', 9),
(1396, 18, 4, 'Raheem', 'Sterling', '1994-12-08', 10),
(1397, 18, 4, 'Marcus', 'Rashford', '1997-10-31', 11),
(1398, 18, 4, 'Bukayo', 'Saka', '2001-09-05', 17),
(1399, 18, 4, 'Callum', 'Wilson', '1992-02-27', 24),
(1400, 20, 1, 'Eiji', 'Kawashima', '1983-03-20', 1),
(1401, 20, 1, 'Shuichi', 'Gonda', '1989-03-03', 12),
(1402, 20, 1, 'Daniel', 'Schmidt', '1992-02-03', 23),
(1403, 20, 2, 'Miki', 'Yamane', '1993-12-22', 2),
(1404, 20, 2, 'Shogo', 'Taniguchi', '1991-07-15', 3),
(1405, 20, 2, 'Kou', 'Itakura', '1997-01-27', 4),
(1406, 20, 2, 'Yuto', 'Nagatomo', '1986-09-12', 5),
(1407, 20, 2, 'Takehiro', 'Tomiyasu', '1998-11-05', 16),
(1408, 20, 2, 'Hiroki', 'Sakai', '1990-04-12', 19),
(1409, 20, 2, 'Maya', 'Yoshida', '1988-08-24', 22),
(1410, 20, 2, 'Hiroki', 'Ito', '1999-05-12', 26),
(1411, 20, 3, 'Wataru', 'Endo', '1993-02-09', 6),
(1412, 20, 3, 'Goku', 'Shibasaki', '1992-05-28', 7),
(1413, 20, 3, 'Ritsu', 'Doan', '1998-06-16', 8),
(1414, 20, 3, 'Kaoru', 'Mitoma', '1997-05-20', 9),
(1415, 20, 3, 'Takumi', 'Minamino', '1995-01-16', 10),
(1416, 20, 3, 'Takefusa', 'Kubo', '2001-06-04', 11),
(1417, 20, 3, 'Hidemasa', 'Morita', '1995-05-10', 13),
(1418, 20, 3, 'Junya', 'Ito', '1993-03-09', 14),
(1419, 20, 3, 'Daichi', 'Kamada', '1996-08-05', 15),
(1420, 20, 3, 'Ao', 'Tanaka', '1998-09-10', 17),
(1421, 20, 3, 'Yuki', 'Soma', '1997-02-25', 24),
(1422, 20, 4, 'Takuma', 'Asano', '1994-11-10', 18),
(1423, 20, 4, 'Shuto', 'Machino', '1999-09-30', 20),
(1424, 20, 4, 'Ayase', 'Ueada', '1998-08-28', 21),
(1425, 20, 4, 'Daizen', 'Maeda', '1997-10-20', 25),
(1426, 22, 1, 'Yassine', 'Bounou', '1991-04-05', 1),
(1427, 22, 1, 'Monir', 'El Kajoui', '1989-05-10', 12),
(1428, 22, 1, 'Ahmed', 'Tagnaouti', '1996-04-05', 22),
(1429, 22, 2, 'Achraf', 'Hakimi', '1998-11-04', 2),
(1430, 22, 2, 'Noussair', 'Mazraoui', '1997-11-14', 3),
(1431, 22, 2, 'Nayef', 'Aguerd', '1996-03-30', 4),
(1432, 22, 2, 'Romain', 'Saiss', '1990-03-26', 5),
(1433, 22, 2, 'Jawad', 'El Yamiq', '1992-02-29', 6),
(1434, 22, 2, 'Achraf', 'Dari', '1999-05-06', 13),
(1435, 22, 2, 'Badr', 'Benoun', '1993-09-30', 14),
(1436, 22, 2, 'Yahya', 'Attiat-Allah', '1995-03-02', 15),
(1437, 22, 3, 'Sofyan', 'Amrabat', '1996-08-21', 7),
(1438, 22, 3, 'Hakim', 'Ziyech', '1993-03-19', 8),
(1439, 22, 3, 'Azzedine', 'Ounahi', '2000-04-19', 9),
(1440, 22, 3, 'Anass', 'Zaroury', '2000-11-07', 10),
(1441, 22, 3, 'Ilias', 'Chair', '1997-10-30', 11),
(1442, 22, 3, 'Zakaria', 'Aboukhlal', '2000-02-18', 16),
(1443, 22, 3, 'Selim', 'Amallah', '1996-11-15', 17),
(1444, 22, 3, 'Sofiane', 'Boufal', '1993-09-17', 18),
(1445, 22, 3, 'Bilal', 'El Khannouss', '1999-06-02', 19),
(1446, 22, 3, 'Yahya', 'Jabrane', '2004-05-10', 20),
(1447, 22, 4, 'Abderrazak', 'Hamdallah', '1990-12-17', 21),
(1448, 22, 4, 'Abdelhamid', 'Sabiri', '1996-11-28', 23),
(1449, 22, 4, 'Abde', 'Ezzalzouli', '2001-12-17', 24),
(1450, 22, 4, 'Youssef', 'En Nesiry', '1997-06-01', 25),
(1451, 22, 4, 'Walid', 'Cheddira', '1998-01-22', 26),
(1452, 23, 1, 'Alfredo', 'Talavera', '1982-08-18', 1),
(1453, 23, 1, 'Rodolfo', 'Cota', '1983-07-03', 12),
(1454, 23, 1, 'Guillermo', 'Ochoa', '1985-07-13', 13),
(1455, 23, 2, 'Nestor', 'Aurajo', '1991-08-29', 2),
(1456, 23, 2, 'Cesar', 'Montes', '1997-02-24', 3),
(1457, 23, 2, 'Edson', 'Alvarez', '1997-10-24', 4),
(1458, 23, 2, 'Johan', 'Vasquez', '1998-10-22', 5),
(1459, 23, 2, 'Gerardo', 'Arteaga', '1998-09-07', 6),
(1460, 23, 2, 'Hector', 'Moreno', '1988-01-17', 15),
(1461, 23, 2, 'Jorge', 'Sanchez', '1997-12-10', 19),
(1462, 23, 2, 'Jesus', 'Gallardo', '1994-08-15', 23),
(1463, 23, 2, 'Kevin', 'Alvarez', '1999-01-15', 26),
(1464, 23, 3, 'Luis', 'Romo', '1995-06-05', 7),
(1465, 23, 3, 'Carlos', 'Rodriguez', '1997-01-03', 8),
(1466, 23, 3, 'Erick', 'Gutierrez', '1995-06-15', 14),
(1467, 23, 3, 'Hector', 'Herrera', '1990-04-19', 16),
(1468, 23, 3, 'Andres', 'Guardado', '1986-09-28', 18),
(1469, 23, 3, 'Luis', 'Chavez', '1996-01-15', 24),
(1470, 23, 4, 'Raul', 'Jimenez', '1991-05-05', 9),
(1471, 23, 4, 'Alexis', 'Vega', '1997-11-25', 10),
(1472, 23, 4, 'Rogelio', 'Funes Mori', '1991-03-05', 11),
(1473, 23, 4, 'Orbelin', 'Pineda', '1996-03-24', 17),
(1474, 23, 4, 'Henry', 'Martin', '1992-11-18', 20),
(1475, 23, 4, 'Uriel', 'AntUna', '1997-08-21', 21),
(1476, 23, 4, 'Hirving', 'Lozano', '1995-07-30', 22),
(1477, 23, 4, 'Roberto', 'Alvarado', '1998-09-07', 25),
(1478, 26, 1, 'Rui', 'Patricio', '1988-02-14', 1),
(1479, 26, 1, 'Diogo', 'Costa', '1999-09-19', 22),
(1480, 26, 1, 'Jose', 'Sa', '1993-01-16', 12),
(1481, 26, 2, 'Képler Laverán', 'Lima Ferreira', '1983-02-26', 3),
(1482, 26, 2, 'Ruben', 'Dias', '1997-05-14', 4),
(1483, 26, 2, 'Joao', 'Cancelo', '1994-05-27', 20),
(1484, 26, 2, 'Nuno', 'Mendes', '2002-06-19', 19),
(1485, 26, 2, 'Matheus', 'Nunes', '1998-08-26', 23),
(1486, 26, 2, 'Danilo', 'Pereira', '1991-09-08', 13),
(1487, 26, 2, 'Diogo', 'Dalot', '1999-04-17', 2),
(1488, 26, 2, 'Raphael', 'Guerreiro', '1993-12-21', 5),
(1489, 26, 2, 'Antonio', 'Silva', '2003-10-29', 24),
(1490, 26, 3, 'Joao', 'Mario', '2002-06-19', 17),
(1491, 26, 3, 'Otavio', 'da Silva Monteiro', '1995-02-08', 35),
(1492, 26, 3, 'William', 'Carvalho', '1992-04-06', 14),
(1493, 26, 3, 'Ruben', 'Neves', '1997-03-13', 18),
(1494, 26, 3, 'Vítor Machado', 'Ferreira', '2000-02-13', 11),
(1495, 26, 3, 'Bruno', 'Fernandes', '1994-09-08', 8),
(1496, 26, 4, 'Joao', 'Felix', '1999-11-10', 25),
(1497, 26, 4, 'Cristiano', 'Ronaldo', '1985-02-05', 7),
(1498, 26, 4, 'Bernardo', 'Silva', '1994-08-09', 10),
(1499, 26, 4, 'Andre', 'Silva', '1995-11-06', 9),
(1500, 26, 4, 'Ricardo', 'Horta', '1994-09-14', 21),
(1501, 26, 4, 'Rafael', 'Leao', '1999-06-09', 15),
(1502, 26, 4, 'Goncalo', 'Ramos', '2001-06-10', 26),
(1503, 14, 1, 'Philipp', 'Koehn', '1998-04-02', 24),
(1504, 14, 3, 'Fabian', 'Rieder', '2002-02-16', 25),
(1505, 14, 3, 'Ardon', 'Jashari', '2002-07-30', 26),
(1506, 14, 1, 'Gregor', 'Kobel', '1997-12-06', 21),
(1507, 14, 1, 'Jonas', 'Omlin', '1994-01-10', 12),
(1508, 14, 4, 'Noah', 'Okafor', '2000-05-24', 19),
(1509, 14, 2, 'Eray', 'Comert', '1998-02-04', 18),
(1510, 14, 3, 'Michel', 'Aebischer', '1997-01-06', 14),
(1511, 14, 3, 'Christian', 'Fassnacht', '1993-11-11', 16),
(1512, 14, 2, 'Edimilson', 'Fernandes', '1996-04-15', 2),
(1513, 14, 3, 'Fabian', 'Frei', '1989-01-08', 20),
(1514, 14, 4, 'Ruben', 'Vargas', '1998-08-05', 17),
(1515, 14, 2, 'Renato', 'Steffen', '1991-11-03', 11),
(1516, 14, 3, 'Mohamet', 'Sow', '1997-02-06', 15),
(1517, 14, 2, 'Silvan', 'Widmer', '1993-03-05', 3),
(1518, 14, 2, 'Nico', 'Elvedi', '1996-09-30', 4),
(1519, 14, 2, 'Manuel', 'Akanji', '1995-07-19', 5),
(1520, 14, 3, 'Denis', 'Zakaria', '1996-11-20', 6),
(1521, 14, 3, 'Remo', 'Freuler', '1992-04-15', 8),
(1522, 14, 4, 'Breel', 'Embolo', '1997-02-14', 7),
(1523, 14, 2, 'Fabian', 'Schaer', '1991-12-20', 22),
(1524, 14, 1, 'Yann', 'Sommer', '1988-12-17', 1),
(1525, 14, 4, 'Haris', 'Seferovic', '1992-02-22', 9),
(1526, 14, 2, 'Ricardo', 'Rodríguez', '1992-08-25', 13),
(1527, 14, 3, 'Granit', 'Xhaka', '1992-09-27', 10),
(1528, 14, 3, 'Xherdan', 'Shaqiri', '1991-10-10', 23),
(1529, 32, 1, 'Fernando', 'Muslera', '1986-06-16', 1),
(1530, 32, 2, 'Jose', 'Gimenez', '1995-01-20', 2),
(1531, 32, 2, 'Diego', 'Godin', '1986-02-16', 3),
(1532, 32, 2, 'Ronald', 'Araujo', '1999-03-07', 4),
(1533, 32, 3, 'Matias', 'Vecino', '1991-08-24', 5),
(1534, 32, 3, 'Rodrigo', 'Bentacur', '1997-06-25', 6),
(1535, 32, 3, 'Nicolas', 'De La Cruz', '1997-06-01', 7),
(1536, 32, 4, 'Facundo', 'Pellistri', '2001-12-20', 8),
(1537, 32, 4, 'Luis', 'Suarez', '1987-01-24', 9),
(1538, 32, 3, 'Giorgian', 'De Arrascaeta', '1994-06-01', 10),
(1539, 32, 4, 'Darwin', 'Nunez', '1999-06-24', 11),
(1540, 32, 1, 'Sebastian', 'Sosa', '1986-08-19', 12),
(1541, 32, 2, 'Guillermo', 'Varela', '1993-03-24', 13),
(1542, 32, 3, 'Lucas', 'Torreira', '1996-02-11', 14),
(1543, 32, 3, 'Federico', 'Valverde', '1998-07-22', 15),
(1544, 32, 2, 'Mathias', 'Olivera', '1997-10-31', 16),
(1545, 32, 2, 'Matias', 'Vina', '1997-11-09', 17),
(1546, 32, 4, 'Maximiliano', 'Gomez', '1996-08-14', 18),
(1547, 32, 2, 'Sebastian', 'Coates', '1990-10-07', 19),
(1548, 32, 4, 'Facundo', 'Torres', '2000-04-13', 20),
(1549, 32, 4, 'Edinson', 'Cavani', '1987-02-14', 21),
(1550, 32, 2, 'Martin', 'Caceres', '1987-04-07', 22),
(1551, 32, 1, 'Sergio', 'Rochet', '1993-03-23', 23),
(1552, 32, 3, 'Agustin', 'Canobbio', '1998-10-01', 24),
(1553, 32, 3, 'Manuel', 'Ugarte', '2001-04-11', 25),
(1554, 32, 2, 'José Luis', 'Rodríguez Bebanz', '1999-03-14', 26);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jugadorpartido`
--
-- Creación: 06-12-2023 a las 04:57:56
--

CREATE TABLE `jugadorpartido` (
  `idJugador` smallint(6) NOT NULL,
  `idPartido` tinyint(4) NOT NULL,
  `idReemplazo` smallint(6) DEFAULT NULL,
  `ingreso` tinyint(3) UNSIGNED DEFAULT NULL,
  `ingresoAdicionado` tinyint(3) UNSIGNED DEFAULT NULL,
  `egreso` tinyint(3) UNSIGNED DEFAULT NULL,
  `egresoAdicionado` tinyint(3) UNSIGNED DEFAULT NULL
) ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pais`
--
-- Creación: 06-12-2023 a las 04:57:56
-- Última actualización: 06-12-2023 a las 05:23:19
--

CREATE TABLE `pais` (
  `idPais` tinyint(4) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `nombreEntrenador` varchar(30) NOT NULL,
  `grupo` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pais`
--

INSERT INTO `pais` (`idPais`, `nombre`, `nombreEntrenador`, `grupo`) VALUES
(1, 'Argentina', 'Lionel Scaloni', 'C'),
(2, 'Francia', 'Didier Deschamps', 'D'),
(3, 'Alemania', 'Hansi Flick', 'E'),
(4, 'Arabia Saudita', 'Hervé Renard', 'C'),
(5, 'Australia', 'Graham Arnold', 'D'),
(6, 'Bélgica', 'Roberto Martinez', 'F'),
(7, 'Brasil', 'Adenor Leonardo Bacchi', 'G'),
(8, 'Camerún', 'Rigobert Song Bahanag', 'G'),
(9, 'Canadá', 'John Herdman', 'F'),
(10, 'Costa Rica', 'Luis Fernando Suárez Guzmán', 'E'),
(11, 'Croacia', 'Zlatko Dalic', 'F'),
(12, 'Dinamarca', 'Kasper Hjulmand', 'D'),
(13, 'Ecuador', 'Gustavo Alfaro', 'A'),
(14, 'España', 'Luis Enrique', 'E'),
(15, 'Estados Unidos', 'Gregg Berhalter', 'B'),
(16, 'Gales', 'Robert John Page', 'B'),
(17, 'Ghana', 'Otto Addo', 'H'),
(18, 'Inglaterra', 'Gareth Southgate', 'B'),
(19, 'Irán', 'Carlos Queiroz', 'B'),
(20, 'Japón', 'Hajime Moriyasu', 'E'),
(21, 'República de Corea', 'Paulo Jorge Gomes Bento', 'H'),
(22, 'Marruecos', 'Hoalid Regragui', 'F'),
(23, 'Mexico', 'Gerardo Marino', 'C'),
(24, 'Paises Bajos', 'Louis Van Gaal', 'A'),
(25, 'Polonia', 'Czesław Michniewicz', 'C'),
(26, 'Portugal', 'Fernando Santos', 'H'),
(27, 'Qatar', 'Félix Sanchez Bas', 'A'),
(28, 'Senegal', 'Aliou Cissé', 'A'),
(29, 'Serbia', 'Dragan Stojković', 'G'),
(30, 'Suiza', 'Murat Yakin', 'G'),
(31, 'Túnez', 'Jalel Kadri', 'D'),
(32, 'Uruguay', 'Diego Alonso', 'H');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partido`
--
-- Creación: 06-12-2023 a las 04:57:56
-- Última actualización: 06-12-2023 a las 06:37:49
--

CREATE TABLE `partido` (
  `idPartido` tinyint(4) NOT NULL,
  `idTipoPartido` tinyint(4) NOT NULL,
  `idLocal` tinyint(4) NOT NULL,
  `idVisitante` tinyint(4) NOT NULL,
  `idEstadio` tinyint(4) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `golesLocales` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `golesVisitantes` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `duracion` tinyint(3) UNSIGNED DEFAULT 90
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `partido`
--

INSERT INTO `partido` (`idPartido`, `idTipoPartido`, `idLocal`, `idVisitante`, `idEstadio`, `fecha`, `golesLocales`, `golesVisitantes`, `duracion`) VALUES
(1, 1, 1, 4, 1, '2022-11-22 12:00:00', 1, 2, 90),
(2, 1, 1, 23, 1, '2022-11-26 21:00:00', 2, 0, 90),
(3, 1, 25, 1, 1, '2022-11-30 21:00:00', 0, 2, 90),
(4, 2, 1, 5, 1, '2022-12-03 21:00:00', 1, 2, 90),
(5, 3, 24, 1, 1, '2022-12-09 21:00:00', 2, 2, 90),
(6, 4, 1, 11, 1, '2022-12-13 21:00:00', 3, 0, 90),
(7, 5, 1, 2, 1, '2022-12-18 17:00:00', 3, 3, 90);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posicion`
--
-- Creación: 06-12-2023 a las 04:57:56
-- Última actualización: 06-12-2023 a las 06:37:00
--

CREATE TABLE `posicion` (
  `idPosicion` tinyint(4) NOT NULL,
  `posicion` char(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `posicion`
--

INSERT INTO `posicion` (`idPosicion`, `posicion`) VALUES
(1, 'Arquero'),
(2, 'Defensor'),
(4, 'Delantero'),
(3, 'Mediocampista');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipopartido`
--
-- Creación: 06-12-2023 a las 04:57:56
-- Última actualización: 06-12-2023 a las 06:37:30
--

CREATE TABLE `tipopartido` (
  `idTipoPartido` tinyint(4) NOT NULL,
  `tipoPartido` char(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipopartido`
--

INSERT INTO `tipopartido` (`idTipoPartido`, `tipoPartido`) VALUES
(3, 'Cuartos'),
(5, 'Final'),
(1, 'Grupos'),
(2, 'Octavos'),
(4, 'Semifinal'),
(6, 'Tercer Puesto');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `definicionpenal`
--
ALTER TABLE `definicionpenal`
  ADD PRIMARY KEY (`idPartido`,`idJugador`,`turno`),
  ADD KEY `FK_DefinicionPenal_Jugador` (`idJugador`);

--
-- Indices de la tabla `estadio`
--
ALTER TABLE `estadio`
  ADD PRIMARY KEY (`idEstadio`),
  ADD UNIQUE KEY `UQ_Estadio_nombre` (`nombre`);

--
-- Indices de la tabla `gol`
--
ALTER TABLE `gol`
  ADD KEY `FK_Gol_Jugador` (`idJugador`),
  ADD KEY `FK_Gol_Partido` (`idPartido`);

--
-- Indices de la tabla `jugador`
--
ALTER TABLE `jugador`
  ADD PRIMARY KEY (`idJugador`),
  ADD UNIQUE KEY `UQ_Jugador_CamisetaPais` (`idPais`,`numCamiseta`),
  ADD KEY `FK_Jugador_Posicion` (`idPosicion`);

--
-- Indices de la tabla `jugadorpartido`
--
ALTER TABLE `jugadorpartido`
  ADD PRIMARY KEY (`idJugador`,`idPartido`),
  ADD KEY `FK_JugadorPartido_Partido` (`idPartido`),
  ADD KEY `FK_JugadorPartido_Reemplazo` (`idReemplazo`);

--
-- Indices de la tabla `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`idPais`),
  ADD UNIQUE KEY `UQ_Pais_nombre` (`nombre`);

--
-- Indices de la tabla `partido`
--
ALTER TABLE `partido`
  ADD PRIMARY KEY (`idPartido`),
  ADD KEY `FK_Partido_TipoPartido` (`idTipoPartido`),
  ADD KEY `FK_Partido_Estadio` (`idEstadio`),
  ADD KEY `FK_Partido_Pais_Local` (`idLocal`),
  ADD KEY `FK_Partido_Pais_Visitante` (`idVisitante`);

--
-- Indices de la tabla `posicion`
--
ALTER TABLE `posicion`
  ADD PRIMARY KEY (`idPosicion`),
  ADD UNIQUE KEY `UQ_Posicion_posicion` (`posicion`);

--
-- Indices de la tabla `tipopartido`
--
ALTER TABLE `tipopartido`
  ADD PRIMARY KEY (`idTipoPartido`),
  ADD UNIQUE KEY `UQ_TipoPartido` (`tipoPartido`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `estadio`
--
ALTER TABLE `estadio`
  MODIFY `idEstadio` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `jugador`
--
ALTER TABLE `jugador`
  MODIFY `idJugador` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1555;

--
-- AUTO_INCREMENT de la tabla `pais`
--
ALTER TABLE `pais`
  MODIFY `idPais` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `partido`
--
ALTER TABLE `partido`
  MODIFY `idPartido` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `posicion`
--
ALTER TABLE `posicion`
  MODIFY `idPosicion` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tipopartido`
--
ALTER TABLE `tipopartido`
  MODIFY `idTipoPartido` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `definicionpenal`
--
ALTER TABLE `definicionpenal`
  ADD CONSTRAINT `FK_DefinicionPenal_Jugador` FOREIGN KEY (`idJugador`) REFERENCES `jugador` (`idJugador`),
  ADD CONSTRAINT `FK_DefinicionPenal_Partido` FOREIGN KEY (`idPartido`) REFERENCES `partido` (`idPartido`);

--
-- Filtros para la tabla `gol`
--
ALTER TABLE `gol`
  ADD CONSTRAINT `FK_Gol_Jugador` FOREIGN KEY (`idJugador`) REFERENCES `jugador` (`idJugador`),
  ADD CONSTRAINT `FK_Gol_Partido` FOREIGN KEY (`idPartido`) REFERENCES `partido` (`idPartido`);

--
-- Filtros para la tabla `jugador`
--
ALTER TABLE `jugador`
  ADD CONSTRAINT `FK_Jugador_Pais` FOREIGN KEY (`idPais`) REFERENCES `pais` (`idPais`),
  ADD CONSTRAINT `FK_Jugador_Posicion` FOREIGN KEY (`idPosicion`) REFERENCES `posicion` (`idPosicion`);

--
-- Filtros para la tabla `jugadorpartido`
--
ALTER TABLE `jugadorpartido`
  ADD CONSTRAINT `FK_JugadorPartido_Jugador` FOREIGN KEY (`idJugador`) REFERENCES `jugador` (`idJugador`),
  ADD CONSTRAINT `FK_JugadorPartido_Partido` FOREIGN KEY (`idPartido`) REFERENCES `partido` (`idPartido`),
  ADD CONSTRAINT `FK_JugadorPartido_Reemplazo` FOREIGN KEY (`idReemplazo`) REFERENCES `jugador` (`idJugador`);

--
-- Filtros para la tabla `partido`
--
ALTER TABLE `partido`
  ADD CONSTRAINT `FK_Partido_Estadio` FOREIGN KEY (`idEstadio`) REFERENCES `estadio` (`idEstadio`),
  ADD CONSTRAINT `FK_Partido_Pais_Local` FOREIGN KEY (`idLocal`) REFERENCES `pais` (`idPais`),
  ADD CONSTRAINT `FK_Partido_Pais_Visitante` FOREIGN KEY (`idVisitante`) REFERENCES `pais` (`idPais`),
  ADD CONSTRAINT `FK_Partido_TipoPartido` FOREIGN KEY (`idTipoPartido`) REFERENCES `tipopartido` (`idTipoPartido`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
