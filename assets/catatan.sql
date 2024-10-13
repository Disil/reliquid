CREATE TABLE sekolah (
                         id_sekolah INT PRIMARY KEY AUTO_INCREMENT,
                         nama_sekolah VARCHAR(255) NOT NULL,
                         alamat VARCHAR(255)
);

CREATE TABLE kelas (
                       id_kelas INT PRIMARY KEY AUTO_INCREMENT,
                       kelas VARCHAR(255) NOT NULL,
                       id_sekolah INT NOT NULL,
                       jumlah_siswa INT,
                       jumlah_minyak_total INT,
                       FOREIGN KEY (id_sekolah) REFERENCES sekolah(id_sekolah)
);

ALTER TABLE kelas
    ADD INDEX idx_jumlah_siswa (jumlah_siswa),
    ADD INDEX idx_jumlah_minyak_total (jumlah_minyak_total);

CREATE TABLE siswa (
                       id_siswa INT PRIMARY KEY AUTO_INCREMENT,
                       nama_siswa VARCHAR(255),
                       jumlah_minyak INT,
                       id_kelas INT,
                       id_sekolah INT,
                       FOREIGN KEY (id_kelas) REFERENCES kelas(id_kelas),
                       FOREIGN KEY (id_sekolah) REFERENCES sekolah(id_sekolah)
);

CREATE TABLE peran (
                       id_peran INT PRIMARY KEY AUTO_INCREMENT,
                       peran VARCHAR(255) NOT NULL,
                       deskripsi VARCHAR(255) NULL
);

CREATE TABLE users (
                       id_user INT PRIMARY KEY AUTO_INCREMENT,
                       nama_user VARCHAR(255) NOT NULL ,
                       email varchar(255) NOT NULL ,
                       password_hash VARCHAR(255) NOT NULL ,
                       id_peran INT NOT NULL,
                       FOREIGN KEY (id_peran) REFERENCES peran(id_peran)
);

CREATE TABLE deposit (
                         id_deposit INT PRIMARY KEY AUTO_INCREMENT,
                         id_kelas INT,
                         jumlah_siswa INT,
                         jumlah_minyak_total INT, -- dalam ml
                         ecopoints DECIMAL(10, 3), -- liter/1000 = ecopoints
                         FOREIGN KEY (id_kelas) REFERENCES kelas(id_kelas),
                         FOREIGN KEY (jumlah_siswa) REFERENCES kelas(jumlah_siswa),
                         FOREIGN KEY (jumlah_minyak_total) REFERENCES kelas(jumlah_minyak_total)
);