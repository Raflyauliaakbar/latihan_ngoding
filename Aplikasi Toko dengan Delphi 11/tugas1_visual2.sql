


DELIMITER //
CREATE TRIGGER tambah_stok
AFTER INSERT ON barang_masuk
FOR EACH ROW
BEGIN
    DECLARE new_stok INT;
    SET new_stok = (SELECT stok FROM stok WHERE kode_barang = NEW.kode_barang);
    IF new_stok IS NULL THEN
        INSERT INTO stok (kode_barang, nama_barang, jenis_barang, stok)
        VALUES (NEW.kode_barang, NEW.nama_barang, NEW.jenis_barang, NEW.jumlah);
    ELSE
        UPDATE stok
        SET stok = stok + CAST(NEW.jumlah AS SIGNED) WHERE kode_barang = NEW.kode_barang;
    END IF;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER kurangi_stok
AFTER INSERT ON barang_keluar
FOR EACH ROW
BEGIN
    DECLARE new_stok INT; 
    DECLARE stok_akhir INT; 
    SET new_stok = (SELECT stok FROM stok WHERE kode_barang = NEW.kode_barang);
    
    IF new_stok IS NULL THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Data barang tidak ditemukan';
    ELSE
        SET stok_akhir = new_stok - CAST(NEW.jumlah AS SIGNED);

        IF stok_akhir < 0 THEN
            SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Stok barang tidak boleh negatif';
        END IF;

        UPDATE stok SET stok = stok_akhir WHERE kode_barang = NEW.kode_barang;

    END IF;
END //
DELIMITER ;
