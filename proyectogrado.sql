-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 09, 2022 at 08:41 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `proyectogrado`
--

-- --------------------------------------------------------

--
-- Table structure for table `areas`
--

CREATE TABLE `areas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `faculty_id` bigint(20) UNSIGNED NOT NULL,
  `coordination_id` bigint(20) UNSIGNED NOT NULL,
  `program_id` bigint(20) UNSIGNED NOT NULL,
  `area_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area_coordinator` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `areas`
--

INSERT INTO `areas` (`id`, `faculty_id`, `coordination_id`, `program_id`, `area_name`, `area_coordinator`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 'Admon', 2, 1, NULL, NULL),
(2, 1, 2, 2, 'Admon2', 2, 1, NULL, NULL),
(3, 1, 3, 3, 'Admon3', 2, 1, NULL, NULL),
(4, 2, 4, 8, 'Agro', 100, 1, NULL, NULL),
(5, 2, 4, 9, 'Agro2', 100, 1, NULL, NULL),
(6, 3, 5, 23, 'CienciaBasica', 101, 1, NULL, NULL),
(7, 4, 9, 10, 'AudiVi', 105, 1, NULL, NULL),
(8, 4, 9, 24, 'AudiVi2', 105, 1, NULL, NULL),
(9, 4, 9, 25, 'AudiVi3', 105, 1, NULL, NULL),
(10, 5, 11, 11, 'FiReDe', 107, 1, NULL, NULL),
(11, 5, 12, 12, 'FiReDe2', 107, 1, NULL, NULL),
(12, 5, 12, 13, 'FiReDe3', 107, 1, NULL, NULL),
(13, 1, 2, 20, 'Admon4', 2, 1, NULL, NULL),
(14, 1, 2, 21, 'Admon5', 2, 1, NULL, NULL),
(15, 2, 2, 22, 'Agro3', 100, 1, NULL, NULL),
(16, 1, 2, 15, 'Admon6', 2, 1, NULL, NULL),
(17, 1, 2, 16, 'Admon7', 2, 1, NULL, NULL),
(18, 1, 2, 17, 'Admon8', 2, 1, NULL, NULL),
(19, 1, 2, 18, 'Admon9', 2, 1, NULL, NULL),
(20, 1, 2, 19, 'Admon10', 2, 1, NULL, NULL),
(21, 6, 17, 4, 'IngCiv', 113, 1, NULL, NULL),
(22, 6, 16, 5, 'IngSal', 112, 1, NULL, NULL),
(23, 6, 17, 6, 'IngCiv2', 113, 1, NULL, NULL),
(24, 6, 18, 7, 'IngInfo', 114, 1, NULL, NULL),
(25, 6, 18, 14, 'IngInfo2', 114, 1, NULL, NULL),
(26, 6, 17, 26, 'IngCiv3', 113, 1, NULL, NULL),
(27, 6, 16, 27, 'IngSal2', 112, 1, NULL, NULL),
(28, 6, 18, 28, 'IngInfo3', 114, 1, NULL, NULL),
(29, 6, 18, 29, 'IngInfo4', 114, 1, NULL, NULL),
(30, 6, 17, 30, 'IngCiv4', 113, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coordinations`
--

CREATE TABLE `coordinations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `faculty_id` bigint(20) UNSIGNED NOT NULL,
  `coordination_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coordinator` bigint(20) UNSIGNED NOT NULL,
  `professional_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coordination_auxiliar_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coordination_auxiliar_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coordination_auxiliar_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coordinations`
--

INSERT INTO `coordinations` (`id`, `faculty_id`, `coordination_name`, `coordinator`, `professional_phone`, `coordination_auxiliar_name`, `coordination_auxiliar_email`, `coordination_auxiliar_phone`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Asuntos Acad?micos', 97, '319 79 00 Ext. 262', 'Camila G?mez Cuervo', 'cgomez@elpoli.edu.co', '319 79 00 Ext. 179', 1, NULL, NULL),
(2, 1, 'Programas Tecnol?gicos', 98, '319 79 00 Ext. 448', '', '', '', 1, NULL, NULL),
(3, 1, 'Programas Profesionales', 99, '319 79 00 Ext. 253', 'Blanca Ligia Ruiz Arango', 'faprofesional@elpoli.edu.co', '319 79 00 Ext.137', 1, NULL, NULL),
(4, 2, 'Programas', 100, '319 79 00 Ext. 242 ', 'Luz Marleny Ordo?ez Arango', 'lmordonez@elpoli.edu.co', '319 79 00 Ext. 242', 1, NULL, NULL),
(5, 3, ' Ciencias B?sicas', 101, '319 79 00 Ext. 192', 'Paula Andrea Ramirez Rodriguez', 'paramirez@elpoli.edu.co', '319 79 00 Ext. 192', 1, NULL, NULL),
(6, 3, 'Aula Taller de Ciencias', 102, '319 79 00 Ext. 196', '', '', '', 1, NULL, NULL),
(7, 3, 'Ciencias Sociales', 103, '319 79 00 Ext. 104', 'Isabel Macea Bustamante', 'imacea@elpoli.edu.co', '319 79 00 Ext. 104', 1, NULL, NULL),
(8, 3, 'Polidiomas', 104, '319 79 00 Ext. 196', '', '', '', 1, NULL, NULL),
(10, 4, 'Laboratorio', 106, '319 79 00 Ext. 531', 'Ra?l Rosero Molinero', 'rbrosero@elpoli.edu.co', '319 79 00 Ext. 256', 1, NULL, NULL),
(11, 5, 'Acad?mica de Licenciatura en Educaci?n F?sica, Recreaci?n y Deporte', 107, '319 79 00 Ext. 269', 'Olga Roc?o Valencia Correa', 'orvalencia@elpoli.edu.co', '319 79 00 Ext. 132', 1, NULL, NULL),
(12, 5, 'Acad?mica de Profesional en Deporte y la T?cnica Profesional en Masoterapia', 108, '319 79 00 Ext. 215', 'Luz Mery Le?n Vasco', 'lmleon@elpoli.edu.co', '319 79 00 Ext. 107', 1, NULL, NULL),
(13, 5, 'Programa Salud Sicof?sica', 109, '319 79 00 Ext. 209', '', '', '', 1, NULL, NULL),
(14, 5, 'Jefe Oficina de Deportes', 110, '319 79 00 Ext. 412', '', '', '', 1, NULL, NULL),
(15, 5, 'Oficina ALACA', 111, '319 79 00 Ext. 195', 'Juan Guillermo Sierra Pic?n;jgsierra@elpoli.edu.co', '319 79 00 Ext. 191', '1', 0, NULL, NULL),
(16, 6, 'Programas ?rea Seguridad e Higiene Ocupacional y Posgrados', 112, '319 79 00 Ext. 454', 'Le?n Dario Rojas G?mez', 'ldrojas@elpoli.edu.co', '319 79 00 Ext. 182', 1, NULL, NULL),
(17, 6, 'Programas ?rea de Civil e Instrumentaci?n y Control', 113, '319 79 00 Ext. 184', 'Gloria Cecilia Rold?n Palacio', 'gcroldan@elpoli.edu.co', '319 79 00 Ext. 184', 1, NULL, NULL),
(18, 6, 'Programas ?rea de Inform?tica y Telecomunicaciones', 114, '319 79 00 Ext. 457', '', '', '', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `faculties`
--

CREATE TABLE `faculties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `faculty_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dean` bigint(20) UNSIGNED NOT NULL,
  `dean_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faculty_auxiliar_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faculty_auxiliar_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faculty_auxiliar_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faculties`
--

INSERT INTO `faculties` (`id`, `faculty_name`, `dean`, `dean_phone`, `faculty_auxiliar_name`, `faculty_auxiliar_email`, `faculty_auxiliar_phone`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Administracion ', 2, '319 79 00 Ext. 138', '', '', '', 0, NULL, NULL),
(2, 'Ciencias Agrarias', 2, '319 79 00 Ext. 349', 'Paula Andrea Jaramillo Varela', 'pajaramillo@elpoli.edu.co', '319 79 00 Ext. 109', 0, NULL, NULL),
(3, 'Ciencias B?sicas, Sociales y Humanas', 2, '319 79 00 Ext. 204', '?Juan Carlos Ruiz Zapata', 'jruiz@elpoli.edu.co', '319 79 00 Ext. 298', 0, NULL, NULL),
(4, 'Comunicaci?n Audiovisual', 3, '319 79 00 Ext. 237', 'Ruth Albany Lujan Monta?o;fcacamicos@elpoli.edu.co', '319 79 00 Ext. 112', 'Active', 0, NULL, NULL),
(5, 'Educaci?n F?sica, Recreaci?n y Deporte', 4, '319 79 00 Ext. 451', 'Sandra Milena David Borja', 'smdavid@elpoli.edu.co', '319 79 00 Ext. 180', 0, NULL, NULL),
(6, 'Ingenier?a', 4, '319 79 00 Ext. 279', 'Mar?a Antonia Vega Ortega', 'maria_vega92152@elpoli.edu.co', '319 79 00 Ext. 106', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `load_periods`
--

CREATE TABLE `load_periods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `period` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_01_30_161942_teachers', 1),
(6, '2022_01_30_175103_faculties', 1),
(7, '2022_01_30_175124_coordinations', 1),
(8, '2022_01_30_175137_programs', 1),
(9, '2022_01_30_175937_areas', 1),
(10, '2022_02_02_104845_subjects', 1),
(11, '2022_02_04_110143_load_periods', 1),
(12, '2022_02_05_171131_schedules', 1),
(13, '2022_02_08_111532_add_role_to_users', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('admin@gmail.com', '$2y$10$jpQMMcURrV.lT1GBOgfXh.LmlzCmwO6QBr3PynpeA0kKU3xbU0gpa', '2022-08-09 21:38:02');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `programs`
--

CREATE TABLE `programs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `faculty_id` bigint(20) UNSIGNED NOT NULL,
  `coordination_id` bigint(20) UNSIGNED NOT NULL,
  `program_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `program_category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `snies_register` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `program_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `programs`
--

INSERT INTO `programs` (`id`, `faculty_id`, `coordination_id`, `program_name`, `program_category`, `snies_register`, `program_phone`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 'Administraci?n P?blica', 'Profesional', '108620', '307 79 00 ext 107', 1, NULL, NULL),
(2, 1, 3, 'Contadur?a P?blica', 'Profesional', '107648', '308 79 00 ext 107', 1, NULL, NULL),
(3, 1, 3, 'Ingenier?a de Productividad y Calidad', 'Profesional', '2937', '309 79 00 ext 107', 1, NULL, NULL),
(4, 6, 17, 'Ingenier?a Civil', 'Profesional', '3689', '310 79 00 ext 107', 1, NULL, NULL),
(5, 6, 16, 'Ingenier?a en Seguridad y Salud en el Trabajo', 'Profesional', '108270', '311 79 00 ext 107', 1, NULL, NULL),
(6, 6, 17, 'Ingenier?a en Automatizaci?n y Control', 'Profesional', '110348', '312 79 00 ext 107', 1, NULL, NULL),
(7, 6, 18, 'Ingenier?a Inform?tica', 'Profesional', '107648', '313 79 00 ext 107', 1, NULL, NULL),
(8, 2, 4, 'Administraci?n de Empresas Agropecuarias', 'Profesional', '4206', '314 79 00 ext 107', 1, NULL, NULL),
(9, 2, 4, 'Ingenier?a Agropecuaria', 'Profesional', '5243', '315 79 00 ext 107', 1, NULL, NULL),
(10, 4, 9, 'Comunicaci?n Audiovisual', 'Profesional', '55167', '316 79 00 ext 107', 1, NULL, NULL),
(11, 5, 11, 'Licenciatura en Educaci?n F?sica, Recreaci?n y Deportes', 'Profesional', '108727', '317 79 00 ext 107', 1, NULL, NULL),
(12, 5, 12, 'Profesional en Deporte', 'Profesional', '3729', '318 79 00 ext 107', 1, NULL, NULL),
(13, 5, 12, 'T?cnica Profesional en Masoterapia', 'T?cnica', '54149', '319 79 00 ext 107', 1, NULL, NULL),
(14, 6, 18, 'T?cnica Profesional en Programaci?n de Sistemas de Informaci?n;T?cnica', '53588', '444 7654 ext 183-457', '1', 0, NULL, NULL),
(15, 1, 2, 'Tecnolog?a en Gesti?n Aeroportuaria', 'Tecnolog?a', '101952', '319 79 00 Ext 138', 1, NULL, NULL),
(16, 1, 2, 'Tecnolog?a en Costos y Auditor?a', 'Tecnolog?a', '1749', '320 79 00 Ext 138', 1, NULL, NULL),
(17, 1, 2, 'Tecnolog?a en Gesti?n Industrial', 'Tecnolog?a', '103305', '', 1, NULL, NULL),
(18, 1, 2, 'Tecnolog?a en Gesti?n P?blica', 'Tecnolog?a', '101886', '319 79 00 Ext 138', 1, NULL, NULL),
(19, 1, 2, 'Tecnolog?a en Gesti?n de Empresas y Destinos Tur?sticos', 'Tecnolog?a', '103880', '320 79 00 Ext 138', 1, NULL, NULL),
(20, 1, 2, 'Tecnolog?a en Gesti?n Log?stica Integral', 'Tecnolog?a', '106240', '321 79 00 Ext 138-173', 1, NULL, NULL),
(21, 1, 2, 'Tecnolog?a Industrial', 'Tecnolog?a', '1755', '444 76 54 Ext 173', 1, NULL, NULL),
(22, 2, 4, 'Tecnolog?a Agropecuaria', 'Tecnolog?a', '2859', '445 76 54 Ext 115-242', 1, NULL, NULL),
(23, 3, 5, 'Tecnolog?a en Qu?mica Industrial y de Laboratorio', 'Tecnolog?a', '102621', '319 79 00 ext 107', 1, NULL, NULL),
(24, 4, 9, 'Tecnolog?a en Producci?n de Eventos', 'Tecnolog?a', '108803', '319 79 00 ext 107', 1, NULL, NULL),
(25, 4, 9, 'Tecnolog?a en Producci?n de Televisi?n;Tecnolog?a', '3983', '319 79 00 ext. 256', '1', 0, NULL, NULL),
(26, 6, 17, 'Tecnolog?a en Construcciones Civiles', 'Tecnolog?a', '1751', '444 76 54 Ext 184', 1, NULL, NULL),
(27, 6, 16, 'Tecnolog?a en Gesti?n de la Seguridad y Salud en el Trabajo', 'Tecnolog?a', '110967', '444 76 54 Ext 182', 1, NULL, NULL),
(28, 6, 18, 'Tecnolog?a en Sistematizaci?n de Datos', 'Tecnolog?a', '53587', '444 76 54 Ext 183', 1, NULL, NULL),
(29, 6, 18, 'Tecnolog?a en Gesti?n de Infraestructura de Telecomunicaciones', 'Tecnolog?a', '110950', '445 76 54 Ext 183', 1, NULL, NULL),
(30, 6, 17, 'Tecnolog?a en Instrumentaci?n Industrial', 'Tecnolog?a', '1752', '444 76 54 Ext 184', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `program_id` bigint(20) UNSIGNED NOT NULL,
  `teacher` bigint(20) UNSIGNED DEFAULT NULL,
  `area_id` bigint(20) UNSIGNED NOT NULL,
  `campus` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` int(11) NOT NULL,
  `detail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `day` enum('1','2','3','4','5','6','7') COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_hour` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_minute` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `end_hour` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_minute` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `classroom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `activity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `classroom_capacity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scheduled_capacity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enrolled` int(11) DEFAULT NULL,
  `plan` int(11) DEFAULT NULL,
  `total_hours` double(8,2) NOT NULL,
  `consultancies` int(11) NOT NULL DEFAULT 0,
  `evaluation_hours` int(11) NOT NULL DEFAULT 0,
  `observations` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `offer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `load_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `faculty_id` bigint(20) UNSIGNED NOT NULL,
  `coordination_id` bigint(20) UNSIGNED NOT NULL,
  `program_id` bigint(20) UNSIGNED NOT NULL,
  `area_id` bigint(20) UNSIGNED NOT NULL,
  `subject_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_credits` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_level` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prerequisite_code_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prerequisite_name_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prerequisite_code_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prerequisite_name_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `corequisite_code_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `corequisite_name_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `corequisite_code_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `corequisite_name_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `faculty_id`, `coordination_id`, `program_id`, `area_id`, `subject_code`, `subject_name`, `subject_credits`, `subject_level`, `prerequisite_code_1`, `prerequisite_name_1`, `prerequisite_code_2`, `prerequisite_name_2`, `corequisite_code_1`, `corequisite_name_1`, `corequisite_code_2`, `corequisite_name_2`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 1, 1, 'CBS00001', 'Matem?ticas', '4', '1', '', '', '', '', '', '', '', '', 1, NULL, NULL),
(2, 1, 3, 1, 1, 'CBS00098', 'Pedagog?a constitucional', '2', '1', '', '', '', '', '', '', '', '', 2, NULL, NULL),
(3, 1, 3, 1, 1, 'ADM00958', 'Fundamentos de Administraci?n;3', '1', '', '', '', '', '', '', '', '', '3', 0, NULL, NULL),
(4, 1, 3, 1, 1, 'ADM01000', 'Introducci?n al ?rea Profesional	', '3', '1', '', '', '', '', '', '', '', '', 4, NULL, NULL),
(5, 1, 3, 1, 1, 'CBS00031', 'Humanidades: Cultura Contempor?nea', '2', '1', '', '', '', '', '', '', '', '', 5, NULL, NULL),
(6, 1, 3, 1, 1, 'CBS00427', 'Habilidades Comunicativas', '4', '1', '', '', '', '', '', '', '', '', 6, NULL, NULL),
(7, 1, 3, 1, 1, 'CBS00074', 'Estad?stica', '3', '2', '', '', '', '', '', '', '', '', 7, NULL, NULL),
(8, 1, 3, 1, 1, 'ADM01001', 'Teoria General del Estado', '3', '2', '', '', '', '', '', '', '', '', 8, NULL, NULL),
(9, 1, 3, 1, 1, 'ADM00414', 'Teoria Organizacional', '3', '2', '', '', '', '', '', '', '', '', 9, NULL, NULL),
(10, 1, 3, 1, 1, 'ADM00865', 'Fundamentos de Contabilidad', '3', '2', '', '', '', '', '', '', '', '', 10, NULL, NULL),
(11, 1, 3, 1, 1, 'ADM01033', 'Fundamentos de Economia', '3', '2', '', '', '', '', '', '', '', '', 11, NULL, NULL),
(12, 1, 3, 1, 1, 'ADM00549', 'Inform?tica', '3', '2', '', '', '', '', '', '', '', '', 12, NULL, NULL),
(13, 1, 3, 1, 1, 'ADM01002', 'Hermeneutica Juridica', '3', '3', '', '', '', '', '', '', '', '', 13, NULL, NULL),
(14, 1, 3, 1, 1, 'ADM00876', 'Gesti?n Humana', '3', '3', '', '', '', '', '', '', '', '', 14, NULL, NULL),
(15, 1, 3, 1, 1, 'ADM01003', 'Ecolog?a y Ambiente', '3', '3', '', '', '', '', '', '', '', '', 15, NULL, NULL),
(16, 1, 3, 1, 1, 'ADM00420', 'Contabilidad Oficial', '3', '3', '', '', '', '', '', '', '', '', 16, NULL, NULL),
(17, 1, 3, 1, 1, 'CBS00032', 'Humanidades 2: Cultura Politica', '2', '3', '', '', '', '', '', '', '', '', 17, NULL, NULL),
(18, 1, 3, 1, 1, 'ADM01004', 'Historia Socioecon?mica y Pol?tica de Colombia', '3', '3', '', '', '', '', '', '', '', '', 18, NULL, NULL),
(19, 1, 3, 1, 1, 'ADM00415', 'Derecho Administrativo', '3', '4', 'ADM01002', 'Hermeneutica Juridica', '', '', '', '', '', '', 19, NULL, NULL),
(20, 1, 3, 1, 1, 'CBS00033', 'Humanidades: Geopol?tica', '2', '4', '', '', '', '', '', '', '', '', 20, NULL, NULL),
(21, 1, 3, 1, 1, '', 'Electiva I', '3', '4', '', '', '', '', '', '', '', '', 21, NULL, NULL),
(22, 1, 3, 1, 1, 'ADM00066', 'Macroeconom?a', '3', '4', '', '', '', '', '', '', '', '', 22, NULL, NULL),
(23, 1, 3, 1, 1, 'ADM00425', 'Funci?n P?blica', '3', '4', 'ADM00876', 'Gesti?n Humana', '', '', '', '', '', '', 23, NULL, NULL),
(24, 1, 3, 1, 1, 'ADM01005', 'Derecho Constitucional y de Hacienda P?blica', '3', '4', '', '', '', '', '', '', '', '', 24, NULL, NULL),
(25, 1, 3, 1, 1, 'ADM00422', 'Contrataci?n Estatal', '3', '5', 'ADM00415', 'Derecho Administrativo', '', '', '', '', '', '', 25, NULL, NULL),
(26, 1, 3, 1, 1, 'ADM01006', 'Ecolog?a Pol?tica Latinoamericana', '3', '5', 'ADM01003', 'Ecolog?a y Ambiente', '', '', '', '', '', '', 26, NULL, NULL),
(27, 1, 3, 1, 1, 'ADM00779', 'Matem?ticas Financieras', '', '5', '', '', '', '', '', '', '', '', 27, NULL, NULL),
(28, 1, 3, 1, 1, 'ADM01007', 'Finanzas P?blicas Nacionales', '3', '5', 'ADM01005', 'Derecho Constitucional y de Hacienda P?blica', '', '', '', '', '', '', 28, NULL, NULL),
(29, 1, 3, 1, 1, 'ADM01008', 'Interculturalidad e Inclusi?n;3', '5', '', '', '', '', '', '', '', '', '29', 0, NULL, NULL),
(30, 1, 3, 1, 1, 'EFD00068', 'Deporte, Arte y Recraci?n;1', '6', '', '', '', '', '', '', '', '', '30', 0, NULL, NULL),
(31, 1, 3, 1, 1, 'ADM01009', 'Gesti?n Ambiental Sector P?blico', '3', '6', '', '', '', '', '', '', '', '', 31, NULL, NULL),
(32, 1, 3, 1, 1, 'ADM00430', 'Planeaci?n y Ordenamiento Territorial', '3', '6', '', '', '', '', '', '', '', '', 32, NULL, NULL),
(33, 1, 3, 1, 1, 'ADM01034', 'Finanzas P?blicas Territoriales', '3', '6', 'ADM01007', 'Finanzas P?blicas Nacionales', '', '', '', '', '', '', 33, NULL, NULL),
(34, 1, 3, 1, 1, 'ADM00570', 'Gestion del Sistema General de Participaci?n SGP', '3', '6', '', '', '', '', '', '', '', '', 34, NULL, NULL),
(35, 1, 3, 1, 1, 'ADM01010', 'Metodologia de Investigaci?n;4', '6', 'CBS00074', 'Estad?stica', '', '', '', '', '', '', '35', 0, NULL, NULL),
(36, 1, 3, 1, 1, 'ADM01011', 'Dise?o y Evaluaci?n de Pol?ticas P?blicas', '3', '7', '', '', '', '', '', '', '', '', 36, NULL, NULL),
(37, 1, 3, 1, 1, 'ADM00427', 'Controles a la Administraci?n P?blica', '3', '7', 'ADM00422', 'Contrataci?n Estatal', '', '', '', '', '', '', 37, NULL, NULL),
(38, 1, 3, 1, 1, 'ADM01012', 'Acciones Constitucionales', '3', '7', '', '', '', '', '', '', '', '', 38, NULL, NULL),
(39, 1, 3, 1, 1, 'ADM01013', 'Investigaci?n Cuantitativa', '3', '7', 'ADM01010', 'Metodologia de Investigaci?n;', '', '', '', '', '', '39', 0, NULL, NULL),
(40, 1, 3, 1, 1, 'ADM01014', 'Administraci?n de Tesorer?a', '3', '7', 'ADM01034', 'Finanzas P?blicas Territoriales', '', '', '', '', '', '', 40, NULL, NULL),
(41, 1, 3, 1, 1, 'ADM01015', 'Analisis Financiero y Endeudamiento Territorial', '3', '7', 'ADM01034', 'Finanzas P?blicas Territoriales', '', '', '', '', '', '', 41, NULL, NULL),
(42, 1, 3, 1, 1, 'ADM00961', 'Planeacion y Gesti?n;3', '8', '', '', '', '', '', '', '', '', '42', 0, NULL, NULL),
(43, 1, 3, 1, 1, 'ADM00429', 'Taller ?rea Financiera P?blica', '3', '8', '', '', '', '', '', '', '', '', 43, NULL, NULL),
(44, 1, 3, 1, 1, 'ADM01016', 'Administraci?n de Empresas de Servicios P?blicos Domiciliarios', '3', '8', '', '', '', '', '', '', '', '', 44, NULL, NULL),
(45, 1, 3, 1, 1, 'ADM01017', 'Investigaci?n Cualitativa', '3', '8', 'ADM01010', 'Metodologia de Investigaci?n;', '', '', '', '', '', '45', 0, NULL, NULL),
(46, 1, 3, 1, 1, 'ADM01018', 'Auditoria y Rendici?n de Cuentas', '3', '8', 'ADM01014', 'Administraci?n de Tesorer?a', '', '', '', '', '', '', 46, NULL, NULL),
(47, 1, 3, 1, 1, 'ADM00963', 'Formulaci?n y Evaluaci?n de Proyectos de Inversi?n P?blica', '3', '8', 'ADM00779', 'Matem?ticas Financieras', '', '', '', '', '', '', 47, NULL, NULL),
(48, 1, 3, 1, 1, 'ADM01019', 'Gesti?n para la Cooperaci?n Nacional e Internacional', '3', '9', '', '', '', '', '', '', '', '', 48, NULL, NULL),
(49, 1, 3, 1, 1, 'ADM01020', 'Sistemas de Informaci?n Geogr?fica SIG', '3', '9', 'ADM00430', 'Planeaci?n y Ordenamiento Territorial', '', '', '', '', '', '', 49, NULL, NULL),
(50, 1, 3, 1, 1, 'ADM01021', '?tica', '1', '9', '', '', '', '', '', '', '', '', 50, NULL, NULL),
(51, 1, 3, 1, 1, 'ADM01022', 'Supervisi?n e Interventor?a en Contrataci?n Estatal', '3', '9', 'ADM00422', 'Contrataci?n Estatal', '', '', '', '', '', '', 51, NULL, NULL),
(52, 1, 3, 1, 1, 'ADM01023', 'Seminario de Investigaci?n;3', '9', 'ADM01017', 'Investigaci?n Cualitativa', '', '', '', '', '', '', '52', 0, NULL, NULL),
(53, 1, 3, 1, 1, 'ADM01037', 'C?tedra para la Paz', '3', '9', '', '', '', '', '', '', '', '', 53, NULL, NULL),
(54, 1, 3, 1, 1, 'ADM01036', 'Modalidades de Trabajo de Grado: Pr?ctica Empresarial o Investigaci?n Aplicada', '12', '10', '', 'Aprobados 152 cr?ditos', '', '', '', '', '', '', 54, NULL, NULL),
(55, 1, 3, 2, 2, 'ADM00863', 'Introducci?n al ?rea Profesional', '2', '1', '', '', '', '', '', '', '', '', 55, NULL, NULL),
(56, 1, 3, 2, 2, 'ADM00864', 'Fundamentos de Econom?a', '4', '1', '', '', '', '', '', '', '', '', 56, NULL, NULL),
(59, 1, 3, 2, 2, 'CBS00031', 'Humanidades 1 (Cultura Contempor?nea)', '4', '1', '', '', '', '', '', '', '', '', 59, NULL, NULL),
(62, 1, 3, 2, 2, 'ADM00866', 'Econom?a Pol?tica', '2', '2', 'ADM00864', 'Fundamentos de Econom?a', '', '', '', '', '', '', 62, NULL, NULL),
(63, 1, 3, 2, 2, 'ADM00867', 'Hermene?tica Jur?dica', '2', '2', 'CBS00098', 'Pedagog?a Constitucional', '', '', '', '', '', '', 63, NULL, NULL),
(64, 1, 3, 2, 2, 'ADM00868', 'Contabilidad de Recursos Financieros', '6', '2', 'ADM00865', 'Fundamentos de Contabilidad', '', '', '', '', '', '', 64, NULL, NULL),
(65, 1, 3, 2, 2, 'ADM00869', 'Inform?tica Empresarial', '2', '2', '', '', '', '', '', '', '', '', 65, NULL, NULL),
(66, 1, 3, 2, 2, 'CBS00032', 'Humanidades 2 (Cultura Pol?tica)', '4', '2', '', '', '', '', '', '', '', '', 66, NULL, NULL),
(68, 1, 3, 2, 2, 'CBS00421', '?lgebra y Programaci?n Lineal', '4', '2', 'CBS00001', 'Matem?ticas', '', '', '', '', '', '', 68, NULL, NULL),
(69, 1, 3, 2, 2, 'ADM00199', 'Fundamentos de Administraci?n;4', '3', '', '', '', '', '', '', '', '', '69', 0, NULL, NULL),
(70, 1, 3, 2, 2, 'ADM00870', 'Microeconomia', '4', '3', 'ADM00864', 'Introducci?n al ?rea Profesional', '', '', '', '', '', '', 70, NULL, NULL),
(71, 1, 3, 2, 2, 'ADM00871', 'Legislaci?n Societaria y Comercial', '4', '3', 'CBS00098', 'Pedagog?a Constitucional', '', '', '', '', '', '', 71, NULL, NULL),
(72, 1, 3, 2, 2, 'ADM00872', 'Contabilidad de Inversi?n y Financiaci?n;6', '3', 'ADM00868', 'Contabilidad de Recursos Financieros', '', '', '', '', '', '', '72', 0, NULL, NULL),
(73, 1, 3, 2, 2, 'CAG00100', 'Ecolog?a', '4', '3', '', '', '', '', '', '', '', '', 73, NULL, NULL),
(74, 1, 3, 2, 2, 'CBS00033', 'Humanidades 3 (Geopol?tica)', '4', '3', '', '', '', '', '', '', '', '', 74, NULL, NULL),
(78, 1, 3, 2, 2, 'ADM00874', 'Legislaci?n Laboral', '2', '4', 'CBS00098', 'Pedagog?a Constitucional', '', '', '', '', '', '', 78, NULL, NULL),
(79, 1, 3, 2, 2, 'ADM00875', 'Presentaci?n y Revelaci?n de Estados Financieros', '4', '4', 'ADM00872', 'Contabilidad de Inversi?n y Financiaci?n;', '', '', '', '', '', '79', 0, NULL, NULL),
(81, 1, 3, 2, 2, 'EFD00230', 'Deporte, Arte y Recreaci?n;2', '4', '', '', '', '', '', '', '', '', '81', 0, NULL, NULL),
(82, 1, 3, 2, 2, 'ING00026', 'Investigaci?n de Operaciones', '4', '4', 'CBS00421', '?lgebra y Programaci?n Lineal', '', '', '', '', '', '', 82, NULL, NULL),
(83, 1, 3, 2, 2, 'ADM00877', 'Econom?a Colombiana', '4', '5', 'ADM00866', 'Econom?a Pol?tica', '', '', '', '', '', '', 83, NULL, NULL),
(84, 1, 3, 2, 2, 'ADM00878', 'Contabilidad de Fen?menos Societarios', '4', '5', 'ADM00875', 'Presentaci?n y Revelaci?n de Estados Financieros', '', '', '', '', '', '', 84, NULL, NULL),
(85, 1, 3, 2, 2, 'ADM00879', 'Introducci?n a los Sistemas de Costos', '6', '5', 'ADM00875', 'Presentaci?n y Revelaci?n de Estados Financieros', '', '', '', '', '', '', 85, NULL, NULL),
(86, 1, 3, 2, 2, 'ADM00880', 'Finanzas Internacionales', '4', '5', 'ADM0087', 'Microeconomia', 'ADM077', 'Matem?ticas Financieras', '', '', '', '', 86, NULL, NULL),
(87, 1, 3, 2, 2, '', '', '', '5', '', '', '', '', '', '', '', '', 87, NULL, NULL),
(88, 1, 3, 2, 2, 'ADM00881', 'Administraci?n Contempor?nea', '4', '5', 'ADM00875', 'Presentaci?n y Revelaci?n de Estados Financieros', '', '', '', '', '', '', 88, NULL, NULL),
(89, 1, 3, 2, 2, 'ADM00882', 'Finanzas P?blicas', '4', '6', 'ADM00870', 'Microeconomia', '', '', '', '', '', '', 89, NULL, NULL),
(90, 1, 3, 2, 2, 'ADM00883', 'Contabilidad de Actividades Especiales', '2', '6', 'ADM00868', 'Contabilidad de Recursos Financieros', '', '', '', '', '', '', 90, NULL, NULL),
(91, 1, 3, 2, 2, 'ADM00884', 'Sistemas Contable', '4', '6', 'ADM00875', 'Presentaci?n y Revelaci?n de Estados Financieros', '', '', '', '', '', '', 91, NULL, NULL),
(92, 1, 3, 2, 2, 'ADM00885', 'Sistemas de Gesti?n de Costos', '4', '6', 'ADM00879', 'Introducci?n a los Sistemas de Costos', '', '', '', '', '', '', 92, NULL, NULL),
(93, 1, 3, 2, 2, 'ADM00886', 'Mercado de Capitales', '4', '6', 'ADM00880', 'Finanzas Internacionales', '', '', '', '', '', '', 93, NULL, NULL),
(94, 1, 3, 2, 2, 'ADM00887', 'Teor?a Contable', '2', '6', 'ADM00875', 'Presentaci?n y Revelaci?n de Estados Financieros', '', '', '', '', '', '', 94, NULL, NULL),
(95, 1, 3, 2, 2, 'ADM00157', 'Contabilidad Ambiental', '4', '7', 'ADM00868', 'Contabilidad de Recursos Financieros', '', '', '', '', '', '', 95, NULL, NULL),
(96, 1, 3, 2, 2, 'ADM00216', 'Metodolog?a de la Investigaci?n;4', '7', '', '', '', '', '', '', '', '', '96', 0, NULL, NULL),
(97, 1, 3, 2, 2, 'ADM00888', 'Presupuesto', '4', '7', 'ADM00885', 'Sistemas de Gesti?n de Costos', '', '', '', '', '', '', 97, NULL, NULL),
(98, 1, 3, 2, 2, 'ADM00889', 'Finanzas Corporativa', '4', '7', 'ADM00880', 'Finanzas Internacionales', '', '', '', '', '', '', 98, NULL, NULL),
(99, 1, 3, 2, 2, 'ADM00890', 'Fundamentos de Control', '2', '7', 'ADM00875', 'Presentaci?n y Revelaci?n de Estados Financieros', '', '', '', '', '', '', 99, NULL, NULL),
(100, 1, 3, 2, 2, 'ADM00901', 'Derechos Procesal Tributario', '2', '7', '', 'Tope Cr?ditos: 108', '', '', '', '', '', '', 100, NULL, NULL),
(101, 1, 3, 2, 2, 'ADM00903', 'Habilidades Gerenciales', '2', '7', '', 'Tope Cr?ditos: 108', '', '', '', '', '', '', 101, NULL, NULL),
(102, 1, 3, 2, 2, 'ADM00912', 'Electiva Pr?ctica', '4', '7', '', '', '', '', '', '', '', '', 102, NULL, NULL),
(103, 1, 3, 2, 2, 'ADM00891', 'Fundamentos de Contabilidad P?blica', '4', '8', 'ADM00868', 'Contabilidad de Recursos Financieros', '', '', '', '', '', '', 103, NULL, NULL),
(104, 1, 3, 2, 2, 'ADM00892', 'Contabilidad de Gesti?n;4', '8', 'ADM00885', 'Sistemas de Gesti?n de Costos', '', '', '', '', '', '', '104', 0, NULL, NULL),
(105, 1, 3, 2, 2, 'ADM00893', 'Procesos de Investigaci?n Contable', '4', '8', 'ADM00216', 'Metodolog?a de la Investigaci?n;', '', '', '', '', '', '105', 0, NULL, NULL),
(106, 1, 3, 2, 2, 'ADM00894', 'Legislaci?n Tributaria', '4', '8', 'ADM00875', 'Presentaci?n y Revelaci?n de Estados Financieros', '', '', '', '', '', '', 106, NULL, NULL),
(107, 1, 3, 2, 2, 'ADM00895', 'Aseguramiento y Revisor?a Fiscal', '4', '8', 'ADM00890', 'Fundamentos de Control', '', '', '', '', '', '', 107, NULL, NULL),
(108, 1, 3, 2, 2, 'ADM00896', 'Emprendimiento Empresarial', '4', '8', '', '', '', '', '', '', '', '', 108, NULL, NULL),
(109, 1, 3, 2, 2, 'ADM00796', 'Formulaci?n y Evaluaci?n de Proyectos', '4', '9', 'ADM00779', 'Matem?ticas Financieras', '', '', '', '', '', '', 109, NULL, NULL),
(110, 1, 3, 2, 2, 'ADM00897', 'Negocios Internacionales', '4', '9', 'ADM00870', 'Microeconomia', '', '', '', '', '', '', 110, NULL, NULL),
(111, 1, 3, 2, 2, 'ADM00898', 'Contabilidad P?blica y Control Social', '4', '9', 'ADM00891', 'Fundamentos de Contabilidad P?blica', '', '', '', '', '', '', 111, NULL, NULL),
(112, 1, 3, 2, 2, 'ADM00899', 'Procedimiento Tributario', '4', '9', 'ADM00894', 'Legislaci?n Tributaria', '', '', '', '', '', '', 112, NULL, NULL),
(113, 1, 3, 2, 2, 'ADM00900', 'Control Fiscal', '4', '9', 'ADM00895', 'Aseguramiento y Revisor?a Fiscal', '', '', '', '', '', '', 113, NULL, NULL),
(114, 1, 3, 2, 2, 'ADM00902', 'R?gimen Tributario', '2', '9', 'ADM00901', 'Derechos Procesal Tributario', '', '', '', '', '', '', 114, NULL, NULL),
(115, 1, 3, 2, 2, 'ADM00904', 'Estrateg?as Gerenciales', '2', '9', 'ADM00903', 'Habilidades Gerenciales', '', '', '', '', '', '', 115, NULL, NULL),
(117, 1, 3, 2, 2, 'ADM00905', 'Seminario de Grado', '8', '10', '', 'Tope Cr?dito: 155', '', '', '', '', '', '', 117, NULL, NULL),
(118, 1, 3, 2, 2, 'ADM00906', 'Consultoria Organizacional', '8', '10', '', 'Tope Cr?dito: 155', '', '', '', '', '', '', 118, NULL, NULL),
(119, 1, 3, 2, 2, 'ADM00907', 'Proyecto de Investigaci?n;8', '10', '', 'Tope Cr?dito: 155', '', '', '', '', '', '', '119', 0, NULL, NULL),
(120, 1, 3, 2, 2, 'ADM00908', 'Pr?ctica Profesional', '8', '10', '', 'Tope Cr?dito: 155', '', '', '', '', '', '', 120, NULL, NULL),
(123, 1, 3, 3, 3, 'ADM00021', 'Administraci?n;2', '1', '', '', '', '', '', '', '', '', '123', 0, NULL, NULL),
(124, 1, 3, 3, 3, 'CBS00024', 'Geometr?a', '3', '1', '', '', '', '', '', '', '', '', 124, NULL, NULL),
(125, 1, 3, 3, 3, 'CBS00030', 'Lengua materna', '2', '1', '', '', '', '', '', '', '', '', 125, NULL, NULL),
(126, 1, 3, 3, 3, 'ADM00913', 'C?tedra institucional', '1', '1', '', '', '', '', '', '', '', '', 126, NULL, NULL),
(127, 1, 3, 3, 3, 'ADM00914', 'Algor?tmos y programaci?n;3', '1', '', '', '', '', '', '', '', '', '127', 0, NULL, NULL),
(128, 1, 3, 3, 3, 'ADM00008', 'Principios de econom?a', '3', '2', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(129, 1, 3, 3, 3, 'CBS00005', '?lgebra lineal', '3', '2', 'CBS00024', 'Geometr?a', '', '', '', '', '', '', 127, NULL, NULL),
(130, 1, 3, 3, 3, 'CBS00009', 'C?lculo diferencial', '3', '2', 'CBS00401', 'Matem?ticas', '', '', '', '', '', '', 127, NULL, NULL),
(132, 1, 3, 3, 3, 'ADM00915', 'Contabilidad, costos y presupuestos', '3', '2', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(133, 1, 3, 3, 3, 'ADM00916', 'Teor?a general de sistemas', '1', '2', 'ADM00913', 'C?tedra institucional', '', '', '', '', '', '', 127, NULL, NULL),
(134, 1, 3, 3, 3, 'CBS00010', 'C?lculo integral', '3', '3', 'CBS00009', '', '', '', '', '', '', '', 127, NULL, NULL),
(135, 1, 3, 3, 3, 'CBS00079', 'F?sica del movimiento', '4', '3', 'CBS00009', 'C?lculo diferencial', '', '', '', '', '', '', 127, NULL, NULL),
(136, 1, 3, 3, 3, 'ADM00381', 'Principios de producci?n y productividad', '3', '3', 'ADM00916', 'Teor?a general de sistemas', '', '', '', '', '', '', 127, NULL, NULL),
(137, 1, 3, 3, 3, 'ADM00917', 'Principios de calidad', '3', '3', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(141, 1, 3, 3, 3, 'ADM00005', 'Estad?stica inferencial', '3', '4', 'CBS00074', 'Estad?stica', '', '', '', '', '', '', 127, NULL, NULL),
(142, 1, 3, 3, 3, 'ADM00007', 'Ingenier?a econ?mica', '3', '4', 'ADM00915', 'Contabilidad, costos y presupuestos', 'ADM00008', 'Principios de econom?a', '', '', '', '', 127, NULL, NULL),
(144, 1, 3, 3, 3, 'CBS00014', 'Electricidad y magnetismo', '4', '4', 'CBS00010', 'C?lculo integral', '', '', '', '', '', '', 127, NULL, NULL),
(145, 1, 3, 3, 3, 'ADM00536', 'Gesti?n del talento humano', '2', '4', 'ADM00021', 'Administraci?n;', '', '', '', '', '', '145', 0, NULL, NULL),
(146, 1, 3, 3, 3, 'ADM00918', 'Ingenier?a del trabajo', '3', '4', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(147, 1, 3, 3, 3, 'CBS00011', 'C?lculo de varias variables optativa de fundamentaci?n b?sica', '3', '4', 'CBS00010', 'C?lculo integral', '', '', '', '', '', '', 127, NULL, NULL),
(148, 1, 3, 3, 3, 'CBS00013', 'Ecuaciones diferenciales optativa de fundamentaci?n b?sica', '3', '4', 'CBS00010', 'C?lculo integral', '', '', '', '', '', '', 127, NULL, NULL),
(149, 1, 3, 3, 3, 'ADM00948', 'M?todos num?ricos optativa de fundamentaci?n b?sica', '3', '4', 'CBS00010', 'C?lculo integral', '', '', '', '', '', '', 127, NULL, NULL),
(150, 1, 3, 3, 3, 'ADM00096', 'Equipos y procesos industriales', '3', '5', 'CBS00079', 'F?sica del movimiento', '', '', '', '', '', '', 127, NULL, NULL),
(151, 1, 3, 3, 3, 'ADM00168', 'Control estad?stica de calidad', '3', '5', 'ADM00005', '?lgebra lineal', 'ADM00917', 'Principios de calidad', '', '', '', '', 127, NULL, NULL),
(153, 1, 3, 3, 3, 'CBS00035', 'Metodolog?a de la investigaci?n;2', '5', 'CBS00074', 'Estad?stica', '', '', '', '', '', '', '153', 0, NULL, NULL),
(154, 1, 3, 3, 3, 'ADM00023', 'Administraci?n de salarios optativa administrativa', '3', '5', 'ADM00007', 'Ingenier?a econ?mica', '', '', '', '', '', '', 127, NULL, NULL),
(155, 1, 3, 3, 3, 'ADM00278', 'Gesti?n de mercados optativa administrativa', '3', '5', 'ADM00007', 'Ingenier?a econ?mica', '', '', '', '', '', '', 127, NULL, NULL),
(156, 1, 3, 3, 3, 'ADM00919', 'Gesti?n financiera optativa administrativa', '3', '5', 'ADM00007', 'Ingenier?a econ?mica', '', '', '', '', '', '', 127, NULL, NULL),
(157, 1, 3, 3, 3, 'ADM00920', 'Gesti?n de empresas publicas', '3', '5', 'ADM00007', 'Ingenier?a econ?mica', '', '', '', '', '', '', 127, NULL, NULL),
(158, 1, 3, 3, 3, 'ADM00921', 'Dise?o de experimentos optativa en m?todos estad?sticos', '3', '5', 'ADM00005', '?lgebra lineal', '', '', '', '', '', '', 127, NULL, NULL),
(159, 1, 3, 3, 3, 'ADM00922', 'Estad?stica no param?trica optativa en m?todos estad?sticos', '3', '5', 'ADM00005', '?lgebra lineal', '', '', '', '', '', '', 127, NULL, NULL),
(160, 1, 3, 3, 3, 'ADM00172', 'Modelos cuantitativos de producci?n 1', '3', '6', 'CBS00005', '?lgebra lineal', 'ADM00914', 'Algor?tmos y programaci?n;', '', '', '', '160', 0, NULL, NULL),
(162, 1, 3, 3, 3, 'ADM00177', 'Procesos de manufactura', '3', '6', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(163, 1, 3, 3, 3, 'ADM00924', 'Proyecto integrador 1', '2', '6', 'ADM00917', 'Principios de calidad', 'ADM00381', 'Principios de producci?n y productividad', '', '', '', '', 127, NULL, NULL),
(165, 1, 3, 3, 3, 'ADM00925', 'Gesti?n de la calidad', '3', '6', 'ADM00917', 'Principios de calidad', '', '', '', '', '', '', 127, NULL, NULL),
(166, 1, 3, 3, 3, 'ADM00926', 'Fundamentos de administraci?n de la producci?n;3', '6', 'ADM00918', 'Ingenier?a del trabajo', 'ADM00381', 'Principios de producci?n y productividad', '', '', '', '', '166', 0, NULL, NULL),
(168, 1, 3, 3, 3, 'CDI00046', 'Ingl?s 4', '2', '6', 'CDI00019', '', '', '', '', '', '', '', 127, NULL, NULL),
(169, 1, 3, 3, 3, 'ADM00928', 'Modelos y auditoria de sistemas de gesti?n;3', '7', 'ADM00925', 'Gesti?n de la calidad', '', '', '', '', '', '', '169', 0, NULL, NULL),
(170, 1, 3, 3, 3, 'ADM00929', 'Ingenier?a de calidad', '3', '7', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(171, 1, 3, 3, 3, 'EFD00230', 'Deporte, arte y recreaci?n;1', '7', '', '', '', '', '', '', '', '', '171', 0, NULL, NULL),
(172, 1, 3, 3, 3, 'ADM00927', 'Herramientas avanzadas de productividad', '3', '7', 'ADM00926', 'Fundamentos de administraci?n de la producci?n;', '', '', '', '', '', '172', 0, NULL, NULL),
(173, 1, 3, 3, 3, 'CDI00047', 'Ingl?s 5', '2', '7', 'CDI00046', '', '', '', '', '', '', '', 127, NULL, NULL),
(174, 1, 3, 3, 3, 'ADM00174', 'Modelos cuantitativos de producci?n 2 optativa en modelaci?n;3', '7', 'ADM00172', 'Modelos cuantitativos de producci?n 1', '', '', '', '', '', '', '174', 0, NULL, NULL),
(175, 1, 3, 3, 3, 'ING00017', 'Modelos y simulaci?n optativa en modelaci?n;3', '7', 'ADM00172', 'Modelos cuantitativos de producci?n 1', '', '', '', '', '', '', '175', 0, NULL, NULL),
(176, 1, 3, 3, 3, 'ADM00930', 'Teor?a de decisiones optativa en modelaci?n;3', '7', 'ADM00172', 'Modelos cuantitativos de producci?n 1', '', '', '', '', '', '', '176', 0, NULL, NULL),
(177, 1, 3, 3, 3, 'ADM00860', 'Log?stica inversa optativa profesional 1', '3', '7', 'ADM00925', 'Gesti?n de la calidad', '', '', '', '', '', '', 127, NULL, NULL),
(178, 1, 3, 3, 3, 'ADM00861', 'Legislaci?n aduanera optativa profesional 1', '3', '7', 'ADM00925', 'Gesti?n de la calidad', '', '', '', '', '', '', 127, NULL, NULL),
(180, 1, 3, 3, 3, 'ADM00179', 'Gerencia de operaciones', '3', '8', 'ADM00927', 'Herramientas avanzadas de productividad', '', '', '', '', '', '', 127, NULL, NULL),
(183, 1, 3, 3, 3, 'ADM00189', 'Distribuci?n f?sica internacional optativa profesional 2', '3', '8', 'ADM00861', 'Legislaci?n aduanera optativa profesional 1', 'ADM860', 'Log?stica inversa optativa profesional 1', '', '', '', '', 127, NULL, NULL),
(185, 1, 3, 3, 3, 'ADM00933', 'Gesti?n del mejoramiento optativa profesional 2', '3', '8', 'ADM00861', 'Legislaci?n aduanera optativa profesional 1', 'ADM860', 'Log?stica inversa optativa profesional 1', '', '', '', '', 127, NULL, NULL),
(187, 1, 3, 3, 3, 'ADM00932', 'Gesti?n metrol?gica', '3', '8', 'ADM00168', 'Control estad?stica de calidad', '', '', '', '', '', '', 127, NULL, NULL),
(188, 1, 3, 3, 3, 'CDI00048', 'Ingl?s 6', '2', '8', 'CDI00047', 'Ingl?s 5', '', '', '', '', '', '', 127, NULL, NULL),
(189, 1, 3, 3, 3, 'ADM00053', 'Ciencia de los materiales optativa procesos de manufactura', '3', '9', 'ADM00177', 'Procesos de manufactura', '', '', '', '', '', '', 127, NULL, NULL),
(190, 1, 3, 3, 3, 'ADM00175', 'Taller m?quinas y herramientas optativa procesos de manufactura', '3', '9', 'ADM00177', 'Procesos de manufactura', '', '', '', '', '', '', 127, NULL, NULL),
(191, 1, 3, 3, 3, 'ADM00935', 'Dise?o de sistemas de manufactura proyecto optativa procesos de manufactura', '3', '9', 'ADM00177', 'Procesos de manufactura', '', '', '', '', '', '', 127, NULL, NULL),
(192, 1, 3, 3, 3, 'ADM00934', 'Gesti?n ambiental', '3', '9', 'CAG00100', '', 'ADM00925', 'Gesti?n de la calidad', '', '', '', '', 127, NULL, NULL),
(194, 1, 3, 3, 3, 'ADM00936', 'Gerencia de la productividad', '3', '10', 'ADM00179', 'Gerencia de operaciones', '', '', '', '', '', '', 127, NULL, NULL),
(195, 1, 3, 3, 3, 'ADM00945', 'Trabajo de grado', '8', '10', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(196, 6, 17, 4, 21, 'CBS00406', 'Algebra y Trigonometr?a', '3', '1', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(199, 6, 17, 4, 21, 'CBS00407', 'Qu?mica General', '4', '1', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(205, 6, 17, 4, 21, 'ING01114', 'Fundamentos de Programaci?n;3', '2', '', '', '', '', '', '', '', '', '205', 0, NULL, NULL),
(206, 6, 17, 4, 21, 'ING01113', 'Dibujo Asistido por Computador', '2', '2', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(207, 6, 17, 4, 21, 'CBS00031', 'Electiva Humanidades 1', '2', '2', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(209, 6, 17, 4, 21, 'CBS00409', 'F?sica de Ondas y ?ptica', '4', '3', 'CBS00405', 'F?sica del Movimiento', '', '', '', '', '', '', 127, NULL, NULL),
(210, 6, 17, 4, 21, 'ING01131', 'Geolog?a para Ingenieros', '3', '3', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(211, 6, 17, 4, 21, 'ING01132', 'Materiales De La Ingenier?a', '3', '3', 'CBS00407', 'Qu?mica General', '', '', '', '', '', '', 127, NULL, NULL),
(212, 6, 17, 4, 21, 'ING01003', 'Topograf?a', '4', '3', 'ING01113', 'Dibujo Asistido por Computador', 'CBS00375', 'Geometr?a', '', '', '', '', 127, NULL, NULL),
(213, 6, 17, 4, 21, 'CBS00410', 'Calculo Multivariado', '3', '4', 'CBS00382', 'C?lculo Integral', '', '', '', '', '', '', 127, NULL, NULL),
(214, 6, 17, 4, 21, 'CBS00411', 'Estad?stica y Probabilidades', '3', '4', 'CBS00382', 'C?lculo Integral', '', '', '', '', '', '', 127, NULL, NULL),
(215, 6, 17, 4, 21, 'ING01116', 'Est?tica', '3', '4', 'CBS00405', 'F?sica del Movimiento', '', '', '', '', '', '', 127, NULL, NULL),
(216, 6, 17, 4, 21, 'ING01133', 'Geom?tica', '3', '4', 'ING01003', 'Topograf?a', '', '', '', '', '', '', 127, NULL, NULL),
(217, 6, 17, 4, 21, 'ING00116', 'Dise?o Geom?trico de V?as', '4', '4', 'ING01003', 'Topograf?a', '', '', '', '', '', '', 127, NULL, NULL),
(219, 6, 17, 4, 21, 'CBS00412', 'Ecuaciones Diferenciales', '3', '5', 'CBS00382', 'C?lculo Integral', '', '', '', '', '', '', 127, NULL, NULL),
(220, 6, 17, 4, 21, 'ING01115', 'Mec?nica de Fluidos', '3', '5', 'CBS00410', 'Calculo Multivariado', '', '', '', '', '', '', 127, NULL, NULL),
(221, 6, 17, 4, 21, 'ING01134', 'Mec?nica De Solidos', '4', '5', 'ING01116', 'Est?tica', '', '', '', '', '', '', 127, NULL, NULL),
(222, 6, 17, 4, 21, 'ING01135', 'Construcci?n de Edificaciones', '3', '5', 'ING01132', 'Materiales De La Ingenier?a', '', '', '', '', '', '', 127, NULL, NULL),
(223, 6, 17, 4, 21, 'ING01136', 'Construcci?n de V?as', '3', '5', 'ING00116', 'Dise?o Geom?trico de V?as', '', '', '', '', '', '', 127, NULL, NULL),
(224, 6, 17, 4, 21, 'ING01222', 'M?todos Num?ricos', '3', '6', 'CBS00412', 'Ecuaciones Diferenciales', '', '', '', '', '', '', 127, NULL, NULL),
(225, 6, 17, 4, 21, 'ING01137', 'Hidrolog?a', '3', '6', 'ING01133', 'Geom?tica', '', '', '', '', '', '', 127, NULL, NULL),
(226, 6, 17, 4, 21, 'ING01005', 'Mec?nica de Suelos', '4', '6', 'ING01131', 'Geolog?a para Ingenieros', '', '', '', '', '', '', 127, NULL, NULL),
(227, 6, 17, 4, 21, 'ING01138', 'An?lisis Cl?sico de Estructuras', '3', '6', 'ING01134', 'Mec?nica De Solidos', '', '', '', '', '', '', 127, NULL, NULL),
(228, 6, 17, 4, 21, 'ING01124', 'Costos y Programaci?n de Obras Civiles', '3', '6', 'ING01135', 'Construcci?n de Edificaciones', '', '', '', '', '', '', 127, NULL, NULL),
(229, 6, 17, 4, 21, 'ING01139', 'Ingenier?a de Transito', '3', '6', '', '90 Cr?ditos', '', '', '', '', '', '', 127, NULL, NULL),
(230, 6, 17, 4, 21, 'ING01140', 'Hidr?ulica', '6', '7', 'ING01115', 'Mec?nica de Fluidos', '', '', '', '', '', '', 127, NULL, NULL),
(231, 6, 17, 4, 21, 'ING01141', 'Cimentaciones', '3', '7', 'ING01005', 'Mec?nica de Suelos', '', '', '', '', '', '', 127, NULL, NULL),
(232, 6, 17, 4, 21, 'ING01142', 'An?lisis Matricial de Estructuras', '3', '7', 'ING01138', 'An?lisis Cl?sico de Estructuras', '', '', '', '', '', '', 127, NULL, NULL),
(233, 6, 17, 4, 21, 'ING01127', 'Interventor?a de Obras Civiles', '3', '7', 'ING01124', 'Costos y Programaci?n de Obras Civiles', '', '', '', '', '', '', 127, NULL, NULL),
(235, 6, 17, 4, 21, 'CBS00032', 'Electiva Humanidades 2', '2', '7', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(236, 6, 17, 4, 21, 'ING00114', 'Pavimentos', '4', '8', 'ING01005', 'Mec?nica de Suelos', '', '', '', '', '', '', 127, NULL, NULL),
(237, 6, 17, 4, 21, 'ING01143', 'Dise?o de Estructuras en Hormig?n 1', '4', '8', 'ING01142', 'An?lisis Matricial de Estructuras', '', '', '', '', '', '', 127, NULL, NULL),
(239, 6, 17, 4, 21, 'ING01145', 'Acueductos y Alcantarillados', '3', '9', 'ING01140', 'Hidr?ulica', '', '', '', '', '', '', 127, NULL, NULL),
(240, 6, 17, 4, 21, 'ING01146', 'Dise?o de Estructuras en Hormig?n 2', '3', '9', 'ING01143', 'Dise?o de Estructuras en Hormig?n 1', '', '', '', '', '', '', 127, NULL, NULL),
(243, 6, 17, 4, 21, 'ING01148', 'Emprendimiento e Innovaci?n;3', '10', '', '', '', '', '', '', '', '', '243', 0, NULL, NULL),
(247, 6, 16, 5, 22, 'ING01261', 'Introducci?n a la Ingenier?a Seguridad y salud en el Trabajo', '2', '1', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(248, 6, 16, 5, 22, 'CBS00027', 'Qu?mica', '6', '1', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(249, 6, 16, 5, 22, 'CBS00403', 'Humanidades', '2', '1', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(250, 6, 16, 5, 22, 'ING01262', 'Hojas de Calculo', '2', '1', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(252, 6, 16, 5, 22, 'CBS00238', 'Qu?mica Org?nica', '3', '2', 'CBS00027', 'Qu?mica', '', '', '', '', '', '', 127, NULL, NULL),
(253, 6, 16, 5, 22, 'CBS00005', 'Algebra Lineal', '3', '2', 'CBS00024', 'Geometr?a', '', '', '', '', '', '', 127, NULL, NULL),
(254, 6, 16, 5, 22, 'ING01263', 'Procesos y Operaciones Seguras', '3', '2', 'ING01261', 'Introducci?n a la Ingenier?a Seguridad y salud en el Trabajo', '', '', '', '', '', '', 127, NULL, NULL),
(255, 6, 16, 5, 22, 'ING00963', 'Dibujo', '3', '2', 'CBS00024', 'Geometr?a', '', '', '', '', '', '', 127, NULL, NULL),
(259, 6, 16, 5, 22, 'ING01264', 'Riesgo Mec?nico', '3', '3', 'ING01263', 'Procesos y Operaciones Seguras', '', '', '', '', '', '', 127, NULL, NULL),
(260, 6, 16, 5, 22, 'ING00740', 'Metodolog?a de la Investigaci?n;3', '3', '', '', '', '', '', '', '', '', '260', 0, NULL, NULL),
(261, 6, 16, 5, 22, 'INGO1265', 'Procesos Industriales', '2', '3', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(262, 6, 16, 5, 22, 'CBS00011', 'C?lculo de varias variables', '3', '4', 'CBS00010', 'C?lculo Integral', '', '', '', '', '', '', 127, NULL, NULL),
(263, 6, 16, 5, 22, 'ING00409', 'Segur. Trabajo de alto Riesgo', '3', '4', 'ING01264', 'Riesgo Mec?nico', '', '', '', '', '', '', 127, NULL, NULL),
(265, 6, 16, 5, 22, 'ING00991', 'Termodin?mica', '3', '4', 'CBS00010', 'C?lculo Integral', '', '', '', '', '', '', 127, NULL, NULL),
(266, 6, 16, 5, 22, 'ADM00380', 'Finanzas B?sicas', '2', '4', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(267, 6, 16, 5, 22, 'ING01266', 'Fundamentos de Electricidad y Magnetismo', '2', '4', 'CBS00079', 'F?sica del Movimiento', '', '', '', '', '', '', 127, NULL, NULL),
(270, 6, 16, 5, 22, 'ING01267', 'Protecci?n Radiol?gica', '3', '5', 'ING01266', 'Fundamentos de Electricidad y Magnetismo', '', '', '', '', '', '', 127, NULL, NULL),
(271, 6, 16, 5, 22, 'ING01268', 'Seguridad El?ctrica', '2', '5', 'ING01266', 'Fundamentos de Electricidad y Magnetismo', '', '', '', '', '', '', 127, NULL, NULL),
(272, 6, 16, 5, 22, 'ING01269', 'Gesti?n del Riesgo de Emergencias y Desastres', '', '5', 'ING00409', 'Segur. Trabajo de alto Riesgo', '', '', '', '', '', '', 127, NULL, NULL),
(273, 6, 16, 5, 22, 'ING01270', 'Anatom?a', '', '5', '', 'Restricci?n por tipolog?a Tod 65 cr?ditos', '', 'Consecutivo 1 Grupo 1 Manual 1', '', '', '', '', 127, NULL, NULL),
(274, 6, 16, 5, 22, 'ING01272', 'Dise?o de Redes contra Incendios', '3', '6', 'ING00712', 'Mec?nica de Fluidos', '', '', '', '', '', '', 127, NULL, NULL),
(275, 6, 16, 5, 22, 'ING00199', 'Ventilaci?n Industrial', '4', '6', 'ING00712', 'Mec?nica de Fluidos', '', '', '', '', '', '', 127, NULL, NULL),
(276, 6, 16, 5, 22, 'ING01271', 'Estad?stica Aplicada a la Seguridad y Salud en el Trabajo', '3', '6', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(277, 6, 16, 5, 22, 'ING01273', 'Iluminaci?n;2', '6', 'ING01268', 'Seguridad El?ctrica', '', '', '', '', '', '', '277', 0, NULL, NULL),
(278, 6, 16, 5, 22, 'ING00400', 'Medicina del Trabajo', '3', '6', 'ING01270', 'Anatom?a', '', '', '', '', '', '', 127, NULL, NULL),
(280, 6, 16, 5, 22, 'ING01275', 'Androlog?a en Seguridad y Salud en el Trabajo', '2', '7', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(281, 6, 16, 5, 22, 'ING00994', 'Temperaturas Extremas', '3', '7', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(282, 6, 16, 5, 22, 'ING00957', 'Dise?o de Equipos de limpieza de aire', '3', '7', 'ING00199', 'Ventilaci?n Industrial', '', '', '', '', '', '', 127, NULL, NULL),
(283, 6, 16, 5, 22, 'ING00958', 'Ruido', '3', '7', 'ING00199', 'Ventilaci?n Industrial', '', '', '', '', '', '', 127, NULL, NULL),
(284, 6, 16, 5, 22, 'ING01283', 'Electiva 1-IHSO', '2', '7', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(285, 6, 16, 5, 22, 'ING00163', 'Ergonom?a', '3', '7', 'ING00400', 'Medicina del Trabajo', '', '', '', '', '', '', 127, NULL, NULL),
(288, 6, 16, 5, 22, 'ING01277', 'Riesgo Qu?mico', '3', '8', 'ING00957', 'Dise?o de Equipos de limpieza de aire', '', '', '', '', '', '', 127, NULL, NULL),
(289, 6, 16, 5, 22, 'ING00997', 'Vibraciones', '3', '8', 'ING00958', 'Ruido', '', '', '', '', '', '', 127, NULL, NULL),
(290, 6, 16, 5, 22, 'ING01322', 'Gerencia de Salud Ocupacional', '3', '8', 'ING01274', 'Legislaci?n Laboral', '', '', '', '', '', '', 127, NULL, NULL),
(291, 6, 16, 5, 22, 'ING01278', 'Riesgos Psicosociales', '2', '8', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(292, 6, 16, 5, 22, 'ING00999', 'Toxicolog?a', '2', '8', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(293, 6, 16, 5, 22, 'ING01279', 'Riesgo Biol?gico', '2', '8', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(295, 6, 16, 5, 22, 'ING01284', 'Electiva 2-IHSO', '2', '9', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(297, 6, 16, 5, 22, 'ING01280', 'Proyecto Integrador', '2', '9', '', 'Restricci?n por tipolog?a TOD 134 cred', '', '', '', '', '', '', 127, NULL, NULL),
(298, 6, 16, 5, 22, 'ING01281', 'Vigilancia Epidemiol?gica', '3', '9', 'ING00999', 'Toxicolog?a', '', '', '', '', '', '', 127, NULL, NULL),
(299, 6, 16, 5, 22, 'ING01282', 'Control de Perdidas', '2', '9', 'ING01322', 'Gerencia de Salud Ocupacional', '', '', '', '', '', '', 127, NULL, NULL),
(301, 6, 17, 6, 23, 'CBS00001', 'MATEMATICAS', '4', '1', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(302, 6, 17, 6, 23, 'CBS00027', 'QUIMICA', '4', '1', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(305, 6, 17, 6, 23, 'CBS00425', 'GEOMETRIA VECTORIAL', '3', '1', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(306, 6, 17, 6, 23, 'ING01247', 'INTRODUCCION A LA AUTOMATIZACION', '1', '1', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(307, 6, 17, 6, 23, 'CBS00009', 'CALCULO DIFERENCIAL', '3', '2', 'CBS00001', 'MATEMATICAS', '', '', '', '', '', '', 127, NULL, NULL),
(308, 6, 17, 6, 23, 'CBS00074', 'ESTADISTICA', '3', '2', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(309, 6, 17, 6, 23, 'CBS00079', 'FISICA DELMOVIMIENTO', '4', '2', 'CBS00425', 'GEOMETRIA VECTORIAL', 'CBS00027', 'QUIMICA', '', '', '', '', 127, NULL, NULL),
(310, 6, 17, 6, 23, 'CBS00097', 'PEDAGOGIA CONSTITUCIONAL', '1', '2', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(311, 6, 17, 6, 23, 'ING00057', 'CIRCUITOS ELECTRICOS 1', '3', '2', 'ING01247', 'INTRODUCCION A LA AUTOMATIZACION', '', '', '', '', '', '', 127, NULL, NULL),
(312, 6, 17, 6, 23, 'ING01248', 'PROGRAMACION BASICA', '3', '2', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(313, 6, 17, 6, 23, 'CBS00010', 'CALCULO INTEGRAL', '3', '3', 'CBS00009', 'CALCULO DIFERENCIAL', '', '', '', '', '', '', 127, NULL, NULL),
(314, 6, 17, 6, 23, 'EFD00230', 'DEPORTE,ARTE Y RECREACION', '1', '3', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(315, 6, 17, 6, 23, 'ING00058', 'CIRCUITOS ELECTRICOS 2', '3', '3', 'ING00057', 'CIRCUITOS ELECTRICOS 1', '', '', '', '', '', '', 127, NULL, NULL),
(316, 6, 17, 6, 23, 'ING00075', 'ELECTRONICA ANALOGA 1', '3', '3', 'ING00057', 'CIRCUITOS ELECTRICOS 1', '', '', '', '', '', '', 127, NULL, NULL),
(318, 6, 17, 6, 23, 'ING01249', 'MEDICION E INSTRUMENTACION INDUSTRIAL 1', '3', '3', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(319, 6, 17, 6, 23, 'CBS00011', 'CALCULO DE VARIAS VARIABLES', '3', '4', 'CBS00010', 'CALCULO INTEGRAL', '', '', '', '', '', '', 127, NULL, NULL),
(322, 6, 17, 6, 23, 'CBS00102', 'ETICA', '1', '4', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(323, 6, 17, 6, 23, 'ING00076', 'ELECTRONICA ANALOGA 2', '3', '4', 'ING00058', 'CIRCUITOS ELECTRICOS 2', 'ING00075', 'ELECTRONICA ANALOGA 1', '', '', '', '', 127, NULL, NULL),
(324, 6, 17, 6, 23, 'ING01250', 'MEDICION E INSTRUMENTACION INDUSTRIAL 2', '3', '4', 'ING01249', 'MEDICION E INSTRUMENTACION INDUSTRIAL 1', '', '', '', '', '', '', 127, NULL, NULL),
(326, 6, 17, 6, 23, 'ING00232', 'METROLOGIA', '3', '5', 'CBS00074', 'ESTADISTICA', 'ING01250', 'MEDICION E INSTRUMENTACION INDUSTRIAL 2', '', '', '', '', 127, NULL, NULL),
(327, 6, 17, 6, 23, 'CBS00413', 'METODOS NUMERICOS', '3', '5', 'CBS00011', 'CALCULO DE VARIAS VARIABLES', '', '', '', '', '', '', 127, NULL, NULL),
(328, 6, 17, 6, 23, 'ING01253', 'TERMODINAMICA', '3', '5', 'CBS00010', 'CALCULO INTEGRAL', '', '', '', '', '', '', 127, NULL, NULL),
(329, 6, 17, 6, 23, 'ING01254', 'ELECTRONICA DIGITAL Y MICROCONTROLADORES', '3', '5', 'ING00058', 'CIRCUITOS ELECTRICOS 2', '', '', '', '', '', '', 127, NULL, NULL),
(330, 6, 17, 6, 23, 'ING01255', 'ELECTRONEUMATICA Y PLC', '3', '5', 'CBS00014', 'ELECTRICIDAD Y MAGNETISMO', 'ING01248', 'PROGRAMACION BASICA', '', '', '', '', 127, NULL, NULL),
(331, 6, 17, 6, 23, 'CAG00100', 'ECOLOGIA', '2', '6', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(333, 6, 17, 6, 23, 'ING00284', 'MATEMATICAS ESPECIALES', '3', '6', 'CBS00013', 'ECUACIONES DIFERENCIALES', '', '', '', '', '', '', 127, NULL, NULL),
(334, 6, 17, 6, 23, 'ING01258', 'AUTOMATIZACION DE MAQUINAS ELECTRICAS', '3', '6', 'ING00058', 'CIRCUITOS ELECTRICOS 2', '', '', '', '', '', '', 127, NULL, NULL),
(335, 6, 17, 6, 23, 'ING01259', 'MANTENIMIENTO INDUSTRIAL', '2', '6', '', 'TOPE CREDITO 70', '', '', '', '', '', '', 127, NULL, NULL),
(336, 6, 17, 6, 23, 'ING01328', 'PROGRAMACION AVANZADA', '2', '6', 'ING01248', 'PROGRAMACION BASICA', '', '', '', '', '', '', 127, NULL, NULL),
(337, 6, 17, 6, 23, 'ING01329', 'SE?ALES Y SISTEMAS', '3', '7', 'ING00284', 'MATEMATICAS ESPECIALES', '', '', '', '', '', '', 127, NULL, NULL),
(338, 6, 17, 6, 23, 'ING01330', 'MODELACION Y SIMULACION DE SISTEMAS', '3', '7', 'CBS00408', 'ALGEBRA LINEAL', 'CBS00413', 'METODOS NUMERICOS', '', '', '', '', 127, NULL, NULL),
(339, 6, 17, 6, 23, 'ING01331', 'MECATRONICA', '3', '7', 'ING01254', 'ELECTRONICA DIGITAL Y MICROCONTROLADORES', '', '', '', '', '', '', 127, NULL, NULL),
(340, 6, 17, 6, 23, 'ING01332', 'SISTEMAS EMBEBIDOS', '3', '7', 'ING01254', 'ELECTRONICA DIGITAL Y MICROCONTROLADORES', '', '', '', '', '', '', 127, NULL, NULL),
(342, 6, 17, 6, 23, 'ING00211', 'IDENTIFICACION DE SISTEMAS', '3', '8', 'ING01330', 'MODELACION Y SIMULACION DE SISTEMAS', '', '', '', '', '', '', 127, NULL, NULL),
(343, 6, 17, 6, 23, 'ING01334', 'MATERIALES DE INGENIERIA', '3', '8', 'ING00092', 'PROCESOS INDUSTRIALES', '', '', '', '', '', '', 127, NULL, NULL),
(344, 6, 17, 6, 23, 'ING01335', 'ROBOTICA DEL SERVICIO', '3', '8', 'ING01331', 'MECATRONICA', '', '', '', '', '', '', 127, NULL, NULL),
(345, 6, 17, 6, 23, 'ING01336', 'INTELIGENCIA ARTIFICIAL', '3', '8', '', 'TOPE CREDITO 90', '', '', '', '', '', '', 127, NULL, NULL),
(346, 6, 17, 6, 23, 'ING01337', 'FORMULACION Y EVALUACION DE PROYECTOS', '3', '8', '', 'TOPE CREDITO 90', '', '', '', '', '', '', 127, NULL, NULL),
(347, 6, 17, 6, 23, 'ING01338', 'CONTROL ANALOGO Y DIGITAL', '3', '9', 'ING00211', 'IDENTIFICACION DE SISTEMAS', 'ING00284', 'MATEMATICAS ESPECIALES', '', '', '', '', 127, NULL, NULL),
(348, 6, 17, 6, 23, 'ING01339', 'ROBOTICA INDUSTRIAL', '3', '9', 'ING01335', 'ROBOTICA DEL SERVICIO', '', '', '', '', '', '', 127, NULL, NULL),
(349, 6, 17, 6, 23, 'ING01340', 'AUTOMATIZACION AVANZADA', '3', '9', 'ING01258', 'AUTOMATIZACION DE MAQUINAS ELECTRICAS', '', '', '', '', '', '', 127, NULL, NULL),
(350, 6, 17, 6, 23, 'ING01341', 'FUNDAMENTOS DE INVESTIGACION', '3', '9', '', 'TOPE CREDITO 110', '', '', '', '', '', '', 127, NULL, NULL),
(351, 6, 17, 6, 23, 'ING01342', 'CONTROL AVANZADO', '3', '10', 'ING01338', 'CONTROL ANALOGO Y DIGITAL', '', '', '', '', '', '', 127, NULL, NULL),
(352, 6, 17, 6, 23, 'ING01343', 'CONTROL INTELIGENTE', '3', '10', 'ING01336', 'INTELIGENCIA ARTIFICIAL', '', '', '', '', '', '', 127, NULL, NULL),
(353, 6, 17, 6, 23, 'ING01344', 'COMUNICACIONES INDUSTRIALES', '3', '10', 'ING01340', 'AUTOMATIZACION AVANZADA', '', '', '', '', '', '', 127, NULL, NULL),
(354, 6, 17, 6, 23, 'ING01345', 'TRABAJO DE GRADO / PRACTICA', '4', '10', 'ING01341', 'FUNDAMENTOS DE INVESTIGACION', '', '', '', '', '', '', 127, NULL, NULL),
(356, 6, 18, 7, 24, 'ING01179', 'Algoritmos y programaci?n 1', '4', '1', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(359, 6, 18, 7, 24, 'CBS00031', 'Humanidades 1', '2', '1', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(360, 6, 18, 7, 24, 'ING01180', 'Matem?ticas discretas 1', '4', '1', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(361, 6, 18, 7, 24, 'ING01181', 'Algoritmos y programaci?n 2', '4', '2', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(362, 6, 18, 7, 24, 'ING01182', 'Matem?ticas discretas 2', '4', '2', 'ING01179', 'Algoritmos y programaci?n 1', '', '', '', '', '', '', 127, NULL, NULL),
(364, 6, 18, 7, 24, 'CBS00414', 'Geometr?a vectorial', '3', '2', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(366, 6, 18, 7, 24, 'EFD00533', 'Deporte arte y recreaci?n;1', '2', 'CBS00379', 'C?lculo Diferencial', '', '', '', '', '', '', '366', 0, NULL, NULL),
(367, 6, 18, 7, 24, 'ING01183', 'Algoritmos y programaci?n 3', '3', '3', 'ING01181', 'Algoritmos y programaci?n 2', '', '', '', '', '', '', 127, NULL, NULL),
(368, 6, 18, 7, 24, 'ING01184', 'Taller de lenguajes de programaci?n 1', '2', '3', 'ING01181', 'Algoritmos y programaci?n 2', '', '', '', '', '', '', 127, NULL, NULL),
(369, 6, 18, 7, 24, 'ING01185', 'Semi?tica inform?tica', '2', '3', 'ING01178', 'Introducci?n al ?rea profesional', '', '', 'CBS00408', 'Algebra lineal', '', '', 127, NULL, NULL),
(374, 6, 18, 7, 24, 'ING01186', 'Algoritmos y programaci?n 4', '3', '4', 'ING01183', 'Algoritmos y programaci?n 3', '', '', '', '', '', '', 127, NULL, NULL),
(375, 6, 18, 7, 24, 'ING01187', 'An?lisis de Software', '4', '4', 'ING01185 ', 'Semi?tica inform?tica', 'ING01184', '', '', '', '', '', 127, NULL, NULL),
(376, 6, 18, 7, 24, 'ING01188', 'Bases de datos 1', '4', '4', 'ING01182', 'Matem?ticas discretas 2', '', '', '', '', '', '', 127, NULL, NULL),
(378, 6, 18, 7, 24, 'ING00078', 'Electr?nica digital', '4', '4', 'CBS00079', 'F?sica del Movimiento', '', '', '', '', '', '', 127, NULL, NULL),
(379, 6, 18, 7, 24, 'ING01189', 'Taller de lenguajes de programaci?n 2', '2', '5', 'ING01186', 'Algoritmos y programaci?n 4', '', '', '', '', '', '', 127, NULL, NULL),
(380, 6, 18, 7, 24, 'ING01190', 'Dise?o de Software', '4', '5', 'ING01188 ', 'Bases de datos 1', 'ING01187', 'An?lisis de Software', '', '', '', '', 127, NULL, NULL),
(381, 6, 18, 7, 24, 'ING01191', 'Arquitectura de Hardware', '4', '5', 'ING00078', 'Electr?nica digital', '', '', '', '', '', '', 127, NULL, NULL),
(382, 6, 18, 7, 24, 'ING01192', 'Teor?a de lenguajes y compiladores', '4', '5', 'ING01182', 'Matem?ticas discretas 2', '', '', '', '', '', '', 127, NULL, NULL),
(383, 6, 18, 7, 24, 'ING01193', 'Estad?stica Aplicada', '4', '5', 'CBS00382', 'Calculo Integral', '', '', '', '', '', '', 127, NULL, NULL),
(384, 6, 18, 7, 24, 'ING01194', 'Proyecto de Construcci?n de SW', '2', '6', 'ING01190', 'Dise?o de Software', '', '', '', '', '', '', 127, NULL, NULL),
(385, 6, 18, 7, 24, 'ING01195', 'Bases de datos 2', '3', '6', 'ING01188', 'Bases de datos 1', '', '', '', '', '', '', 127, NULL, NULL),
(386, 6, 18, 7, 24, 'ING01196', 'Sistemas Operativos', '4', '6', 'ING01191', 'Arquitectura de Hardware', '', '', '', '', '', '', 127, NULL, NULL),
(387, 6, 18, 7, 24, 'ING01197', 'Emprendimiento Empresarial TI', '2', '6', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(388, 6, 18, 7, 24, 'ING01198', 'Teor?a de la Informaci?n;3', '6', 'ING01193', 'Estad?stica Aplicada', '', '', '', '', '', '', '388', 0, NULL, NULL),
(389, 6, 18, 7, 24, 'ING01199', 'An?lisis num?rico', '4', '6', 'CBS00412', 'Ecuaciones diferenciales', 'CBS00408', 'Algebra lineal', '', '', '', '', 127, NULL, NULL),
(391, 6, 18, 7, 24, 'ING01201', 'Pruebas y gesti?n de la configuraci?n;2', '7', 'ING01194', 'Proyecto de Construcci?n de SW', '', '', '', '', '', '', '391', 0, NULL, NULL),
(392, 6, 18, 7, 24, 'ING01205', 'Sistemas y organizaciones', '2', '7', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(393, 6, 18, 7, 24, 'ING01202', 'Redes de Comunicaci?n;4', '7', 'ING01198', 'Teor?a de la Informaci?n;', '', '', '', '', '', '393', NULL, 0, NULL, NULL),
(397, 6, 18, 7, 24, 'ING01206', 'Programaci?n distribuida y paralela', '2', '8', 'ING01202 ', 'Redes de Comunicaci?n;ING01189', 'Taller de lenguajes de programaci?n 2', '', '', '', '', '397', 0, NULL, NULL),
(399, 6, 18, 7, 24, 'ING01208', 'Formulaci?n y evaluaci?n de proyectos de TI', '3', '8', 'ING01205 ', 'Sistemas y organizaciones', 'ING01194', 'Proyecto de Construcci?n de SW', '', '', '', '', 127, NULL, NULL),
(400, 6, 18, 7, 24, 'ING01209', 'Gesti?n de redes y servicios', '3', '8', 'ING01202', 'Redes de Comunicaci?n;', '', '', '', '', '', '400', 0, NULL, NULL),
(401, 6, 18, 7, 24, 'ING01225', 'Profundizaci?n 1', '3', '8', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(402, 6, 18, 7, 24, 'ING01210', 'Modelos y simulaci?n;3', '8', 'ING01203', 'Investigaci?n de operaciones', '', '', '', '', '', '', '402', 0, NULL, NULL),
(403, 6, 18, 7, 24, 'CBS00032', 'Humanidades 2', '2', '8', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(404, 6, 18, 7, 24, 'ING01211', 'Gesti?n de proyectos de TI', '3', '9', 'ING01208', 'Formulaci?n y evaluaci?n de proyectos de TI', '', '', '', '', '', '', 127, NULL, NULL),
(405, 6, 18, 7, 24, 'ING01226', 'Profundizaci?n 2', '3', '9', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(406, 6, 18, 7, 24, 'ING01228', 'Electiva 1', '2', '9', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(407, 6, 18, 7, 24, 'ING01229', 'Electiva 2', '2', '9', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(410, 6, 18, 7, 24, 'ING01227', 'Profundizaci?n 3', '2', '10', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(411, 6, 18, 7, 24, 'ING01230', 'Electiva 3', '2', '10', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(414, 2, 2, 8, 4, 'CAG00257', 'Matem?ticas I', '3', '1', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(415, 2, 4, 8, 4, 'CAG00258', 'T?cnicas de la comunicaci?n y producci?n de documentos escritos', '3', '1', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(416, 2, 4, 8, 4, 'CAG00259', 'Biolog?a', '3', '1', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(419, 2, 4, 8, 4, 'CAG00550', 'Anatom?a y bot?nica', '3', '2', 'CAG00259', 'Biolog?a', '', '', '', '', '', '', 127, NULL, NULL),
(420, 2, 4, 8, 4, 'CAG00284', 'Contabilidad general', '3', '2', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(421, 2, 4, 8, 4, 'CAG00262', 'Matem?ticas II', '3', '2', 'CAG00257', 'Matem?ticas I', '', '', '', '', '', '', 127, NULL, NULL),
(422, 2, 4, 8, 4, 'CAG00269', 'Microeconom?a', '2', '2', 'CAG00257', 'Matem?ticas I', '', '', '', '', '', '', 127, NULL, NULL),
(423, 2, 4, 8, 4, 'CAG00266', 'Agroecologia', '2', '2', 'CAG00261', 'Introducci?n al ?rea profesional', '', '', '', '', '', '', 127, NULL, NULL),
(424, 2, 4, 8, 4, 'CAG00265', 'Gesti?n organizacional', '3', '2', 'CAG00260', 'Fundamentos de administraci?n;', '', '', '', '', '', '424', 0, NULL, NULL),
(425, 2, 4, 8, 4, 'CAG00263', 'Sistemas de investigaci?n;2', '2', 'CAG00258', 'T?cnicas de la comunicaci?n y producci?n de documentos escritos', '', '', '', '', '', '', '425', 0, NULL, NULL),
(426, 2, 4, 8, 4, 'CAG00267', 'Biometr?a I', '3', '3', 'CAG00262', 'Matem?ticas II', '', '', '', '', '', '', 127, NULL, NULL),
(427, 2, 4, 8, 4, 'CAG00034', 'Contabilidad de costos', '3', '3', 'CAG00284', 'Contabilidad general', '', '', '', '', '', '', 127, NULL, NULL),
(428, 2, 4, 8, 4, 'CAG00271', 'Herramientas inform?ticas', '3', '3', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(430, 2, 4, 8, 4, 'CAG00273', 'Administraci?n de la producci?n I', '2', '3', 'CAG00550', 'Anatom?a y bot?nica', '', '', '', '', '', '', 127, NULL, NULL),
(431, 2, 4, 8, 4, 'CAG00272', 'Desarrollo rural', '2', '3', 'CAG00266', 'Agroecologia', '', '', '', '', '', '', 127, NULL, NULL),
(432, 2, 4, 8, 4, 'CAG00288', 'Biometr?a II', '3', '4', 'CAG00262', 'Matem?ticas II', '', '', '', '', '', '', 127, NULL, NULL),
(434, 2, 4, 8, 4, 'CAG00388', 'Gesti?n talento humano', '3', '4', 'CAG00265', 'Gesti?n organizacional', '', '', '', '', '', '', 127, NULL, NULL),
(435, 2, 4, 8, 4, 'CAG00386', 'Presupuestos', '3', '4', 'CAG00034', 'Contabilidad de costos', '', '', '', '', '', '', 127, NULL, NULL),
(436, 2, 4, 8, 4, 'CAG00387', 'Gesti?n del conocimiento e innovaci?n;2', '4', 'CAG00265', 'Gesti?n organizacional', '', '', '', '', '', '', '436', 0, NULL, NULL),
(437, 2, 4, 8, 4, 'CAG00290', 'Electiva producci?n agr?cola', '3', '4', 'CAG00273', 'Administraci?n de la producci?n I', '', '', '', '', '', '', 127, NULL, NULL),
(438, 2, 4, 8, 4, 'CAG00264', 'Econom?a internacional', '3', '5', 'CAG00385', 'Econom?a colombiana', '', '', '', '', '', '', 127, NULL, NULL),
(439, 2, 4, 8, 4, 'CAG00394', 'Gerencia estrat?gica', '3', '5', 'CAG00388', 'Gesti?n talento humano', '', '', '', '', '', '', 127, NULL, NULL);
INSERT INTO `subjects` (`id`, `faculty_id`, `coordination_id`, `program_id`, `area_id`, `subject_code`, `subject_name`, `subject_credits`, `subject_level`, `prerequisite_code_1`, `prerequisite_name_1`, `prerequisite_code_2`, `prerequisite_name_2`, `corequisite_code_1`, `corequisite_name_1`, `corequisite_code_2`, `corequisite_name_2`, `status`, `created_at`, `updated_at`) VALUES
(441, 2, 4, 8, 4, 'CAG00390', 'Legislaci?n y evaluaci?n del impacto ambiental', '3', '5', 'CAG00266', 'Agroecologia', '', '', '', '', '', '', 127, NULL, NULL),
(442, 2, 4, 8, 4, 'CAG00393', 'Mercadeo', '3', '5', 'CAG00387', 'Gesti?n del conocimiento e innovaci?n;', '', '', '', '', '', '442', 0, NULL, NULL),
(443, 2, 4, 8, 4, 'CAG00391', 'Electiva producci?n pecuaria', '3', '5', 'CAG00290', 'Electiva producci?n agr?cola', '', '', '', '', '', '', 127, NULL, NULL),
(444, 2, 4, 8, 4, 'CAG00278', 'Contabilidad administrativa', '3', '6', 'CAG00386', 'Presupuestos', '', '', '', '', '', '', 127, NULL, NULL),
(445, 2, 4, 8, 4, 'CAG00395', 'Desarrollo de habilidades gerenciales', '3', '6', 'CAG00387', 'Gesti?n del conocimiento e innovaci?n;', '', '', '', '', '', '445', 0, NULL, NULL),
(446, 2, 4, 8, 4, 'CAG00392', 'Geopol?tica', '2', '6', 'CAG00385', 'Econom?a colombiana', '', '', '', '', '', '', 127, NULL, NULL),
(447, 2, 4, 8, 4, 'CAG00074', 'Investigaci?n de mercados', '3', '6', 'CAG00393', 'Mercadeo', '', '', '', '', '', '', 127, NULL, NULL),
(448, 2, 4, 8, 4, 'CAG00397', 'Legislaci?n comercial y tributar?a', '2', '6', 'CAG00386', 'Presupuestos', '', '', '', '', '', '', 127, NULL, NULL),
(449, 2, 4, 8, 4, 'CAG00396', 'Sistemas de control administrativo', '3', '6', 'CAG00394', 'Gerencia estrat?gica', '', '', '', '', '', '', 127, NULL, NULL),
(451, 2, 4, 8, 4, 'CAG00421', 'Matem?ticas financiera y an?lisis financiero', '4', '7', 'CAG00278', 'Contabilidad administrativa', '', '', '', '', '', '', 127, NULL, NULL),
(453, 2, 4, 8, 4, 'CAG00079', 'Mercadeo agropecuario', '3', '7', 'CAG00074', 'Investigaci?n de mercados', '', '', '', '', '', '', 127, NULL, NULL),
(454, 2, 4, 8, 4, 'CAG00398', 'Electiva de contexto I', '2', '7', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(455, 2, 4, 8, 4, 'CAG00399', 'Electiva de profundizaci?n i', '2', '7', 'CAG00391', 'Electiva producci?n pecuaria', '', '', '', '', '', '', 127, NULL, NULL),
(456, 2, 4, 8, 4, 'CAG00491', 'Electiva producci?n agroindustrial', '3', '7', 'CAG00397', 'Legislaci?n comercial y tributar?a', '', '', '', '', '', '', 127, NULL, NULL),
(458, 2, 4, 8, 4, 'CAG00495', 'Administraci?n de la producci?n II', '2', '8', 'CAG00491', 'Electiva producci?n agroindustrial', '', '', '', '', '', '', 127, NULL, NULL),
(459, 2, 4, 8, 4, 'CAG00494', 'Gesti?n p?blica', '3', '8', 'CAG00396', 'Sistemas de control administrativo', '', '', '', '', '', '', 127, NULL, NULL),
(461, 2, 4, 8, 4, 'CAG00493', 'Electiva de profundizaci?n II', '3', '8', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(463, 2, 4, 8, 4, 'CAG00536', 'Administraci?n de la producci?n III', '2', '9', 'CAG00495', 'Administraci?n de la producci?n II', '', '', '', '', '', '', 127, NULL, NULL),
(464, 2, 4, 8, 4, 'CAG00499', 'C?tedra empresarial y emprendimiento', '3', '9', 'CAG00496', 'Formulaci?n y evaluaci?n de proyectos', '', '', '', '', '', '', 127, NULL, NULL),
(465, 2, 4, 8, 4, 'CAG00535', 'Gerencia de proyectos agropecuarios', '2', '9', 'CAG00496', 'Formulaci?n y evaluaci?n de proyectos', '', '', '', '', '', '', 127, NULL, NULL),
(466, 2, 4, 8, 4, 'CAG00497', 'Electiva de contexto II', '2', '9', '', 'TOPE 120 Cr?ditos', '', '', '', '', '', '', 127, NULL, NULL),
(467, 2, 4, 8, 4, 'CAG00498', 'Electiva de profundizaci?n III', '2', '9', '', 'TOPE 120 Cr?ditos', '', '', '', '', '', '', 127, NULL, NULL),
(468, 2, 4, 8, 4, 'CAG00533', 'Electiva de profundizaci?n IV', '2', '9', '', 'TOPE 120 Cr?ditos', '', '', '', '', '', '', 127, NULL, NULL),
(469, 2, 4, 8, 4, 'CAG00534', 'Electiva de profundizaci?n V', '2', '9', '', 'TOPE 120 Cr?ditos', '', '', '', '', '', '', 127, NULL, NULL),
(470, 2, 4, 8, 4, 'CAG00537', 'Opci?n de grado', '1', '9', '', 'TOPE 120 Cr?ditos', '', '', '', '', '', '', 127, NULL, NULL),
(471, 2, 4, 8, 4, 'CAG00538', 'Pr?ctica empresarial', '16', '10', '', 'TOPE 154 Cr?ditos', '', '', '', '', '', '', 127, NULL, NULL),
(478, 2, 4, 9, 5, 'CAG00029', 'Biolog?a General', '3', '2', 'CAG00661', 'Introducci?n al ?rea Profesional', '', '', '', '', '', '', 127, NULL, NULL),
(481, 2, 4, 9, 5, 'CAG00664', 'Sistemas de Informaci?n Geogr?fico Aplicado al Sector Agropecuario', '3', '2', 'CAG00558', 'Geometr?a', '', '', '', '', '', '', 127, NULL, NULL),
(484, 2, 4, 9, 5, 'CAG00003', 'Bioqu?mica', '3', '3', 'CAG00663', 'Qu?mica Org?nica', '', '', '', '', '', '', 127, NULL, NULL),
(485, 2, 4, 9, 5, 'CAG00017', 'Suelos 1', '3', '3', 'CAG00663', 'Qu?mica Org?nica', '', '', '', '', '', '', 127, NULL, NULL),
(486, 2, 4, 9, 5, 'CAG00030', 'Microbiolog?a', '3', '3', 'CAG00029', 'Biolog?a General', '', '', '', '', '', '', 127, NULL, NULL),
(487, 2, 4, 9, 5, 'CAG00665', 'Bot?nica General y Fisiolog?a Vegetal', '3', '3', 'CAG00029', 'Biolog?a General', '', '', '', '', '', '', 127, NULL, NULL),
(490, 2, 4, 9, 5, 'CAG00018', 'Suelos 2', '3', '4', 'CAG00017', 'Suelos 1', '', '', '', '', '', '', 127, NULL, NULL),
(491, 2, 4, 9, 5, 'CAG00047', 'Anatom?a y Fisiolog?a Animal', '3', '4', 'CAG00030', 'Microbiolog?a', '', '', '', '', '', '', 127, NULL, NULL),
(492, 2, 4, 9, 5, 'CAG00667', 'Propagaci?n de Plantas', '3', '4', 'CAG00665', 'Bot?nica General y Fisiolog?a Vegetal', '', '', '', '', '', '', 127, NULL, NULL),
(493, 2, 4, 9, 5, 'CAG00668', 'Hidrolog?a y Climatolog?a', '3', '4', 'CAG00017', 'Suelos 1', '', '', '', '', '', '', 127, NULL, NULL),
(494, 2, 4, 9, 5, 'CAG00669', 'Biometr?a', '3', '4', 'CBS00382', 'C?lculo Integral', '', '', '', '', '', '', 127, NULL, NULL),
(495, 2, 4, 9, 5, 'CAG00670', 'Biolog?a Celular y Molecular', '2', '4', 'CAG00029', 'Biolog?a General', '', '', '', '', '', '', 127, NULL, NULL),
(496, 2, 4, 9, 5, 'CAG00005', 'Dise?o Experimental', '3', '5', 'CAG00669', 'Biometr?a', '', '', '', '', '', '', 127, NULL, NULL),
(497, 2, 4, 9, 5, 'CAG00027', 'Nutrici?n Animal', '3', '5', 'CAG00047', 'Anatom?a y Fisiolog?a Animal', 'CAG00003', 'Bioqu?mica', '', '', '', '', 127, NULL, NULL),
(499, 2, 4, 9, 5, 'CAG00051', 'Agroecolog?a Y Bosques', '3', '5', 'CAG00668', 'Hidrolog?a y Climatolog?a', '', '', '', '', '', '', 127, NULL, NULL),
(500, 2, 4, 9, 5, 'CAG00073', 'Mecanizaci?n Rural', '3', '5', 'CAG00017', 'Suelos 1', '', '', '', '', '', '', 127, NULL, NULL),
(501, 2, 4, 9, 5, 'CAG00671', 'Sistemas Integrados de Gesti?n de la Producci?n I', '3', '5', 'CBS00382', 'C?lculo Integral', '', '', '', '', '', '', 127, NULL, NULL),
(503, 2, 4, 9, 5, 'CAG00673', 'Gen?tica', '2', '5', 'CAG00029', 'Biolog?a General', 'CAG00669', 'Biometr?a', '', '', '', '', 127, NULL, NULL),
(504, 2, 4, 9, 5, 'CAG00062', 'Salud Animal', '3', '6', 'CAG00047', 'Anatom?a y Fisiolog?a Animal', '', '', '', '', '', '', 127, NULL, NULL),
(505, 2, 4, 9, 5, 'CAG00674', 'Fisiolog?a de Cultivos', '3', '6', 'CAG00665', 'Bot?nica General y Fisiolog?a Vegetal', '', '', '', '', '', '', 127, NULL, NULL),
(506, 2, 4, 9, 5, 'CAG00675', 'Sistemas Integrados de Gesti?n de la Producci?n II', '3', '6', 'CAG00671', 'Sistemas Integrados de Gesti?n de la Producci?n I', '', '', '', '', '', '', 127, NULL, NULL),
(507, 2, 4, 9, 5, 'CAG00676', 'Riegos y Drenajes', '3', '6', 'CAG00662', 'F?sica del Movimiento', '', '', '', '', '', '', 127, NULL, NULL),
(511, 2, 4, 9, 5, 'CAG00060', 'Fitopatolog?a', '3', '7', 'CAG00674', 'Fisiolog?a de Cultivos', '', '', '', '', '', '', 127, NULL, NULL),
(512, 2, 4, 9, 5, 'CAG00063', 'Entomolog?a', '3', '7', 'CAG00674', 'Fisiolog?a de Cultivos', '', '', '', '', '', '', 127, NULL, NULL),
(513, 2, 4, 9, 5, 'CAG00064', 'Reproducci?n Animal', '3', '7', 'CAG00027', 'Nutrici?n Animal', '', '', '', '', '', '', 127, NULL, NULL),
(514, 2, 4, 9, 5, 'CAG00679', 'Acuicultura', '3', '7', 'CAG00027', 'Nutrici?n Animal', '', '', '', '', '', '', 127, NULL, NULL),
(515, 2, 4, 9, 5, 'CAG00680', 'Agroindustria', '3', '7', 'CAG00027', 'Nutrici?n Animal', '', '', '', '', '', '', 127, NULL, NULL),
(516, 2, 4, 9, 5, 'CAG00057', 'Producci?n Agr?cola 1', '3', '8', 'CAG00018', 'Suelos 2', 'CAG00063', 'Entomolog?a', 'CAG00060', 'Fitopatolog?a', '', '', 127, NULL, NULL),
(517, 2, 4, 9, 5, 'CAG00068', 'Mejoramiento Gen?tico', '3', '8', 'CAG00005', 'Dise?o Experimental', '', '', '', '', '', '', 127, NULL, NULL),
(518, 2, 4, 9, 5, 'CAG00681', 'Producci?n Pecuaria I', '3', '8', 'CAG00064', 'Reproducci?n Animal', 'CAG00673', 'Gen?tica', '', '', '', '', 127, NULL, NULL),
(519, 2, 4, 9, 5, 'CAG00682', 'Pasto y Ganado', '3', '8', 'CAG00068', 'Agroindustria', '', '', '', '', '', '', 127, NULL, NULL),
(520, 2, 4, 9, 5, 'CAG00314', 'Cultivos Promisorios', '3', '8', '', 'T.C. 110', '', '', '', '', '', '', 127, NULL, NULL),
(521, 2, 4, 9, 5, 'CAG00687', 'Nutrici?n de Monog?stricos', '3', '8', '', 'T.C. 110', '', '', '', '', '', '', 127, NULL, NULL),
(522, 2, 4, 9, 5, 'CAG00689', 'Acuicultura 1', '3', '8', '', 'T.C. 110', '', '', '', '', '', '', 127, NULL, NULL),
(523, 2, 4, 9, 5, 'CAG00691', 'Reproducci?n y Biotecnolog?a Animal 1', '3', '8', '', 'T.C. 110', '', '', '', '', '', '', 127, NULL, NULL),
(524, 2, 4, 9, 5, 'CAG00693', 'Agroindustria 1', '3', '8', '', 'T.C. 110', '', '', '', '', '', '', 127, NULL, NULL),
(525, 2, 4, 9, 5, 'CAG00695', 'Biotecnolog?a Vegetal 1', '3', '8', '', 'T.C. 110', '', '', '', '', '', '', 127, NULL, NULL),
(526, 2, 4, 9, 5, 'CAG00697', 'Protecci?n Vegetal 1', '3', '8', '', 'T.C. 110', '', '', '', '', '', '', 127, NULL, NULL),
(527, 2, 4, 9, 5, 'CAG00699', 'Especies no Tradicionales 1', '3', '8', '', 'T.C. 110', '', '', '', '', '', '', 127, NULL, NULL),
(528, 2, 4, 9, 5, 'CAG00056', 'Producci?n Agr?cola 2', '3', '9', 'CAG00018', 'Suelos 2', 'CAG00063', 'Entomolog?a', 'CAG00060', 'Fitopatolog?a', '', '', 127, NULL, NULL),
(529, 2, 4, 9, 5, 'CAG00683', 'Producci?n Pecuaria II', '3', '9', 'CAG00064', 'Reproducci?n Animal', '', '', '', '', '', '', 127, NULL, NULL),
(531, 2, 4, 9, 5, 'CAG00685', 'Sistemas Integrados de Producci?n Agropecuaria', '3', '9', '', 'T. C. 110', '', '', '', '', '', '', 127, NULL, NULL),
(532, 2, 4, 9, 5, 'CAG00315', 'Cultivos Industriales y Forestales', '3', '9', 'CAG00314', 'Cultivos Promisorios', 'CAG00671', 'Sistemas Integrados de Gesti?n de la Producci?n I', '', '', '', '', 127, NULL, NULL),
(533, 2, 4, 9, 5, 'CAG00688', 'Nutrici?n de Rumiantes', '3', '9', 'CAG00687', 'Nutrici?n de Monog?stricos', 'CAG00671', 'Sistemas Integrados de Gesti?n de la Producci?n I', '', '', '', '', 127, NULL, NULL),
(534, 2, 4, 9, 5, 'CAG00690', 'Acuicultura 2', '3', '9', 'CAG00689', 'Acuicultura 1', 'CAG00671', 'Sistemas Integrados de Gesti?n de la Producci?n I', '', '', '', '', 127, NULL, NULL),
(535, 2, 4, 9, 5, 'CAG00692', 'Reproducci?n y Biotecnolog?a Animal 2', '3', '9', 'CAG00691', 'Reproducci?n y Biotecnolog?a Animal 1', 'CAG00671', 'Sistemas Integrados de Gesti?n de la Producci?n I', '', '', '', '', 127, NULL, NULL),
(536, 2, 4, 9, 5, 'CAG00694', 'Agroindustria 2', '3', '9', 'CAG00693', 'Agroindustria 1', 'CAG00671', 'Sistemas Integrados de Gesti?n de la Producci?n I', '', '', '', '', 127, NULL, NULL),
(537, 2, 4, 9, 5, 'CAG00696', 'Biotecnolog?a Vegetal 2', '3', '9', 'CAG00693', 'Agroindustria 1', 'CAG00671', 'Sistemas Integrados de Gesti?n de la Producci?n I', '', '', '', '', 127, NULL, NULL),
(538, 2, 4, 9, 5, 'CAG00698', 'Protecci?n Vegetal 2', '3', '9', 'CAG00697', 'Protecci?n Vegetal 1', 'CAG00671', 'Sistemas Integrados de Gesti?n de la Producci?n I', '', '', '', '', 127, NULL, NULL),
(539, 2, 4, 9, 5, 'CAG00700', 'Especies no Tradicionales 2', '3', '9', 'CAG00699', 'Especies no Tradicionales 1', 'CAG00671', 'Sistemas Integrados de Gesti?n de la Producci?n I', '', '', '', '', 127, NULL, NULL),
(540, 2, 4, 9, 5, 'CAG00686', 'Trabajo de Grado o Semestre de Pr?ctica', '15', '10', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(541, 4, 4, 10, 9, 'CAV00014', 'Taller de Fotograf?a', '2', '1', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(545, 4, 4, 10, 9, 'CAV00401', 'Teor?a de la Imagen', '2', '1', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(546, 4, 4, 10, 9, 'CAV00402', 'Introducci?n Antropolog?a', '2', '1', '', '', '', '', 'CAV00146', 'Introducci?n al ?rea Profesional', '', '', 127, NULL, NULL),
(547, 4, 4, 10, 9, 'CAV00403', 'Taller de Escritura', '2', '1', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(548, 4, 4, 10, 9, 'CAV00404', 'Sonido I', '2', '1', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(549, 4, 4, 10, 9, 'CAV00405', 'Est?tica del Arte', '2', '1', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(551, 4, 4, 10, 9, 'CAV00059', 'Lenguaje Audiovisual', '2', '2', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(553, 4, 4, 10, 9, 'CAV00282', 'An?lisis Dramat?rgico', '2', '2', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(554, 4, 4, 10, 9, 'CAV00407', 'Antropolog?a Visual', '2', '2', 'CAV00402', 'Introducci?n Antropolog?a', '', '', '', '', '', '', 127, NULL, NULL),
(555, 4, 4, 10, 9, 'CAV00408', 'Comunicaci?n e Informaci?n;2', '2', 'CAV00146', 'Introducci?n al ?rea Profesional', '', '', '', '', '', '', '555', 0, NULL, NULL),
(556, 4, 4, 10, 9, 'CAV00409', 'Fotograf?a Documental', '2', '2', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(557, 4, 4, 10, 9, 'CAV00410', 'Problemas Colombianos Contempor?neos', '2', '2', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(558, 4, 4, 10, 9, 'CAV00411', 'Investigaci?n Acci?n-Participaci?n;2', '2', 'CAV00406', 'Metodolog?a de la Investigaci?n;', '', 'CAV00412', 'Proyecto Foto Ensayo', '', '', '558', NULL, 0, NULL, NULL),
(559, 4, 4, 10, 9, 'CAV00412', 'Proyecto Foto Ensayo', '3', '2', 'CAV00014', 'Taller de Fotograf?a', '', '', 'CAV00411', 'Investigaci?n Acci?n-Participaci?n;', '', '559', 0, NULL, NULL),
(560, 4, 4, 10, 9, 'CAV00298', 'Legislaci?n de Medios', '2', '3', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(561, 4, 4, 10, 9, 'CAV00413', 'Teor?as de la Comunicaci?n y Cultura', '2', '3', 'CAV00146', 'Introducci?n al ?rea Profesional', '', '', '', '', '', '', 127, NULL, NULL),
(562, 4, 4, 10, 9, 'CAV00414', 'Teor?a del Relato', '2', '3', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(563, 4, 4, 10, 9, 'CAV00415', 'Guion I', '2', '3', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(564, 4, 4, 10, 9, 'CAV00416', 'Taller de Camarograf?a e Iluminaci?n;2', '3', 'CAV00059', 'Lenguaje Audiovisual', '', '', '', '', '', '', '564', 0, NULL, NULL),
(565, 4, 4, 10, 9, 'CAV00417', 'Producci?n Audiovisual', '2', '3', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(566, 4, 4, 10, 9, 'CAV00418', 'Montaje', '2', '3', 'CAV00059', 'Lenguaje Audiovisual', '', '', '', '', '', '', 127, NULL, NULL),
(567, 4, 4, 10, 9, 'CAV00419', 'Historia de Colombia', '2', '3', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(568, 4, 4, 10, 9, 'CAV00420', 'Investigaci?n para Medios Audiovisuales', '2', '3', 'CAV00406', 'Metodolog?a de la Investigaci?n;', '', '', '', '', '', '568', 0, NULL, NULL),
(569, 4, 4, 10, 9, 'CAV00167', 'Comunicaci?n y Educaci?n;2', '4', '', '', '', '', '', '', '', '', '569', 0, NULL, NULL),
(570, 4, 4, 10, 9, 'CAV00421', 'Psicolog?a de la Comunicaci?n;2', '4', '', '', '', '', '', '', '', '', '570', 0, NULL, NULL),
(571, 4, 4, 10, 9, 'CAV00422', 'Guion II', '2', '4', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(572, 4, 4, 10, 9, 'CAV00423', 'Taller de Sonido II', '2', '4', 'CAV00404', 'Sonido I', '', '', '', '', '', '', 127, NULL, NULL),
(573, 4, 4, 10, 9, 'CAV00424', 'Apreciaci?n Cinematogr?fica', '2', '4', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(574, 4, 4, 10, 9, 'CAV00425', 'Narrativa Documental', '2', '4', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(575, 4, 4, 10, 9, 'CAV00426', 'Proyecto Documental', '3', '4', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(576, 4, 4, 10, 9, 'CAV00427', 'Dramaturgia', '2', '', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(577, 4, 4, 10, 9, 'CAV00428', 'Direcci?n de Fotograf?a', '2', '5', 'CAV00424', 'Apreciaci?n Cinematogr?fica', '', '', '', '', '', '', 127, NULL, NULL),
(578, 4, 4, 10, 9, 'CAV00429', 'Taller de Realizaci?n Audiovisual', '2', '5', 'CAV00424', 'Apreciaci?n Cinematogr?fica', '', '', '', '', '', '', 127, NULL, NULL),
(579, 4, 4, 10, 9, 'CAV00430', 'Taller Video Experimental', '2', '5', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(580, 4, 4, 10, 9, 'CAV00431', 'Montaje II', '2', '5', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(581, 4, 4, 10, 9, 'CAV00432', 'Post Producci?n Sonora', '2', '5', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(582, 4, 4, 10, 9, 'CAV00433', 'Est?tica Audiovisual', '2', '5', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(583, 4, 4, 10, 9, 'CAV00434', 'Proyecto Ficci?n;3', '5', '', '', '', '', '', '', '', '', '583', 0, NULL, NULL),
(584, 4, 4, 10, 9, 'CAV00126', 'Taller de Hipermedia', '2', '6', '', '', '', '', 'CAV00136', 'Lenguajes Interactivos', '', '', 127, NULL, NULL),
(585, 4, 4, 10, 9, 'CAV00136', 'Lenguajes Interactivos', '2', '6', '', '', '', '', 'CAV00126', 'Taller de Hipermedia', '', '', 127, NULL, NULL),
(586, 4, 4, 10, 9, 'CAV00169', 'Seminario de Comunicaci?n y Cibercultura', '2', '6', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(587, 4, 4, 10, 9, 'CAV00206', 'Optativa 3', '2', '6', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(589, 4, 4, 10, 9, 'CAV00435', 'Dise?o Audiovisual', '2', '6', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(590, 4, 4, 10, 9, 'CAV00436', 'Taller de Animaci?n Digital', '2', '6', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(591, 4, 4, 10, 9, 'CAV00437', 'Narrativa Web', '2', '7', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(592, 4, 4, 10, 9, 'CAV00011', 'Teor?a de la Convergencia', '2', '7', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(593, 4, 4, 10, 9, 'CAV00140', 'Taller de Convergencia', '2', '7', 'CAV00126', 'Taller de Hipermedia', '', '', '', '', '', '', 127, NULL, NULL),
(595, 4, 4, 10, 9, 'CAV00438', 'Narrativa Transmedia', '2', '7', 'CAV00126', 'Taller de Hipermedia', '', '', '', '', '', '', 127, NULL, NULL),
(596, 4, 4, 10, 9, 'CAV00439', 'Comunicaci?n en Movilidad', '2', '7', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(597, 4, 4, 10, 9, 'CAV00440', 'Seminario Redes Sociales Digitales', '2', '7', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(598, 4, 4, 10, 9, 'CAV00441', 'Proyecto de Investigaci?n;2', '7', '', '', '', '', '', '', '', '', '598', 0, NULL, NULL),
(599, 4, 4, 10, 9, 'CAV00442', 'Proyecto Transmedia', '3', '7', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(600, 4, 4, 10, 9, 'CAV00443', 'Trabajo de Grado o Pr?ctica', '16', '8', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(602, 5, 11, 11, 10, 'CBS00008', 'Biof?sica', '4', '1', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(605, 5, 11, 11, 10, 'EFD00061', 'Motricidad 1', '2', '1', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(606, 5, 11, 11, 10, 'EFD00234', 'Introduccion al ?rea Profesional', '1', '1', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(609, 5, 11, 11, 10, 'EFD00024', 'Generalidades del Deporte', '2', '2', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(610, 5, 11, 11, 10, 'EFD00030', 'Fundamentos Pedag?gicos 1', '2', '2', 'CBS00030', 'Lengua Materna', '', '', '', '', '', '', 127, NULL, NULL),
(611, 5, 11, 11, 10, 'EFD00039', 'Expresi?n Corporal', '2', '2', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(612, 5, 11, 11, 10, 'EFD00055', 'Biolog?a del Desarrollo', '2', '2', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(613, 5, 11, 11, 10, 'EFD00066', 'Sicolog?a General y Evolutiva', '2', '2', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(614, 5, 11, 11, 10, 'EFD00120', 'Introducci?n Al Pensamiento Cient?fico', '2', '3', 'EFD00234', 'Introduccion al ?rea Profesional', '', '', '', '', '', '', 127, NULL, NULL),
(615, 5, 11, 11, 10, 'EFD00031', 'Fundamentos Pedag?gicos 2', '2', '3', 'EFD00030', 'Fundamentos Pedag?gicos 1', '', '', '', '', '', '', 127, NULL, NULL),
(616, 5, 11, 11, 10, 'EFD00035', 'Morfofisiolog?a', '3', '3', 'EFD00055', 'Biolog?a del Desarrollo', '', '', '', '', '', '', 127, NULL, NULL),
(617, 5, 11, 11, 10, 'EFD00040', 'Movimiento y Ritmo', '2', '3', 'EFD00039', 'Expresi?n Corporal', '', '', '', '', '', '', 127, NULL, NULL),
(618, 5, 11, 11, 10, 'EFD00056', 'Sicolog?a del Aprendizaje', '2', '3', 'EFD00066', 'Sicolog?a General y Evolutiva', '', '', '', '', '', '', 127, NULL, NULL),
(619, 5, 11, 11, 10, 'EFD00223', 'Nutrici?n;3', '3', 'EFD00004', 'Bioqu?mica', '', '', '', '', '', '', '619', 0, NULL, NULL),
(620, 5, 11, 11, 10, 'EFD00224', 'Construcci?n del Conocimiento', '3', '3', 'EFD00120', 'Introducci?n Al Pensamiento Cient?fico', '', '', '', '', '', '', 127, NULL, NULL),
(621, 5, 11, 11, 10, 'ING00012', 'Inform?tica B?sica', '1', '3', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(622, 5, 11, 11, 10, 'EFD00009', 'Fundamentos de L?dica', '2', '4', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(623, 5, 11, 11, 10, 'EFD00010', 'Fundamentos de Curr?culo y Did?ctica', '2', '4', 'EFD00031', 'Fundamentos Pedag?gicos 2', '', '', '', '', '', '', 127, NULL, NULL),
(624, 5, 11, 11, 10, 'EFD00015', 'Proceso Investigativo', '2', '4', 'EFD00224', 'Construcci?n del Conocimiento', '', '', '', '', '', '', 127, NULL, NULL),
(625, 5, 11, 11, 10, 'EFD00070', 'Did?ctica del Atletismo', '1', '4', 'EFD00024', 'Generalidades del Deporte', '', '', '', '', '', '', 127, NULL, NULL),
(626, 5, 11, 11, 10, 'EFD00121', 'Motricidad 2', '2', '4', 'EFD00061', 'Motricidad 1', '', '', '', '', '', '', 127, NULL, NULL),
(628, 5, 11, 11, 10, 'EFD00122', 'Kinesiolog?a y Biomec?nica', '3', '4', 'EFD00035', 'Morfofisiolog?a', '', '', '', '', '', '', 127, NULL, NULL),
(629, 5, 11, 11, 10, 'EFD00141', 'Danza y Corporeidad', '2', '4', 'EFD00040', 'Movimiento y Ritmo', '', '', '', '', '', '', 127, NULL, NULL),
(630, 5, 11, 11, 10, 'EFD00142', 'Gimnasia Educativa B?sica', '2', '4', 'EFD00039', 'Expresi?n Corporal', '', '', '', '', '', '', 127, NULL, NULL),
(632, 5, 11, 11, 10, 'EFD00011', 'Gimnasia Educativa Avanzada', '2', '5', 'EFD00142', 'Gimnasia Educativa B?sica', '', '', '', '', '', '', 127, NULL, NULL),
(633, 5, 11, 11, 10, 'EFD00012', 'Actividades Acu?ticas', '2', '5', 'EFD00024', 'Generalidades del Deporte', '', '', '', '', '', '', 127, NULL, NULL),
(634, 5, 11, 11, 10, 'EFD00077', 'Pedagog?a y N.E.E. 1', '2', '5', 'EFD00010', 'Fundamentos de Curr?culo y Did?ctica', '', '', 'EFD00124', 'Motricidad y N.E.E. 1', '', '', 127, NULL, NULL),
(635, 5, 11, 11, 10, 'EFD00123', 'Investigaci?n Pedag?gica', '3', '5', 'EFD00010', 'Fundamentos de Curr?culo y Did?ctica', '', '', '', '', '', '', 127, NULL, NULL),
(637, 5, 11, 11, 10, 'EFD00124', 'Motricidad y N.E.E. 1', '3', '5', 'EFD00121', 'Motricidad 2', '', '', 'EFD00077', 'Pedagog?a y N.E.E. 1', '', '', 127, NULL, NULL),
(638, 5, 11, 11, 10, 'EFD00163', 'Medicina Aplicada a Actividad F?sica y D.', '2', '5', 'EFD00122', 'Kinesiolog?a y Biomec?nica', '', '', '', '', '', '', 127, NULL, NULL),
(640, 5, 11, 11, 10, 'EFD00013', 'Primeros Auxilios', '2', '6', 'EFD00035', 'Morfofisiolog?a', '', '', '', '', '', '', 127, NULL, NULL),
(641, 5, 11, 11, 10, 'EFD00014', 'Educaci?n Ambiental', '2', '6', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(642, 5, 11, 11, 10, 'EFD00071', 'Did?ctica del Ajedrez', '1', '6', 'EFD00024', 'Generalidades del Deporte', '', '', '', '', '', '', 127, NULL, NULL),
(643, 5, 11, 11, 10, 'EFD00072', 'Did?ctica del Futbol', '1', '6', 'EFD00024', 'Generalidades del Deporte', '', '', '', '', '', '', 127, NULL, NULL),
(644, 5, 11, 11, 10, 'EFD00078', 'Pedagog?a y N.E.E. 2', '2', '6', 'EFD00077', 'Pedagog?a y N.E.E. 1', '', '', 'EFD00133', 'Motricidad y N.E.E. 2', '', '', 127, NULL, NULL),
(645, 5, 11, 11, 10, 'EFD00133', 'Motricidad y N.E.E. 2', '3', '6', 'EFD00124', 'Motricidad y N.E.E. 1', '', '', 'EFD00078', 'Pedagog?a y N.E.E. 2', '', '', 127, NULL, NULL),
(646, 5, 11, 11, 10, 'EFD00164', 'Estad?stica Aplidada a La E.F.R.D', '2', '6', 'EFD00224', 'Construcci?n del Conocimiento', 'CBS00001', 'Matem?ticas', '', '', '', '', 127, NULL, NULL),
(647, 5, 11, 11, 10, 'EFD00073', 'Did?ctica del Baloncesto', '1', '7', 'EFD00024', 'Generalidades del Deporte', '', '', '', '', '', '', 127, NULL, NULL),
(648, 5, 11, 11, 10, 'EFD00481', 'Proyecto Investigativo', '3', '7', 'EFD00164', 'Estad?stica Aplidada a La E.F.R.D', 'EFD00123', 'Investigaci?n Pedag?gica', '', '', '', '', 127, NULL, NULL),
(649, 5, 11, 11, 10, 'EFD00482', 'Curr?culo y Did?ctica en Preescolar', '2', '7', 'EFD00010', 'Fundamentos de Curr?culo y Did?ctica', '', '', 'EFD00483', 'Crecimiento y Desarrollo en Preescolar', 'EFD00484', 'Motricidad en Preescolar', 127, NULL, NULL),
(650, 5, 11, 11, 10, 'EFD00483', 'Crecimiento y Desarrollo en Preescolar', '2', '7', 'EFD00122', 'Kinesiolog?a y Biomec?nica', 'EFD00223', 'Nutrici?n;EFD00482', 'Curr?culo y Did?ctica en Preescolar', 'EFD00484', 'Motricidad en Preescolar', '650', 0, NULL, NULL),
(651, 5, 11, 11, 10, 'EFD00484', 'Motricidad en Preescolar', '2', '7', 'EFD00121', 'Motricidad 2', '', '', 'EFD00482', 'Curr?culo y Did?ctica en Preescolar', 'EFD00483', 'Crecimiento y Desarrollo en Preescolar', 127, NULL, NULL),
(652, 5, 11, 11, 10, 'EFD00485', 'Masoterapia', '2', '7', 'EFD00035', 'Morfofisiolog?a', 'EFD00009', 'Fundamentos de L?dica', 'EFD00482', 'Curr?culo y Did?ctica en Preescolar', 'EFD00483', 'Crecimiento y Desarrollo en Preescolar', 127, NULL, NULL),
(653, 5, 11, 11, 10, 'EFD00486', 'Expresiones L?dicas en Preescolar', '2', '7', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(654, 5, 11, 11, 10, 'EFD00748', 'Seminario de Actualizaci?n;2', '7', '', '', '', '', '', '', '', '', '654', 0, NULL, NULL),
(655, 5, 11, 11, 10, 'EFD00747', 'Did?ctica del Voleibol', '1', '8', 'EFD00024', 'Generalidades del Deporte', '', '', '', '', '', '', 127, NULL, NULL),
(656, 5, 11, 11, 10, 'EFD00075', 'Did?ctica del Balonmano', '1', '8', 'EFD00024', 'Generalidades del Deporte', '', '', '', '', '', '', 127, NULL, NULL),
(657, 5, 11, 11, 10, 'EFD00076', 'Did?ctica del Softbol', '1', '8', 'EFD00024', 'Generalidades del Deporte', '', '', '', '', '', '', 127, NULL, NULL),
(658, 5, 11, 11, 10, 'EFD00488', 'Pr?ctica Docente Investigativa 1', '4', '8', 'EFD00481', 'Proyecto Investigativo', 'EFD00482', 'Curr?culo y Did?ctica en Preescolar', '', '', '', '', 127, NULL, NULL),
(659, 5, 11, 11, 10, 'EFD00489', 'Curr?culo y Did?ctica en Primaria', '3', '8', 'EFD00010', 'Fundamentos de Curr?culo y Did?ctica', '', '', 'EFD00490', 'Crecimiento y Desarrollo en Primaria', 'EFD00491', 'Motricidad en Primaria', 127, NULL, NULL),
(660, 5, 11, 11, 10, 'EFD00490', 'Crecimiento y Desarrollo en Primaria', '2', '8', '', '', '', '', 'EFD00489', 'Curr?culo y Did?ctica en Primaria', 'EFD00491', 'Motricidad en Primaria', 127, NULL, NULL),
(661, 5, 11, 11, 10, 'EFD00491', 'Motricidad en Primaria', '2', '8', '', '', '', '', 'EFD00489', 'Curr?culo y Did?ctica en Primaria', 'EFD00490', 'Crecimiento y Desarrollo en Primaria', 127, NULL, NULL),
(662, 5, 11, 11, 10, 'EFD00492', 'Expresiones L?dicas en Primaria', '2', '8', '', '', '', '', 'EFD00489', 'Curr?culo y Did?ctica en Primaria', 'EFD00490', 'Crecimiento y Desarrollo en Primaria', 127, NULL, NULL),
(664, 5, 11, 11, 10, 'EFD00493', 'Seminario de Trabajo de Grado', '2', '9', 'EFD00481', 'Proyecto Investigativo', '', '', '', '', '', '', 127, NULL, NULL),
(665, 5, 11, 11, 10, 'EFD00494', 'Pr?ctica Docente Investigativa 2', '4', '9', 'EFD00488', 'Pr?ctica Docente Investigativa 1', '', '', '', '', '', '', 127, NULL, NULL),
(666, 5, 11, 11, 10, 'EFD00495', 'Curr?culo y Did?ctica en Secundaria', '3', '9', 'EFD00489', 'Curr?culo y Did?ctica en Primaria', '', '', 'EFD00496', 'Crecimiento y Desarrollo en Secundaria', 'EFD00497', 'Motricidad en Secundaria', 127, NULL, NULL),
(667, 5, 11, 11, 10, 'EFD00496', 'Crecimiento y Desarrollo en Secundaria', '2', '9', '', '', '', '', 'EFD00495', 'Curr?culo y Did?ctica en Secundaria', 'EFD00497', 'Motricidad en Secundaria', 127, NULL, NULL),
(668, 5, 11, 11, 10, 'EFD00497', 'Motricidad en Secundaria', '2', '9', '', '', '', '', 'EFD00495', 'Curr?culo y Did?ctica en Secundaria', 'EFD00496', 'Crecimiento y Desarrollo en Secundaria', 127, NULL, NULL),
(669, 5, 11, 11, 10, 'EFD00498', 'Expresiones L?dicas en Secundaria', '2', '9', '', '', '', '', 'EFD00495', 'Curr?culo y Did?ctica en Secundaria', 'EFD00496', 'Crecimiento y Desarrollo en Secundaria', 127, NULL, NULL),
(671, 5, 11, 11, 10, 'EFD00499', 'Pr?ctica de Proyecci?n Comunitaria', '4', '10', 'EFD00494', 'Pr?ctica Docente Investigativa 2', '', '', '', '', '', '', 127, NULL, NULL),
(672, 5, 12, 12, 11, 'CBS00001', 'Matem?tica', '4', '1', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(674, 5, 12, 12, 11, 'CBS00031', 'Humanidades I', '2', '1', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(677, 5, 12, 12, 11, 'EFD00131', 'Motricidad', '2', '1', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(678, 5, 12, 12, 11, 'EFD00048', 'Periodismo deportivo', '2', '2', 'CBS00030', 'Lengua Materna', '', '', '', '', '', '', 127, NULL, NULL),
(680, 5, 12, 12, 11, 'EFD00152', 'Fundamentaci?n r?tmica y gimnasia', '2', '2', 'EFD00131', 'Motricidad', '', '', '', '', '', '', 127, NULL, NULL),
(682, 5, 12, 12, 11, 'EFD00097', 'Atletismo', '2', '2', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(683, 5, 12, 12, 11, 'EFD00045', 'Historia del deporte', '2', '2', 'EFD00232', 'Introducci?n al ?rea Profesional', '', '', '', '', '', '', 127, NULL, NULL),
(684, 5, 12, 12, 11, 'EFD00054', 'Biolog?a celular', '2', '2', '', '', '', '', 'EFD00052', 'Anatom?a', '', '', 127, NULL, NULL),
(686, 5, 12, 12, 11, 'EFD00043', 'Gimnasia Moderna', '2', '3', 'EFD00152', 'Fundamentaci?n r?tmica y gimnasia', '', '', '', '', '', '', 127, NULL, NULL),
(688, 5, 12, 12, 11, 'EFD00023', 'Nataci?n;2', '3', '', '', '', '', '', '', '', '', '688', 0, NULL, NULL),
(690, 5, 12, 12, 11, 'EFD00252', 'Fisiolog?a del Ejercicio', '2', '3', 'EFD00052', 'Anatom?a', '', '', 'EFD00004', 'Bioqu?mica', '', '', 127, NULL, NULL),
(691, 5, 12, 12, 11, 'EFD00098', 'Deporte de Combate I', '2', '3', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(692, 5, 12, 12, 11, 'EFD00069', 'Did?ctica general y del deporte', '3', '4', 'EFD00057', 'Sicolog?a del aprendizaje', '', '', '', '', '', '', 127, NULL, NULL),
(693, 5, 12, 12, 11, 'EFD00253', 'Fisiolog?a integral del entrenamiento deportivo', '2', '4', 'EFD00252', 'Fisiolog?a del ejercicio', '', '', '', '', '', '', 127, NULL, NULL),
(694, 5, 12, 12, 11, 'CBS00040', 'Epistemolog?a', '2', '4', 'CBS00031', 'Humanidades I', '', '', '', '', '', '', 127, NULL, NULL),
(696, 5, 12, 12, 11, 'EFD00089', 'Voleibol', '2', '4', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(697, 5, 12, 12, 11, 'EFD00060', 'Sicolog?a del deporte', '2', '4', 'EFD00057', 'Sicolog?a del aprendizaje', '', '', '', '', '', '', 127, NULL, NULL),
(698, 5, 12, 12, 11, 'EFD00099', 'Deporte de Combate II', '2', '4', 'EFD00098', 'Deporte de Combate I', '', '', '', '', '', '', 127, NULL, NULL),
(699, 5, 12, 12, 11, 'EFD00050', 'Crecimiento y desarrollo motor', '2', '5', 'EFD00253', 'Fisiolog?a integral del entrenamiento deportivo', '', '', '', '', '', '', 127, NULL, NULL),
(700, 5, 12, 12, 11, 'ADM00021', 'Administraci?n general', '2', '5', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(701, 5, 12, 12, 11, 'CBS00036', 'Metodolog?a de la investigaci?n.', '2', '5', 'CBS00040', 'Epistemolog?a', 'EFD00001', 'Estad?stica', '', '', '', '', 127, NULL, NULL),
(702, 5, 12, 12, 11, 'EFD00092', 'Baloncesto', '2', '5', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(703, 5, 12, 12, 11, 'EFD00064', 'Sociolog?a del deporte', '2', '5', 'EFD00045', 'Historia del deporte', '', '', '', '', '', '', 127, NULL, NULL),
(705, 5, 12, 12, 11, 'EFD00025', 'Deporte individual (Patinaje)', '2', '5', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(707, 5, 12, 12, 11, 'EFD00086', 'Investigaci?n deportiva', '2', '6', 'CBS00036', 'Metodolog?a de la Investigaci?n;', '', '', '', '', '', '707', 0, NULL, NULL),
(708, 5, 12, 12, 11, 'EFD00135', 'Kinesiolog?a', '2', '6', 'EFD00052', 'Anatom?a', '', '', '', '', '', '', 127, NULL, NULL),
(709, 5, 12, 12, 11, 'EFD00105', 'Legislaci?n deportiva', '2', '6', '', '', '', '', 'CBS00098', 'Pedagog?a constitucional', '', '', 127, NULL, NULL),
(710, 5, 12, 12, 11, 'EFD00256', 'Preparaci?n f?sica', '3', '6', 'EFD00253', 'Fisiolog?a integral del entrenamiento deportivo', '', '', '', '', '', '', 127, NULL, NULL),
(711, 5, 12, 12, 11, 'EFD00240', 'F?tbol', '2', '6', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(712, 5, 12, 12, 11, 'EFD00096', 'Deporte recreativo', '2', '6', 'EFD00041', 'Fundamentos de l?dica', '', '', '', '', '', '', 127, NULL, NULL),
(713, 5, 12, 12, 11, 'EFD00155', 'Deporte individual (Ciclismo)', '2', '6', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(715, 5, 12, 12, 11, 'EFD00254', 'Halterofilia', '2', '7', 'EFD00256', 'Preparaci?n f?sica', '', '', '', '', '', '', 127, NULL, NULL),
(716, 5, 12, 12, 11, 'EFD00104', 'Introducci?n a la pr?ctica', '2', '7', 'EFD00086', 'Investigaci?n deportiva', 'EFD00069', 'Did?ctica general y del deporte', '', '', '', '', 127, NULL, NULL),
(717, 5, 12, 12, 11, 'EFD00032', 'Biomec?nica', '2', '7', 'EFD00135', 'Kinesiolog?a', '', '', '', '', '', '', 127, NULL, NULL),
(718, 5, 12, 12, 11, 'EFD00257', 'Teor?a y plan del entrenamiento', '3', '7', 'EFD00256', 'Preparaci?n f?sica', '', '', '', '', '', '', 127, NULL, NULL),
(719, 5, 12, 12, 11, 'EFD00006', 'Administraci?n Deportiva', '2', '7', 'ADM00021', 'Administraci?n general', '', '', '', '', '', '', 127, NULL, NULL),
(721, 5, 12, 12, 11, 'EFD00090', 'F?tbol de sal?n;2', '7', '', '', '', '', '', '', '', '', '721', 0, NULL, NULL),
(722, 5, 12, 12, 11, 'EFD00369', 'Formulaci?n de proyectos I', '2', '7', 'EFD00086', 'Investigaci?n deportiva', '', '', '', '', '', '', 127, NULL, NULL),
(723, 5, 12, 12, 11, 'EFD00129', 'Evaluaci?n y control funcional del entrenamiento', '2', '8', 'EFD00257', 'Teor?a y plan del entrenamiento', '', '', 'EFD00004', 'Nutrici?n;', '', '723', 0, NULL, NULL),
(724, 5, 12, 12, 11, 'EFD00370', 'Balonmano', '2', '8', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(725, 5, 12, 12, 11, 'EFD00106', 'Pr?ctica II', '4', '8', 'EFD00104', 'Introducci?n a la pr?ctica', '', '', '', '', '', '', 127, NULL, NULL),
(726, 5, 12, 12, 11, 'ADM00039', 'Gerencia del recurso humano', '2', '8', 'ADM00021', 'Administraci?n general', '', '', '', '', '', '', 127, NULL, NULL),
(727, 5, 12, 12, 11, 'EFD00371', 'Tenis de Campo', '2', '8', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(729, 5, 12, 12, 11, 'EFD00372', 'Formulaci?n de proyectos II', '2', '8', 'EFD00369', 'Formulaci?n de proyectos I', '', '', '', '', '', '', 127, NULL, NULL),
(730, 5, 12, 12, 11, 'EFD00049', 'Nutrici?n;2', '8', 'EFD00004', 'Bioqu?mica', '', '', 'EFD00129', 'Evaluaci?n y control funcional del entrenamiento', '', '', '730', 0, NULL, NULL),
(732, 5, 12, 12, 11, 'EFD00087', 'Seminario de proyecci?n profesional', '2', '9', 'EFD00372', 'Formulaci?n de Proyectos II', '', '', '', '', '', '', 127, NULL, NULL),
(733, 5, 12, 12, 11, 'EFD00138', 'Entrenamiento Deportivo y Biomedicina', '2', '9', 'EFD00129', 'Evaluaci?n y control funcional del entrenamiento', '', '', 'EFD00485', 'Masoterapia', '', '', 127, NULL, NULL),
(734, 5, 12, 12, 11, 'EFD00101', 'Pr?ctica III', '4', '9', 'EFD00106', 'Pr?ctica II', '', '', '', '', '', '', 127, NULL, NULL),
(735, 5, 12, 12, 11, 'EFD00373', 'Lesiones Deportivas', '2', '9', 'EFD00032', 'Biomec?nica', 'EFD00129', 'Evaluaci?n y control funcional del entrenamiento', '', '', '', '', 127, NULL, NULL),
(736, 5, 12, 12, 11, 'EFD00157', 'Tenis de Mesa', '2', '9', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(738, 5, 12, 12, 11, 'EFD00784', 'Softbol', '2', '9', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(740, 5, 12, 12, 11, 'EFD00102', 'Pr?ctica IV', '4', '10', 'EFD00101', 'Pr?ctica III', '', '', '', '', '', '', 127, NULL, NULL),
(741, 5, 12, 12, 11, 'EFD00529', 'Gimnasia aplicada', '2', '10', 'EFD00129', 'Evaluaci?n y control funcional del entrenamiento', '', '', '', '', '', '', 127, NULL, NULL),
(742, 5, 12, 13, 12, 'EFD00534', 'Morfofisiologia', '4', '1', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(743, 5, 12, 13, 12, 'EFD00535', 'Principios de Masoterapia', '4', '1', '', '', '', '', 'EFD00536', 'Anatom?a', '', '', 127, NULL, NULL),
(745, 5, 12, 13, 12, 'EFD00537', 'Desarrollo de Habilidades Comunicativas', '2', '1', '', '', '', '', 'EFD00534', 'Morfofisiologia', '', '', 127, NULL, NULL),
(746, 5, 12, 13, 12, 'EFD00538', '?tica del Cuerpo', '2', '1', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(747, 5, 12, 13, 12, 'EFD00539', 'Atenci?n Integral en Masoterapia', '2', '1', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(748, 5, 12, 13, 12, 'EFD00540', 'Masoterapia Sistemica', '4', '2', 'EFD00534', 'Morfofisiologia', '', '', '', '', '', '', 127, NULL, NULL),
(749, 5, 12, 13, 12, 'EFD00541', 'Masoterapia en Poblaciones Especiales I', '4', '2', 'EFD00535', 'Principios de Masoterapia', '', '', '', '', '', '', 127, NULL, NULL),
(751, 5, 12, 13, 12, 'EFD00543', 'Masoterapia Estetica', '4', '2', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(754, 5, 12, 13, 12, 'EFD00546', 'Masoterapia y Deporte', '4', '3', 'EFD00540', 'Masoterapia Sistemica', '', '', '', '', '', '', 127, NULL, NULL),
(755, 5, 12, 13, 12, 'EFD00547', 'Masoterapia en Poblaciones Especiales II', '4', '3', 'EFD00541', 'Masoterapia en Poblaciones Especiales I', '', '', '', '', '', '', 127, NULL, NULL),
(757, 5, 12, 13, 12, 'EFD00549', 'T?cnicas de SPA', '2', '3', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(758, 5, 12, 13, 12, 'EFD00736', 'Educaci?n Psicof?sica', '2', '3', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(759, 5, 12, 13, 12, 'EFD00737', 'Masoterapia Integral', '4', '3', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(760, 5, 12, 13, 12, 'EFD00738', 'Masoterapia y Salud', '4', '4', '', '', '', '', 'EFD00745', 'Pr?ctica Profesional', '', '', 127, NULL, NULL),
(761, 5, 12, 13, 12, 'EFD00739', 'Electiva', '2', '4', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(763, 6, 18, 14, 25, 'ING00815', 'Desarrollo de habilidades comunicativas y de negociaci?n;3', '1', '', '', '', '', '', '', '', '', '763', 0, NULL, NULL),
(764, 6, 18, 14, 25, 'ING00816', 'Desarrollo del pensamiento l?gico y matem?tico 1(A)', '3', '1', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(765, 6, 18, 14, 25, 'ING00824', 'Construcci?n de informes utilizando herramientas ofim?ticas', '2', '1', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(766, 6, 18, 14, 25, 'ING00817', 'Desarrollo del pensamiento anal?tico y sist?mico 1', '4', '1', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(767, 6, 18, 14, 25, 'ING00812', 'Identificaci?n del ciclo de vida del software', '3', '1', '', '', '', '', 'ING00816', 'Desarrollo del pensamiento l?gico y matem?tico 1(A)', 'ING00817', 'Desarrollo del pensamiento anal?tico y sist?mico 1', 127, NULL, NULL),
(768, 6, 18, 14, 25, 'ING00813', 'Comprensi?n y respeto por el entorno', '1', '1', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(769, 6, 18, 14, 25, 'ING00814', 'Desarrollo de actitudes ciudadanas', '1', '1', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(770, 6, 18, 14, 25, 'ING00818', 'Desarrollo del pensamiento l?gico y matem?tico 1(B)', '3', '2', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(771, 6, 18, 14, 25, 'ING00823', 'Comprensi?n de los fundamentos de comunicaci?n de datos', '4', '2', '', '', '', '', 'ING00818', 'Desarrollo del pensamiento l?gico y matem?tico 1(B)', '', '', 127, NULL, NULL),
(772, 6, 18, 14, 25, 'ING00821', 'Construcci?n de elementos del software 1', '2', '2', 'ING00817', 'Desarrollo del pensamiento anal?tico y sist?mico 1', '', '', 'ING00822', 'Desarrollo del pensamiento anal?tico y sist?mico 2', '', '', 127, NULL, NULL),
(773, 6, 18, 14, 25, 'ING00822', 'Desarrollo del pensamiento anal?tico y sist?mico 2', '4', '2', 'ING00817', 'Desarrollo del pensamiento anal?tico y sist?mico 1', '', '', 'ING00882', 'Interpretaci?n de requerimientos', '', '', 127, NULL, NULL),
(774, 6, 18, 14, 25, 'ING00882', 'Interpretaci?n de requerimientos', '4', '2', 'ING00812', 'Identificaci?n del ciclo de vida del software', '', '', '', '', '', '', 127, NULL, NULL),
(775, 6, 18, 14, 25, 'ING00820', 'Desarrollo de cultura f?sica y de la actitud art?stica y recreativa', '1', '2', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(776, 6, 18, 14, 25, 'ING01232', 'Identificaci?n de est?ndares para la documentaci?n y construcci?n de informes', '2', '2', 'ING00824', 'Construcci?n de informes utilizando herramientas ofim?ticas', '', '', '', '', '', '', 127, NULL, NULL),
(777, 6, 18, 14, 25, 'ING00829', 'Construcci?n de bases de datos 1', '3', '3', 'ING00882', '', '', '', '', '', '', '', 127, NULL, NULL),
(778, 6, 18, 14, 25, 'ING00825', 'Construcci?n de elementos de software web', '3', '3', 'ING00882', '', 'ING00821', '', 'ING00829', 'Construcci?n de bases de datos 1', '', '', 127, NULL, NULL),
(779, 6, 18, 14, 25, 'ING00826', 'Identificaci?n de elementos de sistemas operativos', '3', '3', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(780, 6, 18, 14, 25, 'ING00836', 'Desarrollo del pensamiento l?gico y matem?tico 2(A)', '2', '3', 'ING00818', '', '', '', 'ING00830', 'Toma de decisiones de acuerdo a los indicadores', '', '', 127, NULL, NULL),
(781, 6, 18, 14, 25, 'ING00833', 'Desarrollo del pensamiento anal?tico y sist?mico 3', '3', '3', 'ING00822', '', '', '', '', '', '', '', 127, NULL, NULL),
(782, 6, 18, 14, 25, 'ING01233', 'Preparaci?n a la validaci?n de competencias', '1', '3', 'ING01232', '', '', '', '', '', '', '', 127, NULL, NULL),
(783, 6, 18, 14, 25, 'ING00831', 'Identificar las organizaciones sus procesos y sistemas de informaci?n empresarial', '3', '3', 'ING01232', '', '', '', '', '', '', '', 127, NULL, NULL),
(784, 6, 18, 14, 25, 'ING00830', 'Toma de decisiones de acuerdo a los indicadores', '3', '3', '', '', '', '', 'ING00836', 'Desarrollo del pensamiento l?gico y matem?tico 2(A)', '', '', 127, NULL, NULL),
(785, 6, 18, 14, 25, 'ING00834', 'Garantizar el cumplimiento de los requerimientos del software', '4', '4', 'ING00825', '', '', '', '', '', '', '', 127, NULL, NULL),
(786, 6, 18, 14, 25, 'ING00828', 'Procesos de soporte a usuarios de aplicaciones y de software a usuario final', '3', '4', '', '', '', '', 'ING00832', 'Mantener la operatividad del sistema', '', '', 127, NULL, NULL),
(787, 6, 18, 14, 25, 'ING00835', 'Liderazgo de equipos de trabajo', '2', '4', 'ING00831', 'Identificar las organizaciones sus procesos y sistemas de informaci?n empresarial', '', '', '', '', '', '', 127, NULL, NULL),
(788, 6, 18, 14, 25, 'ING00832', 'Mantener la operatividad del sistema', '3', '4', 'ING00826', 'Identificaci?n de elementos de sistemas operativos', 'ING00823', 'Comprensi?n de los fundamentos de comunicaci?n de datos', '', '', '', '', 127, NULL, NULL),
(789, 6, 18, 14, 25, 'ING01234', 'Validaci?n de competencias entorno laboral', '8', '4', 'ING01233', 'Preparaci?n a la validaci?n de competencias', 'ING00829', 'Construcci?n de bases de datos 1', '', '', '', '', 127, NULL, NULL),
(792, 1, 2, 15, 16, 'ADM00031', 'Humanidades 1: Cultura Contempor?nea', '2', '1', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(795, 1, 2, 15, 16, 'CDI00005', 'Ingles 1', '2', '1', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(801, 1, 2, 15, 16, 'CDI00003', 'Ingl?s 2', '2', '2', 'CDI00005', 'Ingl?s 1', '', '', '', '', '', '', 127, NULL, NULL),
(802, 1, 2, 15, 16, 'ADM00668', 'Herramientas de Inform?tica', '2', '2', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(804, 1, 2, 15, 16, 'ADM00969', 'Servicios Aeroportuarios', '3', '2', 'ADM00968', 'Introducci?n al ?rea Profesional', '', '', '', '', '', '', 127, NULL, NULL),
(805, 1, 2, 15, 16, 'ADM00226', 'Costos y Presupuestos', '3', '3', 'ADM00865', 'Fundamentos de Contabilidad', '', '', '', '', '', '', 127, NULL, NULL),
(806, 1, 2, 15, 16, 'CDI00009', 'Ingl?s 3', '2', '3', 'CDI00003', 'Ingl?s 2', '', '', '', '', '', '', 127, NULL, NULL),
(808, 1, 2, 15, 16, 'ADM00970', 'Aeronaves y Operaciones A?reas', '3', '3', 'ADM00969', 'Servicios Aeroportuarios', '', '', '', '', '', '', 127, NULL, NULL),
(809, 1, 2, 15, 16, 'ADM00971', 'Gesti?n de Procesos Administrativos', '3', '3', 'ADM00536', 'Gesti?n del Talento Humano', '', '', '', '', '', '', 127, NULL, NULL),
(810, 1, 2, 15, 16, 'ADM00972', 'Seguridad Aeroportuaria', '3', '3', 'ADM00969', 'Servicios Aeroportuarios', '', '', '', '', '', '', 127, NULL, NULL),
(812, 1, 2, 15, 16, 'ADM00032', 'Legislaci?n Laboral y Comercial', '2', '4', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(814, 1, 2, 15, 16, 'ADM00461', 'Ecolog?a y Medio Ambiente', '2', '4', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(816, 1, 2, 15, 16, 'ADM00973', 'Planificaci?n Aeroportuaria', '3', '4', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(817, 1, 2, 15, 16, 'ADM00974', 'Seguridad Operacional SMM 1', '3', '4', 'ADM00971', 'Gesti?n de Procesos Administrativos', 'ADM00972', 'Seguridad Aeroportuaria', '', '', '', '', 127, NULL, NULL),
(826, 1, 2, 15, 16, 'ADM00537', 'Derecho Aeronautico', '3', '6', 'ADM00032', 'Legislaci?n Laboral y Comercial', '', '', '', '', '', '', 127, NULL, NULL),
(827, 1, 2, 15, 16, 'ADM00975', 'Gesti?n de Transporte', '3', '6', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(829, 1, 2, 15, 16, 'ADM00977', 'Seguridad Operacional SMM 2', '3', '6', 'ADM00974', 'Seguridad Operacional SMM1', '', '', '', '', '', '', 127, NULL, NULL),
(830, 1, 2, 15, 16, 'ADM00978', 'Gesti?n de Cargas y Mercanc?as', '3', '6', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(833, 1, 2, 16, 17, 'ADM00199', 'Fundamentos de Administraci?n;2', '1', '', '', '', '', '', '', '', '', '833', 0, NULL, NULL),
(840, 1, 2, 16, 17, 'ADM00145', 'Ingenier?a de procesos', '2', '2', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(849, 1, 2, 16, 17, 'ADM00872', 'Contabilidad de Inversi?n y Financiaci?n;4', '3', 'ADM00868', 'Contabilidad de Recursos Financieros', '', '', '', '', '', '', '849', 0, NULL, NULL),
(858, 1, 2, 16, 17, 'ADM00953', 'An?lisis Financiero', '3', '4', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(859, 1, 2, 16, 17, 'ADM00954', 'Auditoria Financiera y Aseguramiento', '3', '4', 'ADM00890', 'Fundamentos de Control', '', '', '', '', '', '', 127, NULL, NULL),
(861, 1, 2, 16, 17, 'ADM00955', 'Dise?o de un Sistema de Informaci?n de Costos', '3', '5', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(862, 1, 2, 16, 17, 'ADM00956', 'Costeo de Procesos Productivos y de Servicios', '3', '5', 'ADM00885', 'Sistemas de Gesti?n de Costos', '', '', '', '', '', '', 127, NULL, NULL),
(863, 1, 2, 16, 17, 'ADM00957', 'Auditoria Administrativa y Operacional', '3', '5', 'ADM00953', 'An?lisis Financiero', '', '', '', '', '', '', 127, NULL, NULL),
(871, 1, 2, 17, 18, 'ING01047', 'Inform?tica Avanzada', '1', '1', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(877, 1, 2, 17, 18, 'CBS00032', 'Humanidades II', '2', '2', 'CBS00031', 'Humanidades I', '', '', '', '', '', '', 127, NULL, NULL),
(878, 1, 2, 17, 18, 'ING00047', 'Dibujo T?cnico', '2', '2', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(881, 1, 2, 17, 18, 'ING00176', 'Salud Ocupacional', '1', '2', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(884, 1, 2, 17, 18, 'ADM00283', 'M?todos de Trabajo', '3', '3', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(891, 1, 2, 17, 18, 'ADM00383', 'Planeaci?n de la Producci?n;3', '4', 'ADM00381', 'Principios de Producci?n y Productividad', '', '', '', '', '', '', '891', 0, NULL, NULL),
(892, 1, 2, 17, 18, 'ADM00168', 'Control Estad?stico de Calidad', '3', '4', 'CBS00074', 'Estad?stica', '', '', '', '', '', '', 127, NULL, NULL),
(893, 1, 2, 17, 18, 'ADM00171', 'Medida del Trabajo', '3', '4', 'ADM00283', 'M?todos de Trabajo', '', '', '', '', '', '', 127, NULL, NULL),
(895, 1, 2, 17, 18, 'ADM00384', 'Gesti?n Log?stica', '3', '5', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(896, 1, 2, 17, 18, 'ADM00385', 'Sistemas de Calidad', '3', '5', 'ADM00168', 'Control Estad?stico de Calidad', '', '', '', '', '', '', 127, NULL, NULL),
(897, 1, 2, 17, 18, 'ADM00278', 'Gesti?n de Mercados', '3', '5', 'ADM00382', 'Emprendimiento Empresarial', '', '', '', '', '', '', 127, NULL, NULL),
(898, 1, 2, 17, 18, 'ADM00175', 'Taller M?quinas y Herramientas', '3', '5', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(899, 1, 2, 17, 18, 'ADM00386', 'Distribuci?n de Planta', '3', '5', 'ADM00171', 'Medida del Trabajo', '', '', '', '', '', '', 127, NULL, NULL),
(900, 1, 2, 17, 18, 'ADM00387', 'Programaci?n y Control de Producci?n;3', '5', 'ADM00383', 'Planeaci?n de la Producci?n;', '', '', '', '', '', '900', NULL, 0, NULL, NULL),
(905, 1, 2, 17, 18, 'ADM00389', 'Trabajo de Grado (Pr?ctica Empresarial)', '5', '6', 'ADM00386', 'Distribuci?n de Planta', 'ADM00387', 'Programaci?n y Control de Producci?n;', '', '', '', '905', 0, NULL, NULL),
(912, 1, 2, 18, 19, 'ADM000959', 'Derecho Constitucional', '3', '1', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(915, 1, 2, 18, 19, 'CD100001', 'Ingl?s 1', '2', '2', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(916, 1, 2, 18, 19, 'ADM00414', 'Teor?a de las Organizaciones', '3', '2', 'ADM00958', 'Fundamentos de Administraci?n;', '', '', '', '', '', '916', 0, NULL, NULL),
(920, 1, 2, 18, 19, 'CBS00033', 'Humanidades 3: Geopol?tica', '2', '3', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(932, 1, 2, 18, 19, 'ADM00962', 'Pol?ticas P?blicas', '3', '4', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(934, 1, 2, 18, 19, 'ADM00529', 'Electiva II', '3', '5', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(937, 1, 2, 18, 19, 'ADM00964', 'Gesti?n de Tesorer?as', '3', '5', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(939, 1, 2, 18, 19, 'ADM00966', 'Riesgos y Cotroles', '3', '5', 'ADM00961', 'Planeacion y Gesti?n;', '', '', '', '', '', '939', 0, NULL, NULL),
(950, 1, 2, 19, 20, 'ADM00574', 'Legislaci?n Tur?stica', '3', '2', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(951, 1, 2, 19, 20, 'ADM00575', 'Geografia Tur?stica', '3', '2', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(952, 1, 2, 19, 20, 'ADM00576', 'Gesti?n de Agencias de viajes', '3', '2', 'ADM00268', 'Administraci?n General', 'ADM00573', 'Introducci?n al ?rea Profesional', '', '', '', '', 127, NULL, NULL),
(955, 1, 2, 19, 20, 'ADM00577', 'Patrimonio Cultural y Natural', '3', '3', '', '', '', '', '', '', '', '', 127, NULL, NULL);
INSERT INTO `subjects` (`id`, `faculty_id`, `coordination_id`, `program_id`, `area_id`, `subject_code`, `subject_name`, `subject_credits`, `subject_level`, `prerequisite_code_1`, `prerequisite_name_1`, `prerequisite_code_2`, `prerequisite_name_2`, `corequisite_code_1`, `corequisite_name_1`, `corequisite_code_2`, `corequisite_name_2`, `status`, `created_at`, `updated_at`) VALUES
(956, 1, 2, 19, 20, 'ADM00578', 'Gesti?n del Turismo Sostenible', '3', '3', 'ADM00575', 'Geografia Tur?stica', '', '', '', '', '', '', 127, NULL, NULL),
(957, 1, 2, 19, 20, 'ADM00579', 'Gesti?n de Servicios de Alojamiento', '3', '3', 'ADM00574', 'Legislaci?n Tur?stica', '', '', '', '', '', '', 127, NULL, NULL),
(963, 1, 2, 19, 20, 'ADM00582', 'Gesti?n de TICS para el Sector Tur?stico', '3', '4', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(966, 1, 2, 19, 20, 'ADM00772', 'Form. y Evaluaci?n de Proy. Tur?sticos', '3', '5', 'CBS00001', 'Matem?ticas', '', '', 'ADM00426', 'Empr. y Empresarismo', '', '', 127, NULL, NULL),
(967, 1, 2, 19, 20, 'ADM00426', 'Emprendimiento y Empresarismo', '3', '5', '', '', '', '', 'ADM00772', 'Form. y Eval. de Proy. Tur?sticos', '', '', 127, NULL, NULL),
(968, 1, 2, 19, 20, 'ADM00584', 'Marketing Tur?stico', '3', '5', 'ADM00582', 'Gesti?n de TICS para el Sector Tur?stico', '', '', '', '', '', '', 127, NULL, NULL),
(969, 1, 2, 19, 20, 'ADM00585', 'Operaci?n Tur?stica', '3', '5', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(970, 1, 2, 19, 20, 'ADM00586', 'Gesti?n de Destinos Tur?sticos', '3', '5', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(974, 1, 2, 19, 20, 'ADM00588', 'Practica Profesional Tur?stica', '6', '6', '', 'Tope cr?dito 96', '', '', '', '', '', '', 127, NULL, NULL),
(976, 1, 2, 20, 13, 'CBS00420', 'Matem?ticas Operativas', '4', '1', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(980, 1, 2, 20, 13, 'CDI00045', 'Ingl?s*', '2', '1', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(981, 1, 2, 20, 13, 'ADM00694', 'Fundamentos de Log?stica Integral', '3', '1', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(988, 1, 2, 20, 13, 'ADM00059', 'Gerencia de Compras', '3', '2', 'ADM00694', 'Fundamentos de Log?stica Integral', '', '', '', '', '', '', 127, NULL, NULL),
(995, 1, 2, 20, 13, 'ADM00106', 'Inform?tica Aplicada', '1', '3', 'ING00012', 'Inform?tica B?sica', '', '', '', '', '', '', 127, NULL, NULL),
(996, 1, 2, 20, 13, 'ADM00103', 'Empaque y Embalaje', '3', '3', 'ADM00694', 'Fundamentos de Log?stica Integral', '', '', '', '', '', '', 127, NULL, NULL),
(997, 1, 2, 20, 13, 'ADM00102', 'Log?stica de Transporte y Distribuci?n 1', '3', '3', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(999, 1, 2, 20, 13, 'ADM00800', 'Sistemas de Informaci?n Log?stica', '3', '4', 'ADM00102', 'Log?stica de Transporte y Distribuci?n 1', '', '', '', '', '', '', 127, NULL, NULL),
(1000, 1, 2, 20, 13, 'ADM00799', 'Log?stica de Transporte y Distribuci?n 2', '3', '4', 'ADM00102', 'Log?stica de Transporte y Distribuci?n 1', '', '', '', '', '', '', 127, NULL, NULL),
(1001, 1, 2, 20, 13, 'ADM00801', 'Almacenamiento y gesti?n de Inventarios', '3', '4', 'ADM00103', 'Empaque y Embalaje', '', '', '', '', '', '', 127, NULL, NULL),
(1002, 1, 2, 20, 13, 'ING00026', 'Investigaci?n de Operaciones*', '3', '4', 'CBS00074', 'Estad?stica', '', '', '', '', '', '', 127, NULL, NULL),
(1004, 1, 2, 20, 13, 'ADM00224', 'Gesti?n el Talento Humano', '3', '4', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(1006, 1, 2, 20, 13, 'ADM00857', 'Distribuci?n F?sica Internacional (DFI)', '3', '5', 'ADM00799', 'Log?stica de Transporte y Distribuci?n 2', '', '', '', '', '', '', 127, NULL, NULL),
(1007, 1, 2, 20, 13, 'ADM00802', 'Modelo de Gesti?n de la calidad', '3', '5', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(1008, 1, 2, 20, 13, 'ADM00858', 'Supply Chain Management (SCM)', '3', '5', 'ADM00800', 'Sistemas de Informaci?n Log?stica', '', '', '', '', '', '', 127, NULL, NULL),
(1011, 1, 2, 20, 13, 'ING00589', 'Higiene y Seguridad Industrial', '1', '5', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(1012, 1, 2, 20, 13, 'ADM00859', 'Gesti?n Integral del Servicio', '3', '6', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(1015, 1, 2, 20, 13, 'ADM00860', 'Log?stica Inversa', '3', '6', 'ADM00857', 'Distribuci?n F?sica Internacional (DFI)', '', '', '', '', '', '', 127, NULL, NULL),
(1016, 1, 2, 20, 13, 'ADM00861', 'Legislaci?n Aduanera', '3', '6', 'ADM00857', 'Distribuci?n F?sica Internacional (DFI)', '', '', '', '', '', '', 127, NULL, NULL),
(1043, 1, 2, 21, 14, 'ADM00094', 'Modelo de gesti?n ISO 9000', '3', '5', 'ADM00168', 'Control estad?stico de calidad', '', '', '', '', '', '', 127, NULL, NULL),
(1046, 1, 2, 21, 14, 'ADM00095', 'Dise?o de plantas', '3', '5', 'ADM00171', 'Medida del trabajo', '', '', '', '', '', '', 127, NULL, NULL),
(1047, 1, 2, 21, 14, 'ADM00116', 'Planeaci?n y control de producci?n;3', '5', 'ADM00064', 'Principios de producci?n y productividad', '', '', '', '', '', '', '1047', 0, NULL, NULL),
(1049, 1, 2, 21, 14, 'ADM00023', 'Administraci?n de salarios', '3', '6', 'ADM00224', 'Gesti?n del talento humano', '', '', '', '', '', '', 127, NULL, NULL),
(1063, 2, 4, 22, 15, 'CAG00704', 'Biometr?a Tec.', '3', '2', 'CAG00557', 'Matem?ticas', '', '', '', '', '', '', 127, NULL, NULL),
(1064, 2, 4, 22, 15, 'CAG00012', 'Topograf?a y Dibujo', '3', '2', 'CAG00558', 'Geometr?a', 'CAG00557', 'Matem?ticas', '', '', '', '', 127, NULL, NULL),
(1066, 2, 4, 22, 15, 'EFD00532', 'Deportes, Arte y Recreaci?n;2', '2', '', '', '', '', '', '', '', '', '1066', 0, NULL, NULL),
(1067, 2, 4, 22, 15, 'CAG00706', 'Bot?nica General', '3', '3', 'CAG00703', 'Biolog?a General', '', '', '', '', '', '', 127, NULL, NULL),
(1070, 2, 4, 22, 15, 'CAG00017', 'Suelos I', '3', '3', 'CAG00705', 'Qu?mica Org?nica', '', '', '', '', '', '', 127, NULL, NULL),
(1072, 2, 4, 22, 15, 'CAG00707', 'Gen?tica Tec.', '3', '3', 'CAG00703', 'Biolog?a General', 'CAG00704', 'Biometr?a Tec.', '', '', '', '', 127, NULL, NULL),
(1074, 2, 4, 22, 15, 'CAG00708', 'Sanidad Vegetal', '3', '4', 'CAG00706', 'Bot?nica General', '', '', '', '', '', '', 127, NULL, NULL),
(1075, 2, 4, 22, 15, 'CAG00296', 'Salud Animal TEC', '3', '4', 'CAG00027', 'Nutrici?n Animal', '', '', '', '', '', '', 127, NULL, NULL),
(1076, 2, 4, 22, 15, 'CAG00018', 'Suelos II', '3', '4', 'CAG00017', 'Suelos I', '', '', '', '', '', '', 127, NULL, NULL),
(1077, 2, 4, 22, 15, 'CAG00709', 'Riegos y Drenaje', '3', '4', 'CAG00017', 'Suelos I', '', '', '', '', '', '', 127, NULL, NULL),
(1080, 2, 4, 22, 15, 'CAG00300', 'Producci?n Pecuaria I (Aves) Tec.', '3', '5', 'CAG00296', 'Salud Animal TEC', '', '', '', '', '', '', 127, NULL, NULL),
(1081, 2, 4, 22, 15, 'CAG00712', 'Producci?n Agr?cola I Tec.', '3', '5', 'CAG00708', 'Sanidad Vegetal', 'CAG00018', 'Suelos II', '', '', '', '', 127, NULL, NULL),
(1082, 2, 4, 22, 15, 'CAG00711', 'Reproducci?n Animal Tec.', '3', '5', 'CAG00296', 'Salud Animal TEC', '', '', '', '', '', '', 127, NULL, NULL),
(1085, 2, 4, 22, 15, 'CAG00718', 'Buenas Practicas Agropecuarias', '3', '5', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(1086, 2, 4, 22, 15, 'CAG00719', 'Agricultura de Precisi?n;3', '5', '', '', '', '', '', '', '', '', '1086', 0, NULL, NULL),
(1087, 2, 4, 22, 15, 'CAG00720', 'Especies no Tradicionales', '3', '5', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(1088, 2, 4, 22, 15, 'CAG00721', 'Cultivos Forestales', '3', '5', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(1089, 2, 4, 22, 15, 'CAG00301', 'Producci?n Pecuaria II (Porcinos) Tec.', '3', '6', 'CAG00296', 'Salud Animal TEC', '', '', '', '', '', '', 127, NULL, NULL),
(1090, 2, 4, 22, 15, 'CAG00715', 'Producci?n Agr?cola II Tec.', '3', '6', 'CAG00708', 'Sanidad Vegetal', 'CAG00018', 'Suelos II', '', '', '', '', 127, NULL, NULL),
(1093, 2, 4, 22, 15, 'CAG00714', 'Pastos y Ganado Tec.', '3', '6', 'CAG00711', 'Reproducci?n Animal Tec.', '', '', '', '', '', '', 127, NULL, NULL),
(1095, 3, 5, 23, 6, 'CBS00046', 'Qu?mica Fundamental', '5', '1', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(1096, 3, 5, 23, 6, 'CBS00241', 'T?cnicas de Laboratorio Qu?mico', '3', '1', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(1102, 3, 5, 23, 6, 'CBS00243', 'Qu?mica Inorg?nica', '5', '2', 'CBS00046', 'Qu?mica Fundamental', 'CBS00241', 'T?cnicas de Laboratorio Qu?mico', '', '', '', '', 127, NULL, NULL),
(1107, 3, 5, 23, 6, 'CBS00244', 'Qu?mica Anal?tica', '5', '3', 'CBS00243', 'Qu?mica Inorg?nica', '', '', '', '', '', '', 127, NULL, NULL),
(1110, 3, 5, 23, 6, 'CBS00248', 'Fisicoqu?mica', '5', '4', 'CBS00079', 'F?sica del Movimiento', '', '', '', '', '', '', 127, NULL, NULL),
(1111, 3, 5, 23, 6, 'CBS00249', 'Desarrollo Sostenible', '4', '4', 'CBS00097', 'Pedagog?a Constitucional', 'CBS00107', 'Introducci?n al ?rea Profesional', '', '', '', '', 127, NULL, NULL),
(1112, 3, 5, 23, 6, 'CBS00365', 'Investigaci?n y Desarrollo I', '2', '4', 'CBS00030', 'Lengua Materna', '', '', '', '', '', '', 127, NULL, NULL),
(1114, 3, 5, 23, 6, 'CBS00367', 'An?lisis Instrumental', '5', '5', 'CBS00244', 'Qu?mica Anal?tica', '', '', '', '', '', '', 127, NULL, NULL),
(1115, 3, 5, 23, 6, 'CBS00369', 'Gesti?n Industrial y de Laboratorios', '4', '5', 'CBS00247', 'Estad?stica Aplicada', '', '', 'CBS00370', 'Pr?ctica Formativa en Laboratorios', '', '', 127, NULL, NULL),
(1116, 3, 5, 23, 6, 'CBS00250', 'Seguridad Industrial', '2', '5', 'CBS00248', 'Fisicoqu?mica', '', '', '', '', '', '', 127, NULL, NULL),
(1117, 3, 5, 23, 6, 'CBS00370', 'Pr?ctica Formativa en Laboratorios', '2', '5', '', '', '', '', 'CBS00369', 'Gesti?n Industrial y de Laboratorios', '', '', 127, NULL, NULL),
(1118, 3, 5, 23, 6, 'CBS00372', 'Investigaci?n y Desarrollo II', '2', '6', 'CBS00365', 'Investigaci?n y Desarrollo I', '', '', '', '', '', '', 127, NULL, NULL),
(1119, 3, 5, 23, 6, 'CBS00371', 'C?tedra en Qu?mica Industrial y de Laboratorios', '4', '6', '', 'Restricci?n por Tipolog?a TOD 81 Cr?ditos', '', '', '', '', '', '', 127, NULL, NULL),
(1121, 4, 9, 24, 8, 'CAV00381', 'Teor?as de la Comunicaci?n;2', '1', '', '', '', '', '', '', '', '', '1121', 0, NULL, NULL),
(1122, 4, 9, 24, 8, 'CAV00382', 'Prensa y Difusi?n;2', '1', '', '', '', '', '', '', '', '', '1122', 0, NULL, NULL),
(1123, 4, 9, 24, 8, 'CAV00383', 'Habilidades Comunicativas y Redacci?n;2', '1', '', '', '', '', '', '', '', '', '1123', 0, NULL, NULL),
(1125, 4, 9, 24, 8, 'CAV00384', 'Eventos 1 Nacionales e Internacionales', '2', '1', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(1126, 4, 9, 24, 8, 'CAV00385', 'Arquitectura, Escenograf?a y dise?o de eventos', '3', '1', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(1128, 4, 9, 24, 8, 'CAV00359', 'Semiolog?a de Eventos', '2', '2', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(1131, 4, 9, 24, 8, 'CAV00387', 'Eventos 2: Sociales', '2', '2', 'CAV00384', 'Eventos 1 Nacionales e Internacionales', '', '', '', '', '', '', 127, NULL, NULL),
(1132, 4, 9, 24, 8, 'CAV00388', 'Log?stica e infraestructura de Eventos', '3', '2', 'CAV00385', 'Arquitectura, Escenograf?a y dise?o de eventos', '', '', '', '', '', '', 127, NULL, NULL),
(1133, 4, 9, 24, 8, 'CAV00389', 'Gesti?n y Planeaci?n de Eventos', '2', '2', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(1134, 4, 9, 24, 8, 'CAV00390', 'Eventos Seguros', '2', '2', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(1135, 4, 9, 24, 8, 'CAV00391', 'Relaciones P?blicas', '2', '3', 'CAV00382', 'Prensa y Difusi?n;', '', '', '', '', '', '1135', 0, NULL, NULL),
(1137, 4, 9, 24, 8, 'CAV00392', 'Seminario de Investigaci?n Aplicada', '3', '3', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(1140, 4, 9, 24, 8, 'CAV00393', 'Eventos 3: Culturales y Acad?micos', '2', '3', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(1141, 4, 9, 24, 8, 'CAV00394', 'Eventos 4 Corporativos', '3', '3', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(1142, 4, 9, 24, 8, 'CAV00395', 'Social Media Community Manager', '3', '4', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(1143, 4, 9, 24, 8, 'CAV00396', 'Ceremonial y Protocolo', '2', '4', 'CAV00391', 'Relaciones P?blicas', '', '', '', '', '', '', 127, NULL, NULL),
(1144, 4, 9, 24, 8, 'CAV00374', 'Costos y presupuestos de Eventos', '2', '4', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(1147, 4, 9, 24, 8, 'CAV00397', 'Mercadeo de Eventos', '3', '5', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(1148, 4, 9, 24, 8, 'CAV00398', 'Formulaci?n de Proyectos', '3', '5', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(1151, 4, 9, 24, 8, 'CAV00399', 'Eventos 5:Deportivos', '3', '5', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(1152, 4, 9, 24, 8, 'CAV00362', 'Legislaci?n de eventos', '2', '5', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(1154, 4, 9, 25, 9, 'CAV00145', 'Introducci?n al ?rea', '2', '1', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(1155, 4, 9, 25, 9, 'CAV00179', 'G?neros y formatos de televisi?n;4', '1', '', '', '', '', 'CAV00277', 'Biblia de producci?n;', '', '1155', NULL, 0, NULL, NULL),
(1156, 4, 9, 25, 9, 'CAV00274', 'Semi?tica de la imagen', '2', '1', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(1158, 4, 9, 25, 9, 'CAV00276', 'Redacci?n;2', '1', '', '', '', '', '', '', '', '', '1158', 0, NULL, NULL),
(1160, 4, 9, 25, 9, 'CAV00277', 'Biblia de producci?n;4', '1', '', '', '', '', 'CAV00275', 'Lenguaje audiovisual', 'CAV00179', 'G?neros y formatos de televisi?n;1160', NULL, 0, NULL, NULL),
(1161, 4, 9, 25, 9, 'CAV00278', 'Producci?n 1', '2', '2', '', '', '', '', 'CAV00284', '', '', '', 127, NULL, NULL),
(1162, 4, 9, 25, 9, 'CAV00279', 'Sonido', '2', '2', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(1163, 4, 9, 25, 9, 'CAV00280', 'Camarograf?a e iluminaci?n;2', '2', '', '', '', '', 'CAV00284', 'Televisi?n 1', '', '', '1163', 0, NULL, NULL),
(1166, 4, 9, 25, 9, 'CAV00283', 'An?lisis dramat?rgico y libretos', '2', '2', 'CAV00276', 'Redacci?n;CAV00275', 'Lenguaje audiovisual', '', '', '', '', '1166', 0, NULL, NULL),
(1167, 4, 9, 25, 9, 'CAV00284', 'Televisi?n 1', '4', '2', 'CAV00277', 'Biblia de producci?n;', '', 'CAV00278', 'Producci?n 1', 'CAV00280', 'Camarograf?a e iluminaci?n;1167', NULL, 0, NULL, NULL),
(1168, 4, 9, 25, 9, 'CAV00285', 'Producci?n 2', '2', '3', '', '', '', '', 'CAV00289', 'Televisi?n 2', '', '', 127, NULL, NULL),
(1169, 4, 9, 25, 9, 'CAV00286', 'Direcci?n;4', '3', 'CAV00380', 'Montaje', '', '', 'CAV00289', 'Televisi?n 2', '', '', '1169', 0, NULL, NULL),
(1170, 4, 9, 25, 9, 'CAV00287', 'Libretos II', '2', '3', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(1172, 4, 9, 25, 9, 'CAV00289', 'Televisi?n 2', '4', '3', 'CAV00284', 'Televisi?n 1', '', '', 'CAV00285', 'Producci?n 2', 'CAV00286', 'Direcci?n;1172', 0, NULL, NULL),
(1174, 4, 9, 25, 9, 'CAV00291', 'Producci?n 3', '2', '4', '', '', '', '', 'CAV00295', '', '', '', 127, NULL, NULL),
(1176, 4, 9, 25, 9, 'CAV00292', 'El oficio de investigar', '2', '4', '', '', '', '', 'CAV00295', 'Televisi?n 3', '', '', 127, NULL, NULL),
(1177, 4, 9, 25, 9, 'CAV00293', 'Globalizaci?n;2', '4', '', '', '', '', '', '', '', '', '1177', 0, NULL, NULL),
(1178, 4, 9, 25, 9, 'CAV00294', 'Emprendimiento audiovisual', '2', '4', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(1179, 4, 9, 25, 9, 'CAV00295', 'Televisi?n 3', '4', '4', 'CAV00289', 'Televisi?n 2', '', '', 'CAV00292', 'El oficio de investigar', 'CAV00291', 'Producci?n 3', 127, NULL, NULL),
(1180, 4, 9, 25, 9, 'CAV00297', 'Producci?n para medios convergentes', '2', '5', '', '', '', '', 'CAV00314', '', '', '', 127, NULL, NULL),
(1182, 4, 9, 25, 9, 'CAV00299', 'Multimedia', '2', '5', '', '', '', '', 'CAV00314', 'Transmedia', '', '', 127, NULL, NULL),
(1185, 4, 9, 25, 9, 'CAV00314', 'Transmedia', '4', '5', 'CAV00295', 'Televisi?n 3', '', '', 'CAV00299', 'Multimedia', 'CAV00297', 'Producci?n para medios convergentes', 127, NULL, NULL),
(1187, 6, 17, 26, 26, 'CBS00350', '?lgebra y Trigonometr?a', '4', '1', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(1190, 6, 17, 26, 26, 'ING01034', 'Dibujo Instrumental', '2', '1', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(1196, 6, 17, 26, 26, 'ING01035', 'Materiales de la Construcci?n;2', '2', '', '', '', '', '', '', '', '', '1196', 0, NULL, NULL),
(1199, 6, 17, 26, 26, 'ING01036', 'Topograf?a 1', '4', '2', 'CBS00024', 'Geometr?a', 'ING01034', 'Dibujo Instrumental', '', '', '', '', 127, NULL, NULL),
(1204, 6, 17, 26, 26, 'ING01037', 'Sistemas Constructivos 1', '3', '3', 'ING01035', 'Materiales de la Construcci?n;ING00436', 'Dibujo Asistido por Computador', '', '', '', '', '1204', 0, NULL, NULL),
(1205, 6, 17, 26, 26, 'ING00586', 'Ciencia, Tecnolog?a e Innovaci?n;1', '3', '', '', '', '', '', '', '', '', '1205', 0, NULL, NULL),
(1206, 6, 17, 26, 26, 'ING01038', 'Geom?tica B?sica', '2', '3', 'ING01036', 'Topograf?a 1', 'ING00435', 'Fundamentos de Programaci?n;', '', '', '', '1206', 0, NULL, NULL),
(1207, 6, 17, 26, 26, 'ING01039', 'Topograf?a 2', '4', '3', 'ING01036', 'Topograf?a 1', '', '', '', '', '', '', 127, NULL, NULL),
(1210, 6, 17, 26, 26, 'ING00096', 'Resistencia de Materiales', '4', '4', 'ING00007', 'Est?tica', '', '', '', '', '', '', 127, NULL, NULL),
(1211, 6, 17, 26, 26, 'ING01040', 'Sistemas Constructivos 2', '3', '4', 'ING01037', 'Sistemas Constructivos 1', '', '', '', '', '', '', 127, NULL, NULL),
(1213, 6, 17, 26, 26, 'ING01041', 'Electiva Profesional 1', '2', '5', '', '50 Cr?ditos', '', '', '', '', '', '', 127, NULL, NULL),
(1214, 6, 17, 26, 26, 'ING00589', 'Principios de Hidr?ulica Aplicada', '3', '5', 'ING00587', 'Mec?nica de Fluidos', 'CBS00074', 'Estad?stica', '', '', '', '', 127, NULL, NULL),
(1215, 6, 17, 26, 26, 'ING01042', 'An?lisis Estructural', '3', '5', 'ING00096', 'Resistencia de Materiales', '', '', '', '', '', '', 127, NULL, NULL),
(1216, 6, 17, 26, 26, 'ING01043', 'Sistemas Constructivos 3', '3', '5', 'ING01040', 'Sistemas Constructivos 2', '', '', '', '', '', '', 127, NULL, NULL),
(1218, 6, 17, 26, 26, 'ING00592', 'Construcci?n de V?as y Pavimentos', '4', '5', 'ING00116', 'Dise?o Geom?trico de V?as', 'ING01005', 'Mec?nica de Suelos', '', '', '', '', 127, NULL, NULL),
(1219, 6, 17, 26, 26, 'ING01044', 'Electiva Profesional 2', '2', '6', '', '50 Cr?ditos', '', '', '', '', '', '', 127, NULL, NULL),
(1220, 6, 17, 26, 26, 'ING01323', 'Dise?o de Estructuras en Hormig?n I', '4', '6', 'ING01042', 'An?lisis Estructural', '', '', '', '', '', '', 127, NULL, NULL),
(1221, 6, 17, 26, 26, 'ING01320', 'Principios de Geotecnia', '2', '6', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(1222, 6, 17, 26, 26, 'ING01321', 'Pr?ctica Profesional/Trabajo de grado', '4', '6', '', '68 Cr?ditos', '', '', '', '', '', '', 127, NULL, NULL),
(1228, 6, 16, 27, 27, 'ING01357', 'Introducci?n a la Seguridad y la Salud en el Trabajo', '2', '1', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(1232, 6, 16, 27, 27, 'CBS00432', 'C?lculo', '6', '2', 'CBS00001', 'Matem?ticas', '', '', '', '', '', '', 127, NULL, NULL),
(1234, 6, 16, 27, 27, 'ING001359', 'Cultura y Liderazgo', '1', '2', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(1238, 6, 16, 27, 27, 'ING01361', 'Fundamentos de Riesgo El?ctrico', '3', '3', 'CBS00079', 'F?sica del Movimiento', '', '', '', '', '', '', 127, NULL, NULL),
(1239, 6, 16, 27, 27, 'ING01362', 'Fundamentos de Riesgo Qu?mico', '4', '3', 'CBS00027', 'Qu?mica', '', '', '', '', '', '', 127, NULL, NULL),
(1242, 6, 16, 27, 27, 'ING01363', 'Administraci?n Alineada a la Estrategia Organizacional', '1', '3', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(1243, 6, 16, 27, 27, 'ING00054', 'Anatom?a y Fisiolog?a del Trabajo', '3', '3', '', 'TC:35', '', '', '', '', '', '', 127, NULL, NULL),
(1245, 6, 16, 27, 27, 'ING00969', 'Fundamentos de Incendios y Explosiones', '3', '4', 'ING01361', 'Fundamentos de Riesgo El?ctrico', '', '', '', '', '', '', 127, NULL, NULL),
(1246, 6, 16, 27, 27, 'ING01364', 'Fundamentos de Ventilaci?n Industrial', '3', '4', 'ING00963', 'Dibujo', 'ING01362', 'Fundamentos de Riesgo Qu?mico', '', '', '', '', 127, NULL, NULL),
(1247, 6, 16, 27, 27, 'ING00409', 'Seguridad en Trabajos de Alto Riesgo', '3', '4', 'ING01264', 'Riesgo Mec?nico', '', '', '', '', '', '', 127, NULL, NULL),
(1251, 6, 16, 27, 27, 'ING01365', 'Andragog?a en Seguridad y Salud en el Trabajo', '3', '4', '', 'TC:50', '', '', '', '', '', '', 127, NULL, NULL),
(1253, 6, 16, 27, 27, 'ING01367', 'Legislaci?n en Seguridad y Salud en el Trabajo', '3', '5', '', 'TC:68', '', '', '', '', '', '', 127, NULL, NULL),
(1254, 6, 16, 27, 27, 'ING00972', 'Fundamentos de Ruido y Vibraciones', '3', '5', 'ING01364', 'Fundamentos de Ventilaci?n Industrial', '', '', '', '', '', '', 127, NULL, NULL),
(1255, 6, 16, 27, 27, 'ING01368', 'Sistemas de Gesti?n en Seguridad y Salud en el Trabajo', '3', '5', 'ING01363', 'Administraci?n Alineada a la Estrategia Organizacional', '', '', '', '', '', '', 127, NULL, NULL),
(1256, 6, 16, 27, 27, 'ING01369', 'Fundamentos de Ergonom?a', '3', '5', 'ING00400', 'Medicina del Trabajo', '', '', '', '', '', '', 127, NULL, NULL),
(1258, 6, 16, 27, 27, 'ING01370', 'Riesgos Sicosociales', '2', '5', 'ING00400', 'Medicina del Trabajo', '', '', '', '', '', '', 127, NULL, NULL),
(1259, 6, 16, 27, 27, 'ING01371', 'Riesgos F?sicos', '2', '', '', 'TC:84', '', '', '', '', '', '', 127, NULL, NULL),
(1261, 6, 16, 27, 27, 'ING01372', 'Sistemas Integrados de Gesti?n;2', '', 'ING01368', 'Sistemas de Gesti?n en Seguridad y Salud en el Trabajo', '', '', '', '', '', '', '1261', 0, NULL, NULL),
(1263, 6, 16, 27, 27, 'ING01373', 'Gesti?n del Riesgo en otras Modalidades de Trabajo', '1', '', '', 'TC:84', '', '', '', '', '', '', 127, NULL, NULL),
(1265, 6, 18, 28, 28, 'ING01235', 'Comprensi?n fundamentos de la f?sica para inform?tica', '3', '1', '', '', '', '', 'ING00842', 'Desarrollo del pensamiento l?gico y matem?tico 2(B)', '', '', 127, NULL, NULL),
(1266, 6, 18, 28, 28, 'ING00842', 'Desarrollo del pensamiento l?gico y matem?tico 2(B)', '3', '1', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(1267, 6, 18, 28, 28, 'ING00838', 'An?lisis de requerimientos', '4', '1', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(1268, 6, 18, 28, 28, 'ING00839', 'Construcci?n de elementos de software 2', '2', '1', '', '', '', '', 'ING00833', '', '', '', 127, NULL, NULL),
(1269, 6, 18, 28, 28, 'ING01237', 'Comprensi?n de arquitectura del hardware y fundamentos de comunicaciones a partir de principios f?sicos', '3', '2', 'ING01235', 'Comprensi?n fundamentos de la f?sica para inform?tica', '', '', '', '', '', '', 127, NULL, NULL),
(1270, 6, 18, 28, 28, 'ING01236', 'Comprensi?n de fundamentos de sistemas operativos e instalaci?n + comprensi?n de la arquitectura y organizaci?n de computadores', '3', '2', '', '', '', '', 'ING01237', 'Comprensi?n de arquitectura del hardware y fundamentos de comunicaciones a partir de principios f?sicos', '', '', 127, NULL, NULL),
(1271, 6, 18, 28, 28, 'ING00847', 'Construcci?n de bases de datos 2', '3', '2', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(1272, 6, 18, 28, 28, 'ING00846', 'Construcci?n de elementos de software 3', '2', '2', 'ING00839', 'Construcci?n de elementos de software 2', '', '', 'ING00845', 'Dise?o del Sistema', '', '', 127, NULL, NULL),
(1273, 6, 18, 28, 28, 'ING00845', 'Dise?o del Sistema', '4', '2', 'ING00838', 'An?lisis de requerimientos', '', '', 'ING00846', 'Construcci?n de elementos de software 3', '', '', 127, NULL, NULL),
(1274, 6, 18, 28, 28, 'ING00844', 'Documentaci?n de procesos y recursos de los sistemas de informaci?n;2', '2', '', '', '', '', '', '', '', '', '1274', 0, NULL, NULL),
(1275, 6, 18, 28, 28, 'ING00886', 'Elaboraci?n de procedimientos para mantener la informaci?n con integridad, seguridad y disponibilidad', '2', '2', '', '', '', '', 'ING00844', 'Documentaci?n de procesos y recursos de los sistemas de informaci?n;', '', '1275', 0, NULL, NULL),
(1276, 6, 18, 28, 28, 'ING00840', 'Aspectos ?ticos de la profesi?n;1', '2', '', '', '', '', '', '', '', '', '1276', 0, NULL, NULL),
(1277, 6, 18, 28, 28, 'ING00851', 'Construcci?n de elementos de software 4', '4', '3', 'ING00846', 'Construcci?n de elementos de software 3', '', '', '', '', '', '', 127, NULL, NULL),
(1278, 6, 18, 28, 28, 'ING00850', 'Implantar el sistema de informaci?n;4', '3', 'ING00845', 'Dise?o del Sistema', '', '', '', '', '', '', '1278', 0, NULL, NULL),
(1279, 6, 18, 28, 28, 'ING00885', 'Profundizaci?n en an?lisis de informaci?n empresarial', '3', '3', 'ING00845', 'Dise?o del Sistema', '', '', '', '', '', '', 127, NULL, NULL),
(1280, 6, 18, 28, 28, 'ING00884', 'Profundizaci?n en desarrollo de software', '2', '3', 'ING00845', 'Dise?o del Sistema', '', '', '', '', '', '', 127, NULL, NULL),
(1284, 6, 18, 29, 29, 'ING01049', 'Taller TIC', '3', '1', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(1286, 6, 18, 29, 29, 'CBS00377', 'Formaci?n Ciudadana', '1', '1', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(1288, 6, 18, 29, 29, 'ING01048', 'Introducci?n al programa', '2', '1', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(1292, 6, 18, 29, 29, 'ING01052', 'Medio Ambiente y Desarrollo Sostenible', '2', '2', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(1294, 6, 18, 29, 29, 'ING01050', 'Circuitos El?ctricos', '3', '2', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(1297, 6, 18, 29, 29, 'CBS00383', 'F?sica de Ondas y Campos', '4', '3', 'CBS00380', 'F?sica del Movimiento', '', '', '', '', '', '', 127, NULL, NULL),
(1298, 6, 18, 29, 29, 'ING01053', 'Electr?nica An?loga', '3', '3', 'ING01050', 'Circuitos El?ctricos', '', '', '', '', '', '', 127, NULL, NULL),
(1299, 6, 18, 29, 29, 'ING01054', 'Programaci?n aplicada', '3', '3', 'ING01051', 'Fundamentos de programaci?n;', '', '', '', '', '', '1299', 0, NULL, NULL),
(1301, 6, 18, 29, 29, 'ING01055', 'Redes de informaci?n;4', '3', 'ING01049', 'Taller TIC', 'ING01048', 'Introducci?n al programa', '', '', '', '', '1301', 0, NULL, NULL),
(1302, 6, 18, 29, 29, 'ING01056', 'Sistemas Digitales', '3', '4', '', '25 cr', '', '', '', '', '', '', 127, NULL, NULL),
(1303, 6, 18, 29, 29, 'ING01057', 'Electromagnetismo', '3', '4', 'CBS00383', 'F?sica de Ondas y Campos', '', '', '', '', '', '', 127, NULL, NULL),
(1304, 6, 18, 29, 29, 'ING01058', 'An?lisis de Se?ales', '3', '4', 'CBS00382', 'C?lculo integral', '', '', '', '', '', '', 127, NULL, NULL),
(1305, 6, 18, 29, 29, 'ING01059', 'Comunicaciones electr?nicas', '3', '4', 'ING01053', 'Electr?nica An?loga', '', '', 'ING01058', 'An?lisis de Se?ales', '', '', 127, NULL, NULL),
(1306, 6, 18, 29, 29, 'ING01060', 'Plataformas de la Informaci?n;3', '4', '', '25 cr', '', '', '', '', '', '', '1306', 0, NULL, NULL),
(1308, 6, 18, 29, 29, 'ING01061', 'Emprendimiento empresarial e innovaci?n;2', '4', '', '30 cr', '', '', '', '', '', '', '1308', 0, NULL, NULL),
(1310, 6, 18, 29, 29, 'ING01063', 'Radiopropagaci?n y antenas', '4', '5', 'ING01057', 'Electromagnetismo', '', '', '', '', '', '', 127, NULL, NULL),
(1311, 6, 18, 29, 29, 'ING01064', 'Comunicaciones ?pticas', '3', '5', '', '', '', '', 'ING01063', 'Radiopropagaci?n y antenas', '', '', 127, NULL, NULL),
(1312, 6, 18, 29, 29, 'ING01065', 'Medios de Transmisi?n;3', '5', '', '45 cr', '', '', '', '', '', '', '1312', 0, NULL, NULL),
(1313, 6, 18, 29, 29, 'ING01066', 'Normatividad en TIC', '2', '5', '', '45 cr', '', '', '', '', '', '', 127, NULL, NULL),
(1314, 6, 18, 29, 29, 'ING01068', 'Optativa 1', '2', '5', '', '55 cr', '', '', '', '', '', '', 127, NULL, NULL),
(1315, 6, 18, 29, 29, 'ING01070', 'Plataformas de Comunicaciones Inal?mbricos', '3', '6', '', '70 cr', '', '', '', '', '', '', 127, NULL, NULL),
(1317, 6, 18, 29, 29, 'ING01069', 'Pr?ctica profesional o Trabajo de Grado', '6', '6', 'CBS00384', 'Metodolog?a de la investigaci?n;', '', '', '', '', '', '1317', 0, NULL, NULL),
(1322, 6, 17, 30, 30, 'CBS00425', 'Gemotr?a Vectorial', '3', '1', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(1323, 6, 17, 30, 30, 'ING01247', 'Introducci?n a la Automatizaci?n;1', '1', '', '', '', '', '', '', '', '', '1323', 0, NULL, NULL),
(1328, 6, 17, 30, 30, 'ING00057', 'Circuitos El?ctricos 1', '3', '2', 'ING01247', 'Introducci?n a la Automatizaci?n;', '', '', '', '', '', '1328', 0, NULL, NULL),
(1329, 6, 17, 30, 30, 'ING01248', 'Programaci?n B?sica', '3', '2', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(1332, 6, 17, 30, 30, 'ING00058', 'Circuitos El?ctricos 2', '3', '3', 'ING00057', 'Circuitos El?ctricos 1', '', '', '', '', '', '', 127, NULL, NULL),
(1333, 6, 17, 30, 30, 'ING00075', 'Electr?nica An?loga 1', '3', '3', 'ING00057', 'Circuitos El?ctricos 1', '', '', '', '', '', '', 127, NULL, NULL),
(1335, 6, 17, 30, 30, 'ING01249', 'Medici?n e Instrumentaci?n Industrial 1', '3', '3', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(1339, 6, 17, 30, 30, 'ING00076', 'El?ctronica An?loga 2', '3', '4', 'ING00058', 'Circuitos El?ctricos 2', 'ING00075', 'Electr?nica An?loga 1', '', '', '', '', 127, NULL, NULL),
(1340, 6, 17, 30, 30, 'ING01250', 'Medici?n e Instrumentaci?n Industrial 2', '3', '4', 'ING01249', 'Medici?n e Instrumentaci?n Industrial 1', '', '', '', '', '', '', 127, NULL, NULL),
(1341, 6, 17, 30, 30, 'ING00232', 'Metrolog?a', '3', '5', 'CBS00074', '', '', '', '', '', '', '', 127, NULL, NULL),
(1342, 6, 17, 30, 30, 'ING01251', 'Optativa', '3', '5', '', '', '', '', '', '', '', '', 127, NULL, NULL),
(1345, 6, 17, 30, 30, 'ING01254', 'Electr?nica Digital y Microcontroladores', '3', '5', 'ING00058', 'Circuitos El?ctricos 2', '', '', '', '', '', '', 127, NULL, NULL),
(1346, 6, 17, 30, 30, 'ING01255', 'Electroneum?tica y PLC', '3', '5', 'CBS00014', 'Electricidad y Magnetismo', 'ING01248', 'Programaci?n B?sica', '', '', '', '', 127, NULL, NULL),
(1350, 6, 17, 30, 30, 'ING01257', 'Control Autom?tico', '3', '6', 'CBS00013', 'Ecuaciones Diferenciales', 'ING01250', 'Medici?n e Instrumentaci?n Industrial 2', '', '', '', '', 127, NULL, NULL),
(1351, 6, 17, 30, 30, 'ING01258', 'Automatizaci?n de Maquinas El?ctricas', '3', '6', 'ING00058', 'Circuitos El?ctricos 2', '', '', '', '', '', '', 127, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `name`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'ALBERTO  PELAEZ VELASQUEZ', 5, NULL, NULL),
(2, 'ALEJANDRO  ROJAS AGUDELO', 6, NULL, NULL),
(3, 'ALVARO DE JESUS RESTREPO GIL', 7, NULL, NULL),
(4, 'ANDR?S FELIPE GUZM?N CIFUENTES', 8, NULL, NULL),
(5, 'ANGELA MARIA ZULUAGA GUTIERREZ', 9, NULL, NULL),
(6, 'ANGELA MARIA ZULUAGA GUTIERREZ', 10, NULL, NULL),
(7, 'ANTONIO JOSE ARENAS CARDONA', 11, NULL, NULL),
(8, 'ARABELLA  ZAPATA ESCOBAR', 12, NULL, NULL),
(9, 'AURA MARIA HERNANDEZ CORREA', 13, NULL, NULL),
(10, 'BEATRIZ ELENA PINEDA URIBE', 14, NULL, NULL),
(11, 'CARLOS ALBERTO URIBE HIGINIO', 15, NULL, NULL),
(12, 'CARLOS ANDRES ORDO?EZ ANTE', 16, NULL, NULL),
(13, 'CARLOS ARTURO CASTRO CASTRO', 17, NULL, NULL),
(14, 'CARLOS EDUARDO ARANGO RESTREPO', 18, NULL, NULL),
(15, 'CARLOS MARIO L?PEZ NARANJO', 19, NULL, NULL),
(16, 'CARLOS MARIO VALENZUELA ROSAS', 20, NULL, NULL),
(17, 'CARLOS MARIO VASCO SUAREZ', 21, NULL, NULL),
(18, 'CAROLINA  ISAZA ARCILA', 22, NULL, NULL),
(19, 'CESAR ALEJANDRO FRESNEDA SALDARRIAGA', 23, NULL, NULL),
(20, 'CINTHIA ALEXANDRA PUERTA CHANCI', 24, NULL, NULL),
(21, 'DANIEL FERNANDO CALVO TREJOS', 25, NULL, NULL),
(22, 'DAVID ALBERTO QUINTERO GIRALDO', 26, NULL, NULL),
(23, 'DAVID ESTEBAN CARDENAS SUAREZ', 27, NULL, NULL),
(24, 'DAYANA  MEZA TERRAZA', 28, NULL, NULL),
(25, 'DIANA MARIA MUNERA VERA ', 29, NULL, NULL),
(26, 'DIANA MARYORI GUEVARA LOZADA', 30, NULL, NULL),
(27, 'DIANA PATRICIA URREA RAMIREZ', 31, NULL, NULL),
(28, 'DORI MABEL DAVID G?MEZ', 32, NULL, NULL),
(29, 'EDGAR  VERGARA AVILA', 33, NULL, NULL),
(30, 'EDGAR ALONSO CASTA?EDA VILLAMIZAR', 34, NULL, NULL),
(31, 'EFRAIN DARIO VILLARRAGA GONZALEZ', 35, NULL, NULL),
(32, 'ESTEBAN ZAPATA TREJOS', 36, NULL, NULL),
(33, 'ESTER MIRIAM PULGARIN GIRALDO', 37, NULL, NULL),
(34, 'FABIAN ALBEIRO PINEDA MARIN', 38, NULL, NULL),
(35, 'FABIAN OVIDIO MORERA ROLDAN', 39, NULL, NULL),
(36, 'FERNANDO DE JESUS GARCIA ZAPATA', 40, NULL, NULL),
(37, 'FERNANDO ESTEBAN SIERRA AGUIRRE', 41, NULL, NULL),
(38, 'FERNELL ALFONSO PAEZ TELLEZ', 42, NULL, NULL),
(39, 'FRAY LEON OSORIO RIVERA', 43, NULL, NULL),
(40, 'GIOVANI ARLEX SERNA GALEANO', 44, NULL, NULL),
(41, 'HARVETH HERNAN GIL SANCHEZ', 45, NULL, NULL),
(42, 'HELIO FABIO MORALES RAMIREZ', 46, NULL, NULL),
(43, 'IVAN DE JESUS CARVAJAL MEDINA', 47, NULL, NULL),
(44, 'JAIME ARISTIDES GOMEZ ARIAS', 48, NULL, NULL),
(45, 'JAVIER  MERINO CORREA', 49, NULL, NULL),
(46, 'JENNY ANDREA GONZALEZ BRAN', 50, NULL, NULL),
(47, 'JES?S HAROLD LONDO?O ARREDONDO', 51, NULL, NULL),
(48, 'JHON GERSON RIOS GARCIA', 52, NULL, NULL),
(49, 'JOHNNY GARCIA VILLANUEVA', 53, NULL, NULL),
(50, 'JORGE HERNAN OSPINA CARDONA', 54, NULL, NULL),
(51, 'JORGE HERNAN SUAZA JIMENEZ', 55, NULL, NULL),
(52, 'JOSE EDILBERTO OLIVARES DIAZ', 56, NULL, NULL),
(53, 'JUAN CAMILO HERN?NDEZ G?MEZ', 57, NULL, NULL),
(54, 'JUAN CAMILO PARRA TORO', 58, NULL, NULL),
(55, 'JUAN CARLOS CARDONA JIMENEZ', 59, NULL, NULL),
(56, 'JUAN CARLOS VALDES QUINTERO', 60, NULL, NULL),
(57, 'JUAN DANIEL RIOS ARBOLEDA', 61, NULL, NULL),
(58, 'JUAN DAVID GUARNIZO RUIZ', 62, NULL, NULL),
(59, 'JUAN DIEGO LONDO?O JARAMILLO', 63, NULL, NULL),
(60, 'JUAN ESTEBAN CALLE MONTOYA', 64, NULL, NULL),
(61, 'JULIAN  BUSTAMANTE NARVAEZ', 65, NULL, NULL),
(62, 'JULIAN DARIO GIRALDO OCAMPO', 66, NULL, NULL),
(63, 'JULI?N FELIPE HERRERA MEJ?A', 67, NULL, NULL),
(64, 'KAREN DANIELA GRISALES CASTA?O', 68, NULL, NULL),
(65, 'LAURA ANDREA BASTIDAS GONZALEZ', 69, NULL, NULL),
(66, 'LAURA XIMENA DE OSSA PINEDA', 70, NULL, NULL),
(67, 'LESLIE MILENA ARRUBLA VALENCIA', 71, NULL, NULL),
(68, 'LILIANA INGRID RAMOS GAONA', 72, NULL, NULL),
(69, 'LILIANA PATRICIA GARCIA GOMEZ', 73, NULL, NULL),
(70, 'LUIS ALEJANDRO MEDINA VERDEZA', 74, NULL, NULL),
(71, 'LUIS FELIPE CANO RENDON', 75, NULL, NULL),
(72, 'LUIS GUILLERMO MONTOYA VIVAS', 76, NULL, NULL),
(73, 'LUISA FERNANDA BERRIO BETANCUR', 77, NULL, NULL),
(74, 'MARCELINO  GOMEZ PIEDRAHITA', 78, NULL, NULL),
(75, 'MARIA BEATRIZ ARENAS TOBON', 79, NULL, NULL),
(76, 'MARIA MARLENY PEREZ ARANGO', 80, NULL, NULL),
(77, 'MARTA ELENA ZAPATA PEREZ', 81, NULL, NULL),
(78, 'MATEO  GUTIERREZ URIBE', 82, NULL, NULL),
(79, 'MAURICIO ESCOBAR TOBON', 83, NULL, NULL),
(80, 'OLGA AMPARO PATI?O JIMENEZ', 84, NULL, NULL),
(81, 'ORLANDO IGNACIO CANO MONTA?O', 85, NULL, NULL),
(82, 'PABLO VELEZ VELASQUEZ', 86, NULL, NULL),
(83, 'RAUL ANTONIO CARDONA GUZMAN', 87, NULL, NULL),
(84, 'RENE ALEJANDRO LOPEZ RESTREPO', 88, NULL, NULL),
(85, 'ROBERTO ALONSO ANGEL VERA', 89, NULL, NULL),
(86, 'ROBINSON ALBERTO MORALES GARCIA', 90, NULL, NULL),
(87, 'SANTIAGO LEON RODRIGUEZ HERNANDEZ', 91, NULL, NULL),
(88, 'VANESSA SENIOR ARRIETA', 92, NULL, NULL),
(89, 'WILMAR ECHEVERRI', 93, NULL, NULL),
(90, 'WILFFER CAMILO FUERTES CARMONA', 94, NULL, NULL),
(91, 'WILLIAM  OBANDO VASQUEZ', 95, NULL, NULL),
(92, 'WILLIAM ULBEY GOMEZ BOTERO', 96, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `document` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contract_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cellphone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` enum('admin','profesional especializado','coordinador área','decano','admisiones','docente') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `document`, `contract_type`, `cellphone_number`, `remember_token`, `created_at`, `updated_at`, `role`, `status`) VALUES
(1, 'Admin', 'admin@gmail.com', '2022-08-09 16:30:14', '$2a$12$3mQXFH8z66//MzdX7hGMTOF2qkEbNY3ySSE5Fmz5gMrElvW7ucMiK', '0000000000', 'admin', '0000000000', 'Admin', '2022-08-09 16:30:14', '2022-08-09 16:30:14', 'admin', '1'),
(2, 'Clara Isabel Muñoz Gallego\r\n', 'NULL', '2022-08-09 17:35:31', '', NULL, NULL, NULL, NULL, NULL, NULL, 'decano', '1'),
(3, 'José Santiago Correa Cortés\r\n', 'fcacamicos@elpoli.edu.co', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'decano', '1'),
(4, 'Juan Fernando Ruíz Ramírez\r\n', 'smdavid@elpoli.edu.co', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'decano', '1'),
(5, 'ALBERTO  PELAEZ VELASQUEZ', 'albertopelaez@elpoli.edu.co', NULL, '', '71592860', 'C?TEDRA', '3113083872', NULL, NULL, NULL, 'docente', '1'),
(6, 'ALEJANDRO  ROJAS AGUDELO', 'alejandrorojas@elpoli.edu.co', NULL, '', '1017163023', 'C?TEDRA', '3186271931', NULL, NULL, NULL, 'docente', '1'),
(7, 'ALVARO DE JESUS RESTREPO GIL', 'alvarorestrepog@elpoli.edu.co', NULL, '', '8407934', 'C?TEDRA', '3105100538', NULL, NULL, NULL, 'docente', '1'),
(8, 'ANDR?S FELIPE GUZM?N CIFUENTES', 'andres_guzman95103@elpoli.edu.co', NULL, '', '1036636868', 'C?TEDRA', '3014155290', NULL, NULL, NULL, 'docente', '1'),
(9, 'ANGELA MARIA ZULUAGA GUTIERREZ', 'amzuluaga@elpoli.edu.co', NULL, '', '43524351', 'C?TEDRA', '3216434877', NULL, NULL, NULL, 'docente', '1'),
(11, 'ANTONIO JOSE ARENAS CARDONA', 'antonioarenas@elpoli.edu.co', NULL, '', '8391653', 'C?TEDRA', '3133453094', NULL, NULL, NULL, 'docente', '1'),
(12, 'ARABELLA  ZAPATA ESCOBAR', 'azapata@elpoli.edu.co', NULL, '', '43578728', 'T.COMPLETO', '3117603852', NULL, NULL, NULL, 'docente', '1'),
(13, 'AURA MARIA HERNANDEZ CORREA', 'aurahernandez@elpoli.edu.co', NULL, '', '1026141872', 'C?TEDRA', '3148216020', NULL, NULL, NULL, 'docente', '1'),
(14, 'BEATRIZ ELENA PINEDA URIBE', 'beatrizpineda@elpoli.edu.co', NULL, '', '43560008', 'T.COMPLETO', '3007489378', NULL, NULL, NULL, 'docente', '1'),
(15, 'CARLOS ALBERTO URIBE HIGINIO', 'cauribe@elpoli.edu.co', NULL, '', '9136019', 'C?TEDRA', '3157030680', NULL, NULL, NULL, 'docente', '1'),
(16, 'CARLOS ANDRES ORDO?EZ ANTE', 'caordonez@elpoli.edu.co', NULL, '', '71654159', 'T.COMPLETO', '3108291598', NULL, NULL, NULL, 'docente', '1'),
(17, 'CARLOS ARTURO CASTRO CASTRO', 'cacc@elpoli.edu.co', NULL, '', '71665033', 'C?TEDRA', '3006190627', NULL, NULL, NULL, 'docente', '1'),
(18, 'CARLOS EDUARDO ARANGO RESTREPO', 'carlosearango@elpoli.edu.co', NULL, '', '16079809', 'C?TEDRA', '3162992537', NULL, NULL, NULL, 'docente', '1'),
(19, 'CARLOS MARIO L?PEZ NARANJO', 'carlosmlopez@elpoli.edu.co', NULL, '', '1047964424', 'C?TEDRA', '3136536676', NULL, NULL, NULL, 'docente', '1'),
(20, 'CARLOS MARIO VALENZUELA ROSAS', 'carlosvalenzuela@elpoli.edu.co', NULL, '', '1128414663', 'C?TEDRA', '3005183097', NULL, NULL, NULL, 'docente', '1'),
(21, 'CARLOS MARIO VASCO SUAREZ', 'carlos_vasco92092@elpoli.edu.co', NULL, '', '71595600', 'C?TEDRA', '3117611523', NULL, NULL, NULL, 'docente', '1'),
(22, 'CAROLINA  ISAZA ARCILA', 'carolinaisaza@elpoli.edu.co', NULL, '', '25172896', 'C?TEDRA', '3143302386', NULL, NULL, NULL, 'docente', '1'),
(23, 'CESAR ALEJANDRO FRESNEDA SALDARRIAGA', 'cesarafressal@elpoli.edu.co', NULL, '', '1128438119', 'C?TEDRA', '3143302386', NULL, NULL, NULL, 'docente', '1'),
(24, 'CINTHIA ALEXANDRA PUERTA CHANCI', 'capc@elpoli.edu.co', NULL, '', '1128393430', 'C?TEDRA', '3143302386', NULL, NULL, NULL, 'docente', '1'),
(25, 'DANIEL FERNANDO CALVO TREJOS', 'danielcalvo@elpoli.edu.co', NULL, '', '71389028', 'C?TEDRA', '3014307101', NULL, NULL, NULL, 'docente', '1'),
(26, 'DAVID ALBERTO QUINTERO GIRALDO', 'davidquinterog@elpoli.edu.co', NULL, '', '1038405308', 'C?TEDRA', '3014034247', NULL, NULL, NULL, 'docente', '1'),
(27, 'DAVID ESTEBAN CARDENAS SUAREZ', 'decs@elpoli.edu.co', NULL, '', '1017145773', 'C?TEDRA', '3117370105', NULL, NULL, NULL, 'docente', '1'),
(28, 'DAYANA  MEZA TERRAZA', 'dayanameza@elpoli.edu.co', NULL, '', '44000971', 'C?TEDRA', '3007799995', NULL, NULL, NULL, 'docente', '1'),
(29, 'DIANA MARIA MUNERA VERA ', 'dmmv@elpoli.edu.co', NULL, '', '43202776', 'C?TEDRA', '3007799995', NULL, NULL, NULL, 'docente', '1'),
(30, 'DIANA MARYORI GUEVARA LOZADA', 'diana_guevara95103@elpoli.edu.co', NULL, '', '1017145522', 'C?TEDRA', '3216362852', NULL, NULL, NULL, 'docente', '1'),
(31, 'DIANA PATRICIA URREA RAMIREZ', 'dianaurrea@elpoli.edu.co', NULL, '', '43543906', 'C?TEDRA', '3104749890', NULL, NULL, NULL, 'docente', '1'),
(32, 'DORI MABEL DAVID G?MEZ', 'doridavid@elpoli.edu.co', NULL, '', '39454234', 'C?TEDRA', '3002713475', NULL, NULL, NULL, 'docente', '1'),
(33, 'EDGAR  VERGARA AVILA', 'edgarvergara@elpoli.edu.co', NULL, '', '71671175', 'C?TEDRA', '3116004884', NULL, NULL, NULL, 'docente', '1'),
(34, 'EDGAR ALONSO CASTA?EDA VILLAMIZAR', 'edgarcastaneda@elpoli.edu.co', NULL, '', '71675571', 'C?TEDRA', '3146780883', NULL, NULL, NULL, 'docente', '1'),
(35, 'EFRAIN DARIO VILLARRAGA GONZALEZ', 'efrainvillarraga@elpoli.edu.co', NULL, '', '70113535', 'C?TEDRA', '3103898807', NULL, NULL, NULL, 'docente', '1'),
(36, 'ESTEBAN ZAPATA TREJOS', 'ezt@elpoli.edu.co', NULL, '', '1128439835', 'C?TEDRA', '3103898807', NULL, NULL, NULL, 'docente', '1'),
(37, 'ESTER MIRIAM PULGARIN GIRALDO', 'esterpulgarin@elpoli.edu.co', NULL, '', '43086239', 'C?TEDRA', '3155480060', NULL, NULL, NULL, 'docente', '1'),
(38, 'FABIAN ALBEIRO PINEDA MARIN', 'fapm@elpoli.edu.co', NULL, '', '98627093', 'C?TEDRA', '3002010777', NULL, NULL, NULL, 'docente', '1'),
(39, 'FABIAN OVIDIO MORERA ROLDAN', 'fomorera@elpoli.edu.co', NULL, '', '98495336', 'C?TEDRA', '3006154405', NULL, NULL, NULL, 'docente', '1'),
(40, 'FERNANDO DE JESUS GARCIA ZAPATA', 'fdgarcia@elpoli.edu.co', NULL, '', '70550553', 'C?TEDRA', '3017891525', NULL, NULL, NULL, 'docente', '1'),
(41, 'FERNANDO ESTEBAN SIERRA AGUIRRE', 'aguirresierra95261@elpoli.edu.co', NULL, '', '1128417707', 'C?TEDRA', '3017891525', NULL, NULL, NULL, 'docente', '1'),
(42, 'FERNELL ALFONSO PAEZ TELLEZ', 'fernellpaez@elpoli.edu.co', NULL, '', '13355052', 'C?TEDRA', '3012485348', NULL, NULL, NULL, 'docente', '1'),
(43, 'FRAY LEON OSORIO RIVERA', 'frayosorio@elpoli.edu.co', NULL, '', '71707721', 'C?TEDRA', '3162956865', NULL, NULL, NULL, 'docente', '1'),
(44, 'GIOVANI ARLEX SERNA GALEANO', 'giovaniserna@elpoli.edu.co', NULL, '', '98563052', 'C?TEDRA', '3218499471', NULL, NULL, NULL, 'docente', '1'),
(45, 'HARVETH HERNAN GIL SANCHEZ', 'hhgil@elpoli.edu.co', NULL, '', '71339581', 'T.COMPLETO', '3218499471', NULL, NULL, NULL, 'docente', '1'),
(46, 'HELIO FABIO MORALES RAMIREZ', 'hfmorales@elpoli.edu.co', NULL, '', '70065539', 'C?TEDRA', '3108422232', NULL, NULL, NULL, 'docente', '1'),
(47, 'IVAN DE JESUS CARVAJAL MEDINA', 'ivan_carvajal@elpoli.edu.co', NULL, '', '70030185', 'C?TEDRA', '3002167954', NULL, NULL, NULL, 'docente', '1'),
(48, 'JAIME ARISTIDES GOMEZ ARIAS', 'jaimegomez@elpoli.edu.co', NULL, '', '98638331', 'C?TEDRA', '3006123521', NULL, NULL, NULL, 'docente', '1'),
(49, 'JAVIER  MERINO CORREA', 'javiermerino@elpoli.edu.co', NULL, '', '8303424', 'C?TEDRA', '3113720382', NULL, NULL, NULL, 'docente', '1'),
(50, 'JENNY ANDREA GONZALEZ BRAN', 'jennygonzalez@elpoli.edu.co', NULL, '', '43192053', 'C?TEDRA', '3207511950', NULL, NULL, NULL, 'docente', '1'),
(51, 'JES?S HAROLD LONDO?O ARREDONDO', 'jesushlondono@elpoli.edu.co', NULL, '', '8255710', 'C?TEDRA', '3007795883', NULL, NULL, NULL, 'docente', '1'),
(52, 'JHON GERSON RIOS GARCIA', 'jhongrios@elpoli.edu.co', NULL, '', '98501040', 'C?TEDRA', '3127205602', NULL, NULL, NULL, 'docente', '1'),
(53, 'JOHNNY GARCIA VILLANUEVA', 'johnnygarcia@elpoli.edu.co', NULL, '', '94527918', 'C?TEDRA', '3127205602', NULL, NULL, NULL, 'docente', '1'),
(54, 'JORGE HERNAN OSPINA CARDONA', 'ospinajorge@elpoli.edu.co', NULL, '', '71745442', 'C?TEDRA', '3017903390', NULL, NULL, NULL, 'docente', '1'),
(55, 'JORGE HERNAN SUAZA JIMENEZ', 'jorgesuaza@elpoli.edu.co', NULL, '', '98547737', 'C?TEDRA', '3108423054', NULL, NULL, NULL, 'docente', '1'),
(56, 'JOSE EDILBERTO OLIVARES DIAZ', 'joseolivares@elpoli.edu.co', NULL, '', '17052718', 'C?TEDRA', '3147572381', NULL, NULL, NULL, 'docente', '1'),
(57, 'JUAN CAMILO HERN?NDEZ G?MEZ', 'camilohg@gmail.com', NULL, '', '15516857', 'C?TEDRA', '3147572381', NULL, NULL, NULL, 'docente', '1'),
(58, 'JUAN CAMILO PARRA TORO', 'jcparra@elpoli.edu.co', NULL, '', '71786164', 'T.COMPLETO', '3206865510', NULL, NULL, NULL, 'docente', '1'),
(59, 'JUAN CARLOS CARDONA JIMENEZ', 'jccardona@elpoli.edu.co', NULL, '', '71637734', 'C?TEDRA', '3213660959', NULL, NULL, NULL, 'docente', '1'),
(60, 'JUAN CARLOS VALDES QUINTERO', 'jcvaldes@elpoli.edu.co', NULL, '', '98552122', 'T.COMPLETO', '3006519709', NULL, NULL, NULL, 'docente', '1'),
(61, 'JUAN DANIEL RIOS ARBOLEDA', 'jdra@elpoli.edu.co', NULL, '', '1039453880', 'C?TEDRA', '3113042722', NULL, NULL, NULL, 'docente', '1'),
(62, 'JUAN DAVID GUARNIZO RUIZ', 'jdgr@elpoli.edu.co', NULL, '', '1017212383', 'C?TEDRA', '3113042722', NULL, NULL, NULL, 'docente', '1'),
(63, 'JUAN DIEGO LONDO?O JARAMILLO', 'juandlondono@elpoli.edu.co', NULL, '', '70080135', 'C?TEDRA', '3117471763', NULL, NULL, NULL, 'docente', '1'),
(64, 'JUAN ESTEBAN CALLE MONTOYA', 'juanecalle@elpoli.edu.co', NULL, '', '71291492', 'C?TEDRA', '3186850872', NULL, NULL, NULL, 'docente', '1'),
(65, 'JULIAN  BUSTAMANTE NARVAEZ', 'julian_bustamante91103@elpoli.edu.co', NULL, '', '1037616343', 'C?TEDRA', '3146644565', NULL, NULL, NULL, 'docente', '1'),
(66, 'JULIAN DARIO GIRALDO OCAMPO', 'juliangiraldo@elpoli.edu.co', NULL, '', '71743308', 'T.OCACIONAL', '3012858725', NULL, NULL, NULL, 'docente', '1'),
(67, 'JULI?N FELIPE HERRERA MEJ?A', 'julianherrera@elpoli.edu.co', NULL, '', '1128282368', 'C?TEDRA', '3113698712', NULL, NULL, NULL, 'docente', '1'),
(68, 'KAREN DANIELA GRISALES CASTA?O', 'kdgc@elpoli.edu.co', NULL, '', '1035913409', 'C?TEDRA', '3113698712', NULL, NULL, NULL, 'docente', '1'),
(69, 'LAURA ANDREA BASTIDAS GONZALEZ', 'laurabastidas@elpoli.edu.co', NULL, '', '1152434027', 'C?TEDRA', '3002940228', NULL, NULL, NULL, 'docente', '1'),
(70, 'LAURA XIMENA DE OSSA PINEDA', 'laura_deossa95103@elpoli.edu.co', NULL, '', '1017168048', 'C?TEDRA', '3016589587', NULL, NULL, NULL, 'docente', '1'),
(71, 'LESLIE MILENA ARRUBLA VALENCIA', 'leslie_arrubla95092@elpoli.edu.co', NULL, '', '1017156042', 'C?TEDRA', '3007370902', NULL, NULL, NULL, 'docente', '1'),
(72, 'LILIANA INGRID RAMOS GAONA', 'lilianaramos@elpoli.edu.co', NULL, '', '42898453', 'C?TEDRA', '3127341748', NULL, NULL, NULL, 'docente', '1'),
(73, 'LILIANA PATRICIA GARCIA GOMEZ', 'lilianapgarcia@elpoli.edu.co', NULL, '', '43524329', 'C?TEDRA', '3182916836', NULL, NULL, NULL, 'docente', '1'),
(74, 'LUIS ALEJANDRO MEDINA VERDEZA', 'lumever@hotmail.com', NULL, '', '1039446564', 'C?TEDRA', '3182916836', NULL, NULL, NULL, 'docente', '1'),
(75, 'LUIS FELIPE CANO RENDON', 'luis_cano95081@elpoli.edu.co', NULL, '', '71396331', 'C?TEDRA', '3006759610', NULL, NULL, NULL, 'docente', '1'),
(76, 'LUIS GUILLERMO MONTOYA VIVAS', 'lgmontoya@elpoli.edu.co', NULL, '', '98621275', 'C?TEDRA', '3127042451', NULL, NULL, NULL, 'docente', '1'),
(77, 'LUISA FERNANDA BERRIO BETANCUR', 'lfbb@elpoli.edu.co', NULL, '', '1017155798', 'C?TEDRA', '3127042451', NULL, NULL, NULL, 'docente', '1'),
(78, 'MARCELINO  GOMEZ PIEDRAHITA', 'marcelinogomez@elpoli.edu.co', NULL, '', '8318658', 'C?TEDRA', '3146520903', NULL, NULL, NULL, 'docente', '1'),
(79, 'MARIA BEATRIZ ARENAS TOBON', 'mariaarenas@elpoli.edu.co', NULL, '', '43018892', 'C?TEDRA', '3006163339', NULL, NULL, NULL, 'docente', '1'),
(80, 'MARIA MARLENY PEREZ ARANGO', 'mariaperez@elpoli.edu.co', NULL, '', '22057287', 'C?TEDRA', '3117225484', NULL, NULL, NULL, 'docente', '1'),
(81, 'MARTA ELENA ZAPATA PEREZ', 'mezapata@elpoli.edu.co', NULL, '', '32523676', 'C?TEDRA', '3002013376', NULL, NULL, NULL, 'docente', '1'),
(82, 'MATEO  GUTIERREZ URIBE', 'mateoguitierrez@elpoli.edu.co', NULL, '', '1039453202', 'C?TEDRA', '3007926525', NULL, NULL, NULL, 'docente', '1'),
(83, 'MAURICIO ESCOBAR TOBON', 'mauricio_escobar54181@elpoli.edu.co', NULL, '', '1063291875', 'C?TEDRA', '3007926525', NULL, NULL, NULL, 'docente', '1'),
(84, 'OLGA AMPARO PATI?O JIMENEZ', 'olgapatino@elpoli.edu.co', NULL, '', '43430596', 'C?TEDRA', '3113081941', NULL, NULL, NULL, 'docente', '1'),
(85, 'ORLANDO IGNACIO CANO MONTA?O', 'orlandocano@elpoli.edu.co', NULL, '', '3498970', 'C?TEDRA', '3108304179', NULL, NULL, NULL, 'docente', '1'),
(86, 'PABLO VELEZ VELASQUEZ', 'pvv@elpoli.edu.co', NULL, '', '1017193803', 'C?TEDRA', '3108304179', NULL, NULL, NULL, 'docente', '1'),
(87, 'RAUL ANTONIO CARDONA GUZMAN', 'racardona@elpoli.edu.co', NULL, '', '8390595', 'T.COMPLETO', '3165273767', NULL, NULL, NULL, 'docente', '1'),
(88, 'RENE ALEJANDRO LOPEZ RESTREPO', 'ralopez@elpoli.edu.co', NULL, '', '70506204', 'C?TEDRA', '3178180667', NULL, NULL, NULL, 'docente', '1'),
(89, 'ROBERTO ALONSO ANGEL VERA', 'robertoangel@elpoli.edu.co', NULL, '', '8305292', 'C?TEDRA', '3174871756', NULL, NULL, NULL, 'docente', '1'),
(90, 'ROBINSON ALBERTO MORALES GARCIA', 'r.albertomoralesgarcia@gmail.com', NULL, '', '1036623060', 'C?TEDRA', '3167450166', NULL, NULL, NULL, 'docente', '1'),
(91, 'SANTIAGO LEON RODRIGUEZ HERNANDEZ', 'santiagorodriguez@elpoli.edu.co', NULL, '', '15507768', 'C?TEDRA', '3043386734', NULL, NULL, NULL, 'docente', '1'),
(92, 'VANESSA SENIOR ARRIETA', 'vsa@elpoli.edu.co', NULL, '', '55312753', 'C?TEDRA', '3043386734', NULL, NULL, NULL, 'docente', '1'),
(93, 'WILMAR ECHEVERRI', 'we@elpoli.edu.co', NULL, '', '71797751', 'C?TEDRA', '3043386734', NULL, NULL, NULL, 'docente', '1'),
(94, 'WILFFER CAMILO FUERTES CARMONA', 'wilfferfuertes@elpoli.edu.co', NULL, '', '8102468', 'C?TEDRA', '3116276682', NULL, NULL, NULL, 'docente', '1'),
(95, 'WILLIAM  OBANDO VASQUEZ', 'williamobando@elpoli.edu.co', NULL, '', '70065435', 'C?TEDRA', '3155074953', NULL, NULL, NULL, 'docente', '1'),
(96, 'WILLIAM ULBEY GOMEZ BOTERO', 'williamgomez@elpoli.edu.co', NULL, '', '70383978', 'C?TEDRA', '3108454562', NULL, NULL, NULL, 'docente', '1'),
(97, 'Rita Sofia Bertel\r\n', 'rsb@elpoli.edu.co', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'coordinador área', '1'),
(98, 'William Mario Martínez\r\n', 'wmm@elpoli.edu.co', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'coordinador área', '1'),
(99, 'Hern?n Dario Osorio Cardona', 'hdo@elpoli.edu.co', NULL, '', NULL, '', '', NULL, NULL, NULL, 'coordinador área', '1'),
(100, 'Juan Carlos G?mez Mesa', 'jcgm@elpoli.edu.co', NULL, '', NULL, '', '', NULL, NULL, NULL, 'coordinador área', '1'),
(101, 'Doris Matilde Marin Toro', 'dmmt@elpoli.edu.co', NULL, '', NULL, '', '', NULL, NULL, NULL, 'coordinador área', '1'),
(102, '?Luis Horacio Aldana Arboleda', 'lhaa@elpoli.edu.co', NULL, '', NULL, '', '', NULL, NULL, NULL, 'coordinador área', '1'),
(103, 'Marina Isabel Marin Tejada', 'mimt@elpoli.edu.co', NULL, '', NULL, '', '', NULL, NULL, NULL, 'coordinador área', '1'),
(104, 'Edwin Arlex Agudelo Rend?n;eaar@elpoli.edu.co', '', '0000-00-00 00:00:00', '', '', '', NULL, NULL, NULL, '0000-00-00 00:00:00', 'admin', ''),
(105, 'Elkin Rodrigo Go?z Giraldo', 'ergg@elpoli.edu.co', NULL, '', NULL, '', '', NULL, NULL, NULL, 'coordinador área', '1'),
(106, 'Emmanuel Adalberto Ortiz', 'eao@elpoli.edu.co', NULL, '', NULL, '', '', NULL, NULL, NULL, 'coordinador área', '1'),
(107, 'William Dar?o Bonolly Zapata', 'wdbz@elpoli.edu.co', NULL, '', NULL, '', '', NULL, NULL, NULL, 'coordinador área', '1'),
(108, 'Andr?s Leonardo Colorado Arango', 'alca@elpoli.edu.co', NULL, '', NULL, '', '', NULL, NULL, NULL, 'coordinador área', '1'),
(109, 'Luis Fernando P?rez Valderrama', 'lfpv@elpoli.edu.co', NULL, '', NULL, '', '', NULL, NULL, NULL, 'coordinador área', '1'),
(110, 'Luis Eduardo Ochoa Ruiz', 'leor@elpoli.edu.co', NULL, '', NULL, '', '', NULL, NULL, NULL, 'coordinador área', '1'),
(111, 'Conrado Pati?o Sucerquia', 'cps@elpoli.edu.co', NULL, '', NULL, '', '', NULL, NULL, NULL, 'coordinador área', '1'),
(112, '?Hernando Delgado Rosas', 'hdr@elpoli.edu.co', NULL, '', NULL, '', '', NULL, NULL, NULL, 'coordinador área', '1'),
(113, 'Juan David Mej?a Mu?oz', 'jdmm@elpoli.edu.co', NULL, '', NULL, '', '', NULL, NULL, NULL, 'coordinador área', '1'),
(114, 'Luis Fernando Galv?n G?mez', 'lfgg@elpoli.edu.co', NULL, '', NULL, '', '', NULL, NULL, NULL, 'coordinador área', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `areas_unique` (`faculty_id`,`coordination_id`,`program_id`,`area_name`),
  ADD UNIQUE KEY `areas_area_name_unique` (`area_name`),
  ADD KEY `areas_coordination_id_foreign` (`coordination_id`),
  ADD KEY `areas_program_id_foreign` (`program_id`),
  ADD KEY `areas_area_coordinator_foreign` (`area_coordinator`);

--
-- Indexes for table `coordinations`
--
ALTER TABLE `coordinations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coordinations_unique` (`faculty_id`,`coordination_name`),
  ADD UNIQUE KEY `coordinations_coordination_name_unique` (`coordination_name`),
  ADD KEY `coordinations_coordinator_foreign` (`coordinator`);

--
-- Indexes for table `faculties`
--
ALTER TABLE `faculties`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `faculties_faculty_name_unique` (`faculty_name`),
  ADD KEY `faculties_dean_foreign` (`dean`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `load_periods`
--
ALTER TABLE `load_periods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `load_periods_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `programs`
--
ALTER TABLE `programs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `programs_unique` (`faculty_id`,`coordination_id`,`program_name`),
  ADD UNIQUE KEY `programs_program_name_unique` (`program_name`),
  ADD KEY `programs_coordination_id_foreign` (`coordination_id`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `schedules_subject_id_foreign` (`subject_id`),
  ADD KEY `schedules_program_id_foreign` (`program_id`),
  ADD KEY `schedules_teacher_foreign` (`teacher`),
  ADD KEY `schedules_area_id_foreign` (`area_id`),
  ADD KEY `schedules_updated_by_foreign` (`updated_by`),
  ADD KEY `schedules_load_id_foreign` (`load_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subjects_unique` (`faculty_id`,`coordination_id`,`program_id`,`area_id`,`subject_name`),
  ADD UNIQUE KEY `subjects_subject_name_unique` (`subject_name`),
  ADD KEY `subjects_coordination_id_foreign` (`coordination_id`),
  ADD KEY `subjects_program_id_foreign` (`program_id`),
  ADD KEY `subjects_area_id_foreign` (`area_id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teachers_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_document_unique` (`document`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `areas`
--
ALTER TABLE `areas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `coordinations`
--
ALTER TABLE `coordinations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `faculties`
--
ALTER TABLE `faculties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `load_periods`
--
ALTER TABLE `load_periods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `programs`
--
ALTER TABLE `programs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1352;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `areas`
--
ALTER TABLE `areas`
  ADD CONSTRAINT `areas_area_coordinator_foreign` FOREIGN KEY (`area_coordinator`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `areas_coordination_id_foreign` FOREIGN KEY (`coordination_id`) REFERENCES `coordinations` (`id`),
  ADD CONSTRAINT `areas_faculty_id_foreign` FOREIGN KEY (`faculty_id`) REFERENCES `faculties` (`id`),
  ADD CONSTRAINT `areas_program_id_foreign` FOREIGN KEY (`program_id`) REFERENCES `programs` (`id`);

--
-- Constraints for table `coordinations`
--
ALTER TABLE `coordinations`
  ADD CONSTRAINT `coordinations_coordinator_foreign` FOREIGN KEY (`coordinator`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `coordinations_faculty_id_foreign` FOREIGN KEY (`faculty_id`) REFERENCES `faculties` (`id`);

--
-- Constraints for table `faculties`
--
ALTER TABLE `faculties`
  ADD CONSTRAINT `faculties_dean_foreign` FOREIGN KEY (`dean`) REFERENCES `users` (`id`);

--
-- Constraints for table `load_periods`
--
ALTER TABLE `load_periods`
  ADD CONSTRAINT `load_periods_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `programs`
--
ALTER TABLE `programs`
  ADD CONSTRAINT `programs_coordination_id_foreign` FOREIGN KEY (`coordination_id`) REFERENCES `coordinations` (`id`),
  ADD CONSTRAINT `programs_faculty_id_foreign` FOREIGN KEY (`faculty_id`) REFERENCES `faculties` (`id`);

--
-- Constraints for table `schedules`
--
ALTER TABLE `schedules`
  ADD CONSTRAINT `schedules_area_id_foreign` FOREIGN KEY (`area_id`) REFERENCES `areas` (`id`),
  ADD CONSTRAINT `schedules_load_id_foreign` FOREIGN KEY (`load_id`) REFERENCES `load_periods` (`id`),
  ADD CONSTRAINT `schedules_program_id_foreign` FOREIGN KEY (`program_id`) REFERENCES `programs` (`id`),
  ADD CONSTRAINT `schedules_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`),
  ADD CONSTRAINT `schedules_teacher_foreign` FOREIGN KEY (`teacher`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `schedules_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `subjects`
--
ALTER TABLE `subjects`
  ADD CONSTRAINT `subjects_area_id_foreign` FOREIGN KEY (`area_id`) REFERENCES `areas` (`id`),
  ADD CONSTRAINT `subjects_coordination_id_foreign` FOREIGN KEY (`coordination_id`) REFERENCES `coordinations` (`id`),
  ADD CONSTRAINT `subjects_faculty_id_foreign` FOREIGN KEY (`faculty_id`) REFERENCES `faculties` (`id`),
  ADD CONSTRAINT `subjects_program_id_foreign` FOREIGN KEY (`program_id`) REFERENCES `programs` (`id`);

--
-- Constraints for table `teachers`
--
ALTER TABLE `teachers`
  ADD CONSTRAINT `teachers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
