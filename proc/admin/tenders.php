<?php
include('server.php');
?>
<!DOCTYPE html>
<html>
<head>
	<title>e-procurement</title>
	<link rel="stylesheet" type="text/css" href="styl.css">
</head>
<body>
	<?php if (isset($_SESSION['message'])): ?>
		<div class="msg">
			<?php
				echo $_SESSION['message'];
				unset($_SESSION['message']);
			?>
		</div>
	<?php endif ?>

<?php $results = mysqli_query($db, "SELECT * FROM bidding"); ?>

<table>
	<thead>
		<tr>
			<th>Contractor ID</th>
      <th>Tender Number</th>
			<th>Bid</th>
			<th colspan="2">Action</th>
		</tr>
	</thead>

	<?php while ($row = mysqli_fetch_array($results)) { ?>
		<tr>
			<td><?php echo $row['contractorid']; ?></td>
			<td><?php echo $row['tender_no']; ?></td>
      <td><?php echo $row['bid']; ?></td>
			<td>
				<a href="server.php?edit=<?php echo $row['contractorid']; ?>" class="edit_btn" >Approve</a>
			</td>
			<td>
				<a href="server.php?del=<?php echo $row['contractorid']; ?>" class="del_btn">Delete</a>
			</td>
		</tr>
	<?php } ?>
</table>
</body>
</html>
