ALTER TABLE `berita` CHANGE `isi_berita` `isi_berita` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL; 

ALTER TABLE `pendidikan` CHANGE `tanggal_ijazah` `tanggal_ijazah` DATE NULL DEFAULT NULL; 
ALTER TABLE `keterampilan` CHANGE `tanggal_bukti` `tanggal_bukti` DATE NULL DEFAULT NULL; 
ALTER TABLE `pengalaman` CHANGE `tanggal_bukti` `tanggal_bukti` DATE NULL DEFAULT NULL; 