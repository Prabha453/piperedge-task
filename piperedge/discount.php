<table>
<tr>
    <th>Vendors</th>
    <th>Trade A</th>
    <th>Trade B</th>
    <th>Trade C</th>
    <th>Trade D</th>
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
$sql="SELECT * FROM DISCOUNTS";
$res=mysqli_query($con,$sql);
while($row=mysqli_fetch_assoc($res)){
    echo'
    <tr>
    <td>'.$row["vendor"].'</td>
    <td>'.$row["TRADE A"].'</td>
    <td>'.$row["TRADE B"].'</td>
    <td>'.$row["TRADE C"].'</td>
    <td>'.$row["TRADE D"].'</td>
    </tr>
    ';
}
?>
</table>