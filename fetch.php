<?php
include('connection.php');



if(isset($_POST['view'])){

// $con = mysqli_connect("localhost", "root", "", "notif");

if($_POST["view"] != '')
{
$update_query = "UPDATE events SET status = 5 WHERE student_status=0";
mysqli_query($db, $update_query);
}
$today = date("Y-m-d");


$query = "SELECT name,release_date FROM events WHERE MONTH(release_date)= MONTH('$today') AND DAY(release_date)= DAY('$today')";
$result = mysqli_query($db, $query);
$output = '';
if(mysqli_num_rows($result) > 0)
{
while($row = mysqli_fetch_array($result))
{
$output .= '
<li>
<a href="#">
<strong>'.$row["name"].' </strong><br />

</a>

';
$output .= '
<a href="#" class="text-bold text-italic">released today !!</a></li>';
}

}

else{
$output .= '
<li><a href="#" class="text-bold text-italic">No Noti Found</a></li>';
}

echo $output;


$status_query = "SELECT name, release_date FROM events  WHERE status=0";
$result_query = mysqli_query($db, $status_query);
$count = mysqli_num_rows($result_query);
$data = array(
'notification' => $output,
'unseen_notification' => $count
);

echo json_encode($data);

}
