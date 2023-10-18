<!DOCTYPE html> 
<html> 

<head> 
	<script src= 
"https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"> 
	</script> 


		<?php 
		
			$connect = mysqli_connect("localhost", "root", "", "mytask"); 
			
			
			$filename = "product.json"; 
			
			
			$data = file_get_contents($filename); 
			
			
			$array = json_decode($data, true); 

			// echo print_r($array);die();
			
			foreach($array as $row) { 

				$query= 
				"INSERT INTO product(id,name,price,tags,vendor,discount) VALUES 
				('".$row["id"]."', '".$row["name"]."', 
				'".$row["price"]."', '".implode(",",$row["tags"])."','".$row["vendor"]."','".$row["discount"]."')"; 
                $res=mysqli_query($connect,$query);
    
			} 
    
		?> 
		<br /> 
	</div> 
</body> 

</html> 
