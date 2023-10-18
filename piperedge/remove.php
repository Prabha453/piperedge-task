
<?php
if(isset($_GET["cid"])){
$id="";
$host="localhost";
$user="root";
$pass="";
$db="mytask";
$con=mysqli_connect($host,$user,$pass,$db);
if(!$con){
    echo "connection failed";
}
$id=$_GET["cid"];
$sql="DELETE FROM CARDS WHERE CARD_ID='$id'";
// echo $id;die();
$res1=mysqli_query($con,$sql);
if($res1==true){
    header("location:index.php");
}
}
?>

