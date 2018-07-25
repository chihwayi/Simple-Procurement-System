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

<?php $results = mysqli_query($db, "SELECT * FROM supplier"); ?>

<table>
	<thead>
		<tr>
			<th>Name</th>
      <th>Address</th>
			<th>Region</th>
      <th>Phone Number</th>
		</tr>
	</thead>

	<?php while ($row = mysqli_fetch_array($results)) { ?>
		<tr>
			<td><?php echo $row['name']; ?></td>
			<td><?php echo $row['address']; ?></td>
      <td><?php echo $row['region']; ?></td>
      <td><?php echo $row['phone']; ?></td>
		</tr>
	<?php } ?>
</table>
</body>
</html>
