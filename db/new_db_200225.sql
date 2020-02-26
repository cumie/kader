
CREATE TABLE IF NOT EXISTS `soal` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT '0',
  `id_kategori` int(11) DEFAULT NULL,
  `pertanyaan` varchar(255) DEFAULT NULL,
  `a` varchar(255) DEFAULT NULL,
  `b` varchar(255) DEFAULT NULL,
  `c` varchar(255) DEFAULT NULL,
  `d` varchar(255) DEFAULT NULL,
  `e` varchar(255) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `opsi` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

ALTER TABLE `soal`
  ADD PRIMARY KEY (`id`);
   
ALTER TABLE `soal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
    
CREATE TABLE IF NOT EXISTS `kategori_soal` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT '0',
  `kategori` int(11) DEFAULT NULL, 
  `keterangan` varchar(255) DEFAULT NULL,
  `opsi` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
 
ALTER TABLE `kategori_soal`
  ADD PRIMARY KEY (`id`);
   
ALTER TABLE `kategori_soal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
  
  
CREATE TABLE IF NOT EXISTS `tes_tertulis` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT '0',
  `id_pendaftaran` int(11) DEFAULT NULL,
  `nik` varchar(26) DEFAULT NULL,
  `jumlah_benar` int(11) DEFAULT NULL,
  `jumlah_salah` int(11) DEFAULT NULL,
  `nilai` int(11) DEFAULT NULL, 
  `opsi` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1; 

ALTER TABLE `tes_tertulis`
  ADD PRIMARY KEY (`id`);
  
  
ALTER TABLE `tes_tertulis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
   
  
CREATE TABLE IF NOT EXISTS `kategori_wawancara` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT '0',
  `nama_kategori` int(11) DEFAULT NULL, 
  `bobot` int(11) DEFAULT NULL, 
  `keterangan` varchar(255) DEFAULT NULL,
  `opsi` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

ALTER TABLE `kategori_wawancara`
  ADD PRIMARY KEY (`id`); 
  
ALTER TABLE `kategori_wawancara`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
  
  
CREATE TABLE IF NOT EXISTS `tes_wawancara` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT '0',
  `id_pendaftaran` int(11) DEFAULT NULL,
  `nik` varchar(26) DEFAULT NULL,
  `nilai` int(11) DEFAULT NULL, 
  `opsi` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

ALTER TABLE `tes_wawancara`
  ADD PRIMARY KEY (`id`);
  
ALTER TABLE `tes_wawancara`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
  
CREATE TABLE IF NOT EXISTS `tes_wawancara_detail` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT '0',
  `id_tes_wawancara` int(11) DEFAULT NULL,
  `nama_kategori` varchar(255) DEFAULT NULL,
  `nilai` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

ALTER TABLE `tes_wawancara_detail`
  ADD PRIMARY KEY (`id`);
  
ALTER TABLE `tes_wawancara_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
   