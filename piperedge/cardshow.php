<table>
<tr>
    <th>#</th>
    <th>Product Name</th>
    <th>Org Price</th>
    <th>Discount Percentage</th>
    <th>Discounted Price</th>
    <th>Vendor</th>
    <th>Remove</th>
</tr>
<?php
$host="localhost";
$user="root";
$pass="";
$db="mytask";
$con=mysqli_connect($host,$user,$pass,$db);
if(!$con){
    echo "connection failed";
}
$sql="SELECT * FROM Cards";
$res=mysqli_query($con,$sql);
while($row=mysqli_fetch_assoc($res)){
    echo'
    <tr>
    <td>'.$row["card_id"].'</td>
    <td>'.$row["pname"].'</td>
    <td>'.$row["pprice"].'</td>
    <td>'.$row["discountpercent"].'</td>
    <td>'.$row["discountedprice"].'</td>
    <td>'.$row["vendor"].'</td>
    <td id="remove"><a href="remove.php?cid='.$row["card_id"].'" id="remove1">Remove Card</a></td>

    </tr>
    ';
}

?>
</table>

<?php
$host="localhost";
$user="root";
$pass="";
$db="mytask";
$con=mysqli_connect($host,$user,$pass,$db);
if(!$con){
    echo "connection failed";
}
$sql="SELECT SUM(discountedprice)  FROM Cards";
$res=mysqli_query($con,$sql);
// echo print_r($res);die();
while($row=mysqli_fetch_assoc($res)){
    
 $total=$row["SUM(discountedprice)"];
}
echo '<h1>Total Price: Rs. '.$total.'</h1>';

?>