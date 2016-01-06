<?php
namespace Blog;
class Penulis {
	function tambahProduk($brand, $model, $release_year){
		$db = new Db();
		
		$stmt = $db->prepare("INSERT INTO laptops (brand, model, release_year) VALUES (?, ?, ?)");
		$stmt->bindParam(1, $brand);
		$stmt->bindParam(2, $model);
		$stmt->bindParam(3, $realease_year);
		$stmt->execute();
		
		echo "Sukses";
	}
}
?>
