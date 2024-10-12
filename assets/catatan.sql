CREATE DATABASE reliquid;

CREATE TABLE sekolah (
                         id_sekolah INT PRIMARY KEY AUTO_INCREMENT,
                         nama_sekolah VARCHAR(255) NOT NULL,
                         alamat VARCHAR(255)
);

CREATE TABLE kelas (
    id_kelas INT PRIMARY KEY AUTO_INCREMENT,
    kelas VARCHAR(255),
    id_sekolah INT,
    FOREIGN KEY (id_sekolah) REFERENCES sekolah(id_sekolah)
);

CREATE TABLE deposit (
     id_deposit INT PRIMARY KEY AUTO_INCREMENT,
     id_kelas INT,
     jumlah_minyak INT,
     ecopoints DECIMAL(10, 2) GENERATED ALWAYS AS (jumlah_minyak / 1000) STORED,
     tanggal_deposit DATE NOT NULL,
     FOREIGN KEY (id_kelas) REFERENCES kelas(id_kelas)
);

CREATE TABLE peran (
   id_peran INT PRIMARY KEY AUTO_INCREMENT,
   peran VARCHAR(255) -- admin atau nasabah
);

CREATE TABLE pengguna (
      id_pengguna INT PRIMARY KEY AUTO_INCREMENT,
      nama VARCHAR(255) NOT NULL ,
      email VARCHAR(255) UNIQUE NOT NULL ,
      password VARCHAR(255) NOT NULL ,
      id_peran INT NOT NULL ,
      FOREIGN KEY (id_peran) REFERENCES peran(id_peran)
);