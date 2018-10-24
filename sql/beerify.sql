-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Creato il: Ott 24, 2018 alle 16:16
-- Versione del server: 10.2.18-MariaDB
-- Versione PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `beerify`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `azienda`
--

CREATE TABLE `azienda` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(80) DEFAULT NULL,
  `descrizione` varchar(300) DEFAULT NULL,
  `social1` varchar(100) DEFAULT NULL,
  `social2` varchar(100) DEFAULT NULL,
  `social3` varchar(100) DEFAULT NULL,
  `Indirizzi_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `carrello`
--

CREATE TABLE `carrello` (
  `id` int(11) NOT NULL,
  `prodotti_id` int(11) NOT NULL,
  `utenti_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `coupon`
--

CREATE TABLE `coupon` (
  `id` int(11) NOT NULL,
  `cod` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `immagini_prodotti`
--

CREATE TABLE `immagini_prodotti` (
  `id` int(11) NOT NULL,
  `immagine` varchar(60) DEFAULT NULL,
  `prodotti_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `immagini_utente`
--

CREATE TABLE `immagini_utente` (
  `id` int(10) UNSIGNED NOT NULL,
  `immagine` varchar(60) DEFAULT NULL,
  `utenti_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `Indirizzi`
--

CREATE TABLE `Indirizzi` (
  `id` int(11) NOT NULL,
  `stato` varchar(45) DEFAULT NULL,
  `città` varchar(45) DEFAULT NULL,
  `via` varchar(45) DEFAULT NULL,
  `cap` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `metodi_pagamento`
--

CREATE TABLE `metodi_pagamento` (
  `id` int(11) NOT NULL,
  `metodo` varchar(45) DEFAULT NULL,
  `codice_carta` varchar(45) DEFAULT NULL,
  `data_scadenza` date DEFAULT NULL,
  `utenti_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `news_letter`
--

CREATE TABLE `news_letter` (
  `id` int(11) NOT NULL,
  `email` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `offerte`
--

CREATE TABLE `offerte` (
  `id` int(10) UNSIGNED NOT NULL,
  `prodotti_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `ordini`
--

CREATE TABLE `ordini` (
  `id` int(11) NOT NULL,
  `data` date DEFAULT NULL,
  `quantità` varchar(45) DEFAULT NULL,
  `Indirizzi_id` int(11) NOT NULL,
  `carrello_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `password_dimenticata`
--

CREATE TABLE `password_dimenticata` (
  `id` int(11) NOT NULL,
  `token` varchar(45) DEFAULT NULL,
  `data_scadenza` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `preferiti`
--

CREATE TABLE `preferiti` (
  `utenti_id` int(11) NOT NULL,
  `prodotti_id` int(11) NOT NULL,
  `id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `prodotti`
--

CREATE TABLE `prodotti` (
  `id` int(11) NOT NULL,
  `nome` varchar(80) DEFAULT NULL,
  `descrizione` varchar(400) DEFAULT NULL,
  `quantità` int(11) DEFAULT NULL,
  `prezzo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `prodotti_in_evidenza`
--

CREATE TABLE `prodotti_in_evidenza` (
  `id` int(11) NOT NULL,
  `data` varchar(45) DEFAULT NULL,
  `prodotti_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `recensioni`
--

CREATE TABLE `recensioni` (
  `id` int(10) UNSIGNED NOT NULL,
  `testo` varchar(300) DEFAULT NULL,
  `valutazione` int(11) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `prodotti_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `richieste_reso`
--

CREATE TABLE `richieste_reso` (
  `utenti_id` int(11) NOT NULL,
  `prodotti_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `motivazione` varchar(200) DEFAULT NULL,
  `approvata` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `spedizioni`
--

CREATE TABLE `spedizioni` (
  `id` int(10) UNSIGNED NOT NULL,
  `cod_tracking` varchar(45) DEFAULT NULL,
  `nome_destinatario` varchar(120) DEFAULT NULL,
  `utenti_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `tag`
--

CREATE TABLE `tag` (
  `id` int(11) NOT NULL,
  `nome` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `tag_prodotti`
--

CREATE TABLE `tag_prodotti` (
  `tag_id` int(11) NOT NULL,
  `prodotti_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL COMMENT 'auto incrementing user_id of each user, unique index',
  `user_first_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user_last_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user_password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'user''s password in salted and hashed format',
  `user_email` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT 'user''s email, unique'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='user data';

--
-- Dump dei dati per la tabella `users`
--

INSERT INTO `users` (`user_id`, `user_first_name`, `user_last_name`, `user_password_hash`, `user_email`) VALUES
(2, 'asd', 'asd', '$2y$10$I83Vn72UrbNG7HHa6nOi4.wIYUghzJHzyqvuV4rLhh2DTQLJ4lrKa', 'roasdot@asd.asd'),
(3, 'asdsad', 'asdasd', '$2y$10$mOFu/XU3u7j/XBh65Q.g3uU.U2/6X21V7JCpCd1.w/B.Ikkatr.kO', 'asd@asd.asd'),
(4, 'Stefano', 'De Ciantis', '$2y$10$f5Px7sxyxsCn.DK/uR7NO.IysYbiAdqN2y3D6QcKMsq6RN1hiMwGS', 'mikesh07mail@gmail.com'),
(5, 'asdsad', 'adsad', '$2y$10$LaKlstLvzZHYVVaexSNxbu.qi639TeChA.nAPK/yikGzyZxxSeeEG', 'lol@lol.com'),
(6, 'jhjh', 'hjhj', '$2y$10$GOE6WO68WNC9v0CFsJa9NuTodMtQhCfQbKdVqYE.vQ/0.7yGmIa4.', 'a@hotmail.it'),
(7, 'Gianni', 'Spada', '$2y$10$zNcSv3iaOWl1XPlI0VPJtezy1A11cJpx1o4uwGU6wkiHZIGk7sH42', 'b@hotmail.it'),
(8, 'LOl', 'lol', '$2y$10$f6m9gNjfe2N0acZ1T2ZaKutXBxpl7oVrt9fcQe/OaUCl01JeUxaz.', 'asd@asd.asdasd');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `azienda`
--
ALTER TABLE `azienda`
  ADD PRIMARY KEY (`id`,`Indirizzi_id`),
  ADD KEY `fk_azienda_dettagli_Indirizzi1_idx` (`Indirizzi_id`);

--
-- Indici per le tabelle `carrello`
--
ALTER TABLE `carrello`
  ADD PRIMARY KEY (`id`,`prodotti_id`,`utenti_id`),
  ADD KEY `fk_carrello_prodotti1_idx` (`prodotti_id`),
  ADD KEY `fk_carrello_utenti1_idx` (`utenti_id`);

--
-- Indici per le tabelle `coupon`
--
ALTER TABLE `coupon`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `immagini_prodotti`
--
ALTER TABLE `immagini_prodotti`
  ADD PRIMARY KEY (`id`,`prodotti_id`),
  ADD KEY `fk_immagini_prodotti_prodotti1_idx` (`prodotti_id`);

--
-- Indici per le tabelle `immagini_utente`
--
ALTER TABLE `immagini_utente`
  ADD PRIMARY KEY (`id`,`utenti_id`),
  ADD KEY `fk_immagini_utente_utenti1_idx` (`utenti_id`);

--
-- Indici per le tabelle `Indirizzi`
--
ALTER TABLE `Indirizzi`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `metodi_pagamento`
--
ALTER TABLE `metodi_pagamento`
  ADD PRIMARY KEY (`id`,`utenti_id`),
  ADD KEY `fk_metodi_pagamento_utenti1_idx` (`utenti_id`);

--
-- Indici per le tabelle `news_letter`
--
ALTER TABLE `news_letter`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `offerte`
--
ALTER TABLE `offerte`
  ADD PRIMARY KEY (`id`,`prodotti_id`),
  ADD KEY `fk_offerte_prodotti1_idx` (`prodotti_id`);

--
-- Indici per le tabelle `ordini`
--
ALTER TABLE `ordini`
  ADD PRIMARY KEY (`id`,`Indirizzi_id`,`carrello_id`),
  ADD KEY `fk_ordini_Indirizzi1_idx` (`Indirizzi_id`),
  ADD KEY `fk_ordini_carrello1_idx` (`carrello_id`);

--
-- Indici per le tabelle `password_dimenticata`
--
ALTER TABLE `password_dimenticata`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `preferiti`
--
ALTER TABLE `preferiti`
  ADD PRIMARY KEY (`utenti_id`,`prodotti_id`,`id`),
  ADD KEY `fk_utenti_has_prodotti_prodotti1_idx` (`prodotti_id`),
  ADD KEY `fk_utenti_has_prodotti_utenti1_idx` (`utenti_id`);

--
-- Indici per le tabelle `prodotti`
--
ALTER TABLE `prodotti`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cod_UNIQUE` (`id`);

--
-- Indici per le tabelle `prodotti_in_evidenza`
--
ALTER TABLE `prodotti_in_evidenza`
  ADD PRIMARY KEY (`id`,`prodotti_id`),
  ADD KEY `fk_prodotti_in_evidenza_prodotti1_idx` (`prodotti_id`);

--
-- Indici per le tabelle `recensioni`
--
ALTER TABLE `recensioni`
  ADD PRIMARY KEY (`id`,`prodotti_id`),
  ADD KEY `fk_recensioni_prodotti1_idx` (`prodotti_id`);

--
-- Indici per le tabelle `richieste_reso`
--
ALTER TABLE `richieste_reso`
  ADD PRIMARY KEY (`utenti_id`,`prodotti_id`,`id`),
  ADD KEY `fk_utenti_has_prodotti_prodotti2_idx` (`prodotti_id`),
  ADD KEY `fk_utenti_has_prodotti_utenti2_idx` (`utenti_id`);

--
-- Indici per le tabelle `spedizioni`
--
ALTER TABLE `spedizioni`
  ADD PRIMARY KEY (`id`,`utenti_id`),
  ADD KEY `fk_spedizioni_utenti1_idx` (`utenti_id`);

--
-- Indici per le tabelle `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indici per le tabelle `tag_prodotti`
--
ALTER TABLE `tag_prodotti`
  ADD PRIMARY KEY (`tag_id`,`prodotti_id`),
  ADD KEY `fk_tag_has_prodotti_prodotti1_idx` (`prodotti_id`),
  ADD KEY `fk_tag_has_prodotti_tag1_idx` (`tag_id`);

--
-- Indici per le tabelle `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `azienda`
--
ALTER TABLE `azienda`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `immagini_utente`
--
ALTER TABLE `immagini_utente`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `Indirizzi`
--
ALTER TABLE `Indirizzi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `offerte`
--
ALTER TABLE `offerte`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `prodotti`
--
ALTER TABLE `prodotti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `recensioni`
--
ALTER TABLE `recensioni`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `spedizioni`
--
ALTER TABLE `spedizioni`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `tag`
--
ALTER TABLE `tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'auto incrementing user_id of each user, unique index', AUTO_INCREMENT=9;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `azienda`
--
ALTER TABLE `azienda`
  ADD CONSTRAINT `fk_azienda_dettagli_Indirizzi1` FOREIGN KEY (`Indirizzi_id`) REFERENCES `Indirizzi` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limiti per la tabella `carrello`
--
ALTER TABLE `carrello`
  ADD CONSTRAINT `fk_carrello_prodotti1` FOREIGN KEY (`prodotti_id`) REFERENCES `prodotti` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_carrello_utenti1` FOREIGN KEY (`utenti_id`) REFERENCES `utenti` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limiti per la tabella `immagini_prodotti`
--
ALTER TABLE `immagini_prodotti`
  ADD CONSTRAINT `fk_immagini_prodotti_prodotti1` FOREIGN KEY (`prodotti_id`) REFERENCES `prodotti` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limiti per la tabella `immagini_utente`
--
ALTER TABLE `immagini_utente`
  ADD CONSTRAINT `fk_immagini_utente_utenti1` FOREIGN KEY (`utenti_id`) REFERENCES `utenti` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limiti per la tabella `metodi_pagamento`
--
ALTER TABLE `metodi_pagamento`
  ADD CONSTRAINT `fk_metodi_pagamento_utenti1` FOREIGN KEY (`utenti_id`) REFERENCES `utenti` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limiti per la tabella `offerte`
--
ALTER TABLE `offerte`
  ADD CONSTRAINT `fk_offerte_prodotti1` FOREIGN KEY (`prodotti_id`) REFERENCES `prodotti` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limiti per la tabella `ordini`
--
ALTER TABLE `ordini`
  ADD CONSTRAINT `fk_ordini_Indirizzi1` FOREIGN KEY (`Indirizzi_id`) REFERENCES `Indirizzi` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ordini_carrello1` FOREIGN KEY (`carrello_id`) REFERENCES `carrello` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limiti per la tabella `preferiti`
--
ALTER TABLE `preferiti`
  ADD CONSTRAINT `fk_utenti_has_prodotti_prodotti1` FOREIGN KEY (`prodotti_id`) REFERENCES `prodotti` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_utenti_has_prodotti_utenti1` FOREIGN KEY (`utenti_id`) REFERENCES `utenti` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limiti per la tabella `prodotti_in_evidenza`
--
ALTER TABLE `prodotti_in_evidenza`
  ADD CONSTRAINT `fk_prodotti_in_evidenza_prodotti1` FOREIGN KEY (`prodotti_id`) REFERENCES `prodotti` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limiti per la tabella `recensioni`
--
ALTER TABLE `recensioni`
  ADD CONSTRAINT `fk_recensioni_prodotti1` FOREIGN KEY (`prodotti_id`) REFERENCES `prodotti` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limiti per la tabella `richieste_reso`
--
ALTER TABLE `richieste_reso`
  ADD CONSTRAINT `fk_utenti_has_prodotti_prodotti2` FOREIGN KEY (`prodotti_id`) REFERENCES `prodotti` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_utenti_has_prodotti_utenti2` FOREIGN KEY (`utenti_id`) REFERENCES `utenti` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limiti per la tabella `spedizioni`
--
ALTER TABLE `spedizioni`
  ADD CONSTRAINT `fk_spedizioni_utenti1` FOREIGN KEY (`utenti_id`) REFERENCES `utenti` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limiti per la tabella `tag_prodotti`
--
ALTER TABLE `tag_prodotti`
  ADD CONSTRAINT `fk_tag_has_prodotti_prodotti1` FOREIGN KEY (`prodotti_id`) REFERENCES `prodotti` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tag_has_prodotti_tag1` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
