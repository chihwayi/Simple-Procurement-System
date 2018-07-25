<!DOCTYPE html>
<html>
<head>
<title>e-procurement</title>
    <meta charset="utf-8">
<style>
#container{
width:85%;
margin: 0 auto;
top:0px;
background:white;
}

.nav{
height:40px;
background:#21A02A;
}

.nav ul{
margin:0;
padding:0;
}

.nav ul li{
list-style:none;
font-size:19px;
}

.nav ul li a{
text-decoration:none;
float:left;
display:block;
padding:10px 20px;
color:#fff;
}

.nav ul li a:hover{
color:black;
font-weight:bold;
}

#subcon1{
margin: 0px auto;
width:60%;
height:210px;
font-size:18px;
color:black;
border: 2px solid grey;
border-radius:10px;
text-align:justify;
}

#subcon1_head{
background: #21A02A;
color:#fff;
font-weight:bold;
font-size:20px;
height:40px;
padding-top:6px;
padding-left:4px;
border-radius:10px;
}

#subcon2{
margin: 10px auto;
width:60%;
height:500px;
border: 2px solid grey;
border-radius:10px;
padding-top:0px;
}

#subcon3{
margin: 10px auto;
width:60%;
height:290px;
border: 2px solid grey;
border-radius:10px;
padding-top:0px;
}

#table_head{
background:#E3E3E3;
color:#293E6A;
}

#table_data{
height:375px;
background:#fff;
color:black;
}

#table_data td{
border:2px solid #DDE0CD;
}

.footer{
width:100%;
height:30px;
background:#3B5998;
color:#fff;
padding-left:0px;
}

.footer ul li{
list-style:none;
display:inline-block;
}

.footer ul li a{
text-decoration:none;
float:left;
display:block;
color:#fff;
}

.footer ul li a:hover{
font-size:20px;
color:black;
}

#login_head
{
background: #21A02A;
color:#fff;
font-weight:bold;
font-size:20px;
height:25px;
padding-top:0px;
padding:0px;
padding-left:0px;
border-radius:2px;
}

#login
{
float:right;
margin: 10px auto;
width:19%;
height%:190px;
font-size:18px;
color:black;
border: 2px solid grey;
border-radius:05px;
text-align:justify;
}

.leftbar{
float:left;
border:2px solid grey;
border-radius:05px;
}

.leftbar ul li{
list-style:none;
width:170px;
}

.leftbar ul li a{
text-decoration:none;
float:left;
display:block;
padding:10px 20px;
font-size:18px;
color:black;
margin-bottom:10px;
margin-right:0px;
margin-left:0px;
}

.leftbar ul li a:hover{
font-weight:bold;
}



</style> 
</head>
<body bgcolor="#c7d0d9">

<div id="container">

<img src="images/e-banner.jpg" height=25% width=100%>    
<div class="nav">
  <ul>
    <li class="active"> <a href="e-tendering.php">&nbsp Home &nbsp&nbsp&nbsp&nbsp&nbsp|</a> </li>
	<li> <a href="http://localhost/proc/regform.php">   &nbsp&nbsp&nbsp Registration &nbsp&nbsp&nbsp| </a></li>
	<li> <a href="policy.html">&nbsp&nbsp&nbsp Payment Guidelines & Policies &nbsp&nbsp&nbsp&nbsp&nbsp|</a> </li>
	<li> <a href="project_login.html" target="_blank">&nbsp&nbsp&nbsp Projects &nbsp&nbsp|</a> </li>
	<li> <a href="telephone directory.html">Employee Data </a> </li>
  </ul>
</div>

<div class="leftbar">
<ul>
	<li> <a href="http://localhost/proc/latest_tender.php" target="_blank">Post Tender</a></li>
	<li> <a href="http://localhost/proc/bidding_form.php" target="_blank">Tender Bidding</a></li>
	<li> <a href="bidding_login.html" target="_blank">View Tender Bids</a></li>
</ul>
</div>

<form method="post" action="http://localhost/proc/info.php">
<div id=login>
<div id=login_head>Login</div>
ContractorId:<input type="text" name="id"><br/></br>
<input type=submit value=LOGIN name=submit >
</div>
</fieldset>
</form>

<div id="subcon1">
<p> <div id="subcon1_head">E-Procurement in Wakanda Resources and Management Corporation</div><p>
<p>In a step towards bringing transparency in the tendering process, the Wakanda government has decided to implement e-Procurement system for various types of procurements of goods and services in its Departments/Board/Corporations to obtain the most competitive and suitable bids from the bidders.
Introduction of e-Procurement will enable the Government to introduce ease and efficiency without compromising on the required procedures. e-Procurement will provide transparency, result ...<sub><a href="readmore.html" target="_blank"><u>>> Read More</u></a></sub><p>
</div>

<div id="subcon2">
<div id="subcon1_head">Latest Tenders </div>

<table border=1 id="table_head">
<tr> 
  <th width="130">Department</th>
  <th width="163">Tender Number</th>
  <th width="240">Tender Discription</th>
  <th width="100">Document <br> Request <br> Date</th>
</tr>
</table>

<marquee id="table_data" direction="up" behavior="scroll" onmousemove="this.stop()" onmouseout="this.start()" scrollamount="4">
<table>
<col width="134">
<col width="163">
<col width="240">
<col width="105">
<tbody>
	<?php
		require_once('connection.php');
		$result = $conn->prepare("SELECT * FROM latest_tender");
		$result->execute();
		for($i=0; $row = $result->fetch(); $i++){
	?>
		<tr>
      <td> Wakanda Resources Management and Development  </td>
			<td><label><?php echo $row['tender_no']; ?></label></td>
			<td><label><?php echo $row['tenderdescription']; ?></label></td>
			<td><label><?php echo $row['requestdate']; ?></label></td>
		</tr>
		<?php } ?>
	</tbody>
</table>
</marquee>

</div>

<div id="subcon3">
<div id="subcon1_head">e-Procurement Trends </div>
<img src="images/e-trend.jpg" height=240px width=100%>
</div>

<div class="footer">
<ul>
  <li> Copyright. All rights reserved. &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</li>
  <li><a href="tandc.html" target="_blank"> Terms & conditions&nbsp&nbsp&nbsp&nbsp&nbsp| </a></li>
  <li><a href="e-disclaimer.html" target="_blank"> &nbsp&nbsp&nbsp&nbspDisclaimer </a></li>
</ul>
</div>


</div>   
</body>
</html>