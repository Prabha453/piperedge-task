<table>
<tr>
    <th>#</th>
    <th>Product Name</th>
    <th>Price</th>
    <th>Tags</th>
    <th>Vendor</th>
    <th>Discount</th>
    <th>Card</th>

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
$sql="SELECT * FROM PRODUCT";
$res=mysqli_query($con,$sql);
while($row=mysqli_fetch_assoc($res)){
    echo'
    <tr>
    <td>'.$row["id"].'</td>
    <td>'.$row["name"].'</td>
    <td>'.$row["price"].'</td>
    <td>'.$row["tags"].'</td>
    <td>'.$row["vendor"].'</td>
    <td>'.$row["discount"].'</td>
    <td  id="add"><a href="card.php?pid='.$row["id"].'"  id="add1">Add To Card</a></td>

    </tr>
    ';
}
?>
</table>