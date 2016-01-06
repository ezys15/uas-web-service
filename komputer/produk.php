<?php
namespace komputer;
class Produk {
	function tambahProduk($brand, $model, $release_year){
		$db = new Db();
		
		$stmt = $db->prepare("INSERT INTO komputer (brand, model, release_year) VALUES (?, ?, ?)");
		$stmt->bindParam(1, $brand);
		$stmt->bindParam(2, $model);
		$stmt->bindParam(3, $release_year);
		$stmt->execute();
		
		echo "Sukses";
	}
}
?>