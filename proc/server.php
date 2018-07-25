<?php
	session_start();
	$db = mysqli_connect('localhost', 'root', '', 'emp');

	$tname = "";
	$name = "";
	$address = "";
	$update = false;
	$value = "";

if (isset($_GET['edit'])) {
		$value = $_GET['edit'];
		$results = mysqli_query($db, "SELECT * FROM bidding WHERE contractorid = '$value'");
		while ($row = mysqli_fetch_array($results)) {
			$tname = $row['contractorid'];
      $name = $row['tender_no'];
		  $address = $row['bid'];
		  mysqli_query($db, "INSERT INTO bidapproved (contractorid,tender_no,bid) VALUES ('$tname','$name', '$address')");
		  $_SESSION['message'] = "Bid Approved!";
		  header('location: tenders.php');
		}
	}

if (isset($_GET['del'])) {
	$tname = $_GET['del'];
	mysqli_query($db, "DELETE FROM bidding WHERE contractorid = '$tname'");
	$_SESSION['message'] = "Bid deleted!";
	header('location: tenders.php');
}

	$results = mysqli_query($db, "SELECT * FROM bidding");

?>
