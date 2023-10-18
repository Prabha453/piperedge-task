
<?php
if(isset($_GET["pid"])){

$trade=$vendor="";
$host="localhost";
$user="root";
$pass="";
$db="mytask";
$con=mysqli_connect($host,$user,$pass,$db);
if(!$con){
    echo "connection failed";
}
$id=$_GET["pid"];
$sql="SELECT * FROM PRODUCT WHERE ID='$id'";
// echo print_r($sql);die();
$res=mysqli_query($con,$sql);
// echo print_r($res);die();
while($row=mysqli_fetch_assoc($res)){
    $pname=$row["name"];
    $pprice=$row["price"];
    $trade=explode(",",$row["tags"]);
    $vendor=$row["vendor"];
}
$sql1="SELECT `$trade[0]` FROM DISCOUNTS WHERE VENDOR='$vendor'";
// echo print_r($sql1);
$res1=mysqli_query($con,$sql1);
while($row1=mysqli_fetch_assoc($res1)){
    $discount=$row1[$trade[0]];
//    echo $discount;
//    echo print_r($row1);
}
$discounted=$discount/100*$pprice;
$discounted_1=$pprice -$discounted;
// echo $discounted;die();

$sql2="INSERT INTO CARDS(pid,pname,pprice,discountpercent,discountedprice,vendor) VALUES('$id','$pname','$pprice',
'$discount','$discounted_1','$vendor')";
// echo print_r($sql2);die();
$res1=mysqli_query($con,$sql2);
if($res1==true){
    header("location:index.php");
}
}
?>

