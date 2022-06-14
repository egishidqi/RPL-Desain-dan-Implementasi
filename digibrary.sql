-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Jun 2022 pada 06.20
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `digibrary`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `authers`
--

CREATE TABLE `authers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `authers`
--

INSERT INTO `authers` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Geovanny Schmeler I', '2022-04-17 07:54:59', '2022-04-17 07:54:59'),
(2, 'Jacinto Bernhard', '2022-04-17 07:54:59', '2022-04-17 07:54:59'),
(3, 'Edyth Kreiger', '2022-04-17 07:54:59', '2022-04-17 07:54:59'),
(4, 'Dr. Terrence Larkin IV', '2022-04-17 07:54:59', '2022-04-17 07:54:59'),
(5, 'Mr. Brandon Marvin', '2022-04-17 07:54:59', '2022-04-17 07:54:59'),
(6, 'Kane Torp', '2022-04-17 07:54:59', '2022-04-17 07:54:59'),
(7, 'Zaria Predovic', '2022-04-17 07:54:59', '2022-04-17 07:54:59'),
(8, 'Ephraim Sporer', '2022-04-17 07:54:59', '2022-04-17 07:54:59'),
(9, 'Gerald Howe', '2022-04-17 07:54:59', '2022-04-17 07:54:59'),
(10, 'Kody Wehner', '2022-04-17 07:54:59', '2022-04-17 07:54:59');

-- --------------------------------------------------------

--
-- Struktur dari tabel `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `auther_id` bigint(20) UNSIGNED DEFAULT NULL,
  `publisher_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `books`
--

INSERT INTO `books` (`id`, `name`, `category_id`, `auther_id`, `publisher_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Culpa rerum laudantium fugit.', 10, 4, 8, 'Y', '2022-04-17 07:54:59', '2022-05-16 23:31:19'),
(2, 'Ea officia et saepe.', 1, 6, 6, 'Y', '2022-04-17 07:54:59', '2022-04-17 07:54:59'),
(3, 'Expedita amet quibusdam nihil.', 2, 9, 2, 'Y', '2022-04-17 07:54:59', '2022-04-17 07:54:59'),
(4, 'Cupiditate alias ex.', 2, 8, 9, 'Y', '2022-04-17 07:54:59', '2022-04-17 07:54:59'),
(5, 'Nam labore facilis.', 5, 6, 7, 'Y', '2022-04-17 07:54:59', '2022-04-17 07:54:59'),
(6, 'Nisi tenetur rerum aut commodi.', 1, 1, 7, 'Y', '2022-04-17 07:54:59', '2022-06-13 20:30:55'),
(7, 'Quia et nihil qui.', 1, 7, 5, 'Y', '2022-04-17 07:54:59', '2022-04-17 07:54:59'),
(8, 'In consequuntur eos.', 6, 4, 3, 'Y', '2022-04-17 07:54:59', '2022-04-17 07:54:59'),
(9, 'Nobis eligendi eum aut omnis.', 4, 6, 7, 'N', '2022-04-17 07:54:59', '2022-06-13 21:00:34'),
(10, 'Et et mollitia cupiditate sed qui.', 1, 7, 10, 'Y', '2022-04-17 07:54:59', '2022-04-17 07:54:59'),
(11, 'Software Engineer Ethics', 1, 1, 3, 'Y', '2022-05-16 23:07:55', '2022-05-16 23:07:55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `book_issues`
--

CREATE TABLE `book_issues` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `issue_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `return_date` timestamp NULL DEFAULT NULL,
  `issue_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_day` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `book_issues`
--

INSERT INTO `book_issues` (`id`, `student_id`, `book_id`, `issue_date`, `return_date`, `issue_status`, `return_day`, `created_at`, `updated_at`) VALUES
(2, 8, 6, '2022-06-14 03:30:55', '2022-06-20 17:00:00', 'Y', '2022-06-13 20:30:55', '2022-06-13 20:30:40', '2022-06-13 20:30:55'),
(3, 17, 9, '2022-06-13 17:00:00', '2022-06-20 17:00:00', 'N', NULL, '2022-06-13 21:00:34', '2022-06-13 21:00:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Prof. Stephania Goodwin Sr.', '2022-04-17 07:54:59', '2022-04-17 07:54:59'),
(2, 'Elinor Jacobi III', '2022-04-17 07:54:59', '2022-04-17 07:54:59'),
(3, 'Gerda Lubowitz', '2022-04-17 07:54:59', '2022-04-17 07:54:59'),
(4, 'Dr. Korey Veum', '2022-04-17 07:54:59', '2022-04-17 07:54:59'),
(5, 'Dr. Daryl VonRueden', '2022-04-17 07:54:59', '2022-04-17 07:54:59'),
(6, 'Prof. Bryce Runte PhD', '2022-04-17 07:54:59', '2022-04-17 07:54:59'),
(7, 'Evert Dickens', '2022-04-17 07:54:59', '2022-04-17 07:54:59'),
(8, 'Abbey Gaylord', '2022-04-17 07:54:59', '2022-04-17 07:54:59'),
(9, 'Gabe Quitzon', '2022-04-17 07:54:59', '2022-04-17 07:54:59'),
(10, 'Grover Nader', '2022-04-17 07:54:59', '2022-04-17 07:54:59');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_12_28_031441_create_settings_table', 1),
(6, '2021_12_28_032107_create_students_table', 1),
(7, '2021_12_28_032307_create_publishers_table', 1),
(8, '2021_12_28_032327_create_categories_table', 1),
(9, '2021_12_28_032552_create_authers_table', 1),
(10, '2021_12_28_032555_create_books_table', 1),
(11, '2021_12_28_032649_create_book_issues_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
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
-- Struktur dari tabel `publishers`
--

CREATE TABLE `publishers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `publishers`
--

INSERT INTO `publishers` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Abdiel Block', '2022-04-17 07:54:59', '2022-04-17 07:54:59'),
(2, 'Robyn Koss', '2022-04-17 07:54:59', '2022-04-17 07:54:59'),
(3, 'Dewayne Mertz', '2022-04-17 07:54:59', '2022-04-17 07:54:59'),
(4, 'Jordane Runolfsson', '2022-04-17 07:54:59', '2022-04-17 07:54:59'),
(5, 'Prof. Nedra Langosh Sr.', '2022-04-17 07:54:59', '2022-04-17 07:54:59'),
(6, 'Miss Katelyn Hahn', '2022-04-17 07:54:59', '2022-04-17 07:54:59'),
(7, 'Dr. Tristin Hodkiewicz', '2022-04-17 07:54:59', '2022-04-17 07:54:59'),
(8, 'Mr. Antwan Cremin', '2022-04-17 07:54:59', '2022-04-17 07:54:59'),
(9, 'Dr. Nia Schimmel I', '2022-04-17 07:54:59', '2022-04-17 07:54:59'),
(10, 'Gilbert Kuhn', '2022-04-17 07:54:59', '2022-04-17 07:54:59');

-- --------------------------------------------------------

--
-- Struktur dari tabel `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `return_days` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fine` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `settings`
--

INSERT INTO `settings` (`id`, `return_days`, `fine`, `created_at`, `updated_at`) VALUES
(1, '7', '5000', '2022-04-17 07:54:59', '2022-05-16 23:33:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `students`
--

INSERT INTO `students` (`id`, `name`, `age`, `gender`, `email`, `phone`, `address`, `class`, `created_at`, `updated_at`) VALUES
(1, 'Laverna Abshire', '27', 'female', 'pgorczany@example.net', '+1-402-900-7905', '956 Schroeder CirclesPort Carrollmouth, NC 05916', 'Temporibus nihil rerum quos.', '2022-04-17 07:54:59', '2022-05-16 23:29:45'),
(2, 'Dr. Aric Gusikowski', '19', 'male', 'dorothy79@example.com', '(571) 961-0548', '938 Otto Plain Apt. 058\nWest Lyrichaven, MN 23402', 'Consectetur itaque quis.', '2022-04-17 07:54:59', '2022-04-17 07:54:59'),
(3, 'Rocky Heidenreich', '51', 'female', 'lydia.flatley@example.com', '816-677-8087', '7774 Langosh Springs Apt. 693\nEast Ceceliaton, OR 86806', 'Adipisci earum quia.', '2022-04-17 07:54:59', '2022-04-17 07:54:59'),
(4, 'Gerda Hartmann', '48', 'male', 'xboyle@example.org', '1-810-827-9508', '81519 Sylvan Wells Suite 545\nPort Traceyton, AR 67966', 'Quaerat qui voluptatem.', '2022-04-17 07:54:59', '2022-04-17 07:54:59'),
(5, 'Prof. Garnett Runte DVM', '30', 'female', 'ritchie.esther@example.com', '(915) 563-8321', '8729 Mozelle Ramp\nLynnburgh, CT 37956-3066', 'Minima velit iure.', '2022-04-17 07:54:59', '2022-04-17 07:54:59'),
(6, 'Prof. Marlee Kassulke III', '62', 'female', 'manuel87@example.org', '+1.341.647.1052', '19536 Jed Mountains Suite 307\nNew Scarlett, OK 51236-0315', 'Et quis qui aspernatur.', '2022-04-17 07:54:59', '2022-04-17 07:54:59'),
(7, 'Mr. Chesley Kshlerin III', '78', 'female', 'rose.weimann@example.net', '(669) 866-8543', '3183 Asia Pine\nBeierchester, RI 56608', 'Rerum possimus.', '2022-04-17 07:54:59', '2022-04-17 07:54:59'),
(8, 'Jena Grant PhD', '79', 'female', 'boehm.zechariah@example.com', '(940) 923-3725', '12580 Nicholas Drives\nRunolfsdottirchester, ID 02016', 'Illo dolorem ut iste.', '2022-04-17 07:54:59', '2022-04-17 07:54:59'),
(9, 'Dr. Keagan Marquardt', '75', 'male', 'istroman@example.org', '+19896696477', '594 Leonor Alley Suite 948\nSouth Kristy, OH 00606-3343', 'Accusantium illo laudantium ea.', '2022-04-17 07:54:59', '2022-04-17 07:54:59'),
(10, 'Ashlynn Beer PhD', '20', 'female', 'osbaldo.streich@example.com', '802-945-8587', '8397 Hills Parkway\nKayaland, MD 13150-8415', 'Quo accusamus est in.', '2022-04-17 07:54:59', '2022-04-17 07:54:59'),
(11, 'Ernest Moen', '66', 'female', 'colleen.langosh@example.net', '1-650-796-2014', '549 Rowe Circles Suite 900\nBellfort, IL 56377', 'Laborum nobis nulla.', '2022-04-17 07:54:59', '2022-04-17 07:54:59'),
(12, 'Dr. Ricardo Doyle', '65', 'male', 'nhahn@example.net', '1-415-783-5959', '7247 Morar Course\nEast Aiyanaberg, HI 99877-2720', 'Minima voluptatem ipsam quisquam.', '2022-04-17 07:54:59', '2022-04-17 07:54:59'),
(13, 'Dylan Mann', '71', 'female', 'hill.laurianne@example.com', '1-325-561-0699', '4416 Orion Land Suite 654\nArmstrongburgh, NC 68543-2674', 'Natus dolores voluptatibus.', '2022-04-17 07:54:59', '2022-04-17 07:54:59'),
(14, 'Karolann Reichel', '40', 'female', 'mwill@example.com', '+1.240.548.6338', '866 Arjun Field\nAnyafurt, PA 84444', 'Vitae totam.', '2022-04-17 07:54:59', '2022-04-17 07:54:59'),
(15, 'Juvenal Medhurst', '64', 'male', 'bernier.rusty@example.com', '(206) 933-7406', '828 Christiansen Estates Suite 159\nSummerfurt, UT 68426-4998', 'Asperiores ea esse doloribus.', '2022-04-17 07:54:59', '2022-04-17 07:54:59'),
(16, 'Zakary Monahan', '34', 'female', 'turner.nikki@example.com', '+1.325.997.5561', '547 Alicia Port\nBradenhaven, OK 07201', 'Quis aliquam aut quidem.', '2022-04-17 07:54:59', '2022-04-17 07:54:59'),
(17, 'Luciano Bauch', '21', 'female', 'elda35@example.net', '+1-765-444-1403', '94464 Bogisich Views\nWest Adrianmouth, KY 35047-9521', 'Esse ut nulla placeat qui.', '2022-04-17 07:54:59', '2022-04-17 07:54:59'),
(18, 'Florida Gottlieb', '76', 'female', 'louisa.grady@example.org', '(689) 622-3820', '175 Walsh Plains Suite 730\nLake Kelsi, DC 59960-7387', 'Nam ut.', '2022-04-17 07:54:59', '2022-04-17 07:54:59');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-04-17 07:54:59', '2022-04-17 07:54:59'),
(4, 'Nana', 'Nana', '$2y$10$E7aN2H7rVYQ9aEeWAxYMGu9TQRJzRj1/ssKsbfqBBizF/T/QUfBwu', '2022-05-31 21:10:36', '2022-05-31 21:10:36'),
(5, 'Bayu', 'Bayu', '$2y$10$umEj8j4oloRVgPRZmOZJJeEaQJpxetOh0bD6hmoHxWugWOO1zOKEO', '2022-05-31 21:15:06', '2022-05-31 21:15:06'),
(6, 'Cika', 'Cika', '$2y$10$vh7.Z76LH4IqXbnBO8ATH.oUNcFNvKixP6ustPgbKy2z9bFV7h2W.', '2022-05-31 21:28:58', '2022-05-31 21:28:58'),
(7, 'Cika', 'Cika2', '$2y$10$GlWS7SpHh94XdbwdGhqdW.P71VGnRGH53/C2e7kMASUR0n4YKI7UO', '2022-05-31 21:32:36', '2022-05-31 21:32:36'),
(20, 'tauseedzaman', 'tauseedzaman', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-06-06 06:58:48', '2022-06-06 06:58:48'),
(21, 'tauseedzaman', 'tauseedzaman', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-06-06 06:58:48', '2022-06-06 06:58:48'),
(22, 'tauseedzaman', 'tauseedzaman', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-06-06 07:00:07', '2022-06-06 07:00:07'),
(23, 'tauseedzaman', 'tauseedzaman', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-06-06 07:00:08', '2022-06-06 07:00:08'),
(24, 'tauseedzaman', 'tauseedzaman', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-06-06 07:00:56', '2022-06-06 07:00:56'),
(25, 'tauseedzaman', 'tauseedzaman', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-06-06 07:00:57', '2022-06-06 07:00:57'),
(26, 'tauseedzaman', 'tauseedzaman', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-06-06 20:43:24', '2022-06-06 20:43:24'),
(27, 'tauseedzaman', 'tauseedzaman', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-06-06 20:43:25', '2022-06-06 20:43:25'),
(28, 'tauseedzaman', 'tauseedzaman', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-06-06 20:46:51', '2022-06-06 20:46:51'),
(29, 'tauseedzaman', 'tauseedzaman', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-06-06 20:46:52', '2022-06-06 20:46:52'),
(30, 'Egi', 'Egi', '$2y$10$pSWMpc//uMDyWau/ov7jreK5ChV45fTLlDF.E1bY9Rkl4AiomA.Ie', '2022-06-13 21:06:57', '2022-06-13 21:06:57'),
(31, 'tauseedzaman', 'tauseedzaman', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-06-13 21:10:26', '2022-06-13 21:10:26'),
(32, 'tauseedzaman', 'tauseedzaman', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-06-13 21:10:26', '2022-06-13 21:10:26');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `authers`
--
ALTER TABLE `authers`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `books_category_id_foreign` (`category_id`),
  ADD KEY `books_auther_id_foreign` (`auther_id`),
  ADD KEY `books_publisher_id_foreign` (`publisher_id`);

--
-- Indeks untuk tabel `book_issues`
--
ALTER TABLE `book_issues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_issues_student_id_foreign` (`student_id`),
  ADD KEY `book_issues_book_id_foreign` (`book_id`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `publishers`
--
ALTER TABLE `publishers`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `authers`
--
ALTER TABLE `authers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `book_issues`
--
ALTER TABLE `book_issues`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `publishers`
--
ALTER TABLE `publishers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_auther_id_foreign` FOREIGN KEY (`auther_id`) REFERENCES `authers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `books_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `books_publisher_id_foreign` FOREIGN KEY (`publisher_id`) REFERENCES `publishers` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `book_issues`
--
ALTER TABLE `book_issues`
  ADD CONSTRAINT `book_issues_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`),
  ADD CONSTRAINT `book_issues_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
