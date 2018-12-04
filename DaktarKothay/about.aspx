<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="DaktarKothay.about" %>

<!doctype html>
<html lang="en">
<head>
<title>Daktar Kothay
</title>


<style type="text/css">
	
	*{
	margin: 0px;
}
html,body{

	height:100%;
	width: 100%;
	padding:0;
}
h1,h2,h3,h4,h5,h6,p{
	margin-bottom: 20px;
}

nav{
	height: 40px;
	width: 100%;
	background-color: rgba(0,10,20,1);
	opacity: 0.85;
	position: fixed;
}
ul{
	
	padding: 0px;
	width: 100%;
}
ul li a{
	/*text-align: right;*/
	text-decoration: none;
	color: white;
	display: block;
	width: 220px;


}

ul li{
	
	float: left;
	height: 40px;
	width: 220px;
	background-size: cover;
	background-color: rgba(0,10,20,0.85);
	color: white;
	
	font-size: 22px;
	line-height: 40px;
	text-align: center;
	list-style-type: none;

}
ul li a:hover{
	background-color: rgba(167,216,190,0.85);
	font-size: 25px;

}
ul li ul li{
	display: none;

}
ul li:hover ul li{
	display: block;
	background-color: rgba(227,105,92,0.85);
}

/*--------------------HEADER SESH---------------*/
.sect{
	height: 100%;
	width:100%;
	background-color: aliceblue;
	background-size: cover;
	background-attachment: fixed;

}
.subsect{
	height:50%;
	width:100%;
	background-color: bisque;

}
.sectone{
	background-image: url('aboutback.jpg');
	}

.sectonetext{
	line-height: 658px;
	padding:570px;
	color:white;
	font-size: 40px;



}

.secttwo{

	
}
.one{
	height:65%;
}
.two{
	height:20%;
}
/*-------------footer--------*/
footer div{
	background-color: rgba(0,10,20,0.85);
	padding:20px;
	text-align: center;
	color:white;
}
footer div a{

	margin: 0px;
	list-style: none;

	font-size: 20px;
	color: white;
	text-decoration: none;

	padding: 15px;

}
</style>
<link rel="icon" href="icon-01.png">
	</head>
<body>
<img src="logo-01.png" style="width:240px;height:120px;position: fixed;margin-top: 30px;">

	<div>
	<nav>
	<ul>
		
			<li><a href="home.aspx" class="active">Home</a></li>
			<li><a href="" class="active">Menu</a>
			<ul>
				<li><a href="topdoctors.aspx" class="active">Search Doctor</a></li>
				<li><a href="nearby.aspx" class="active">Search Nearby</a></li>
				<li><a href="about.aspx" class="active">About us</a></li>
				</ul>
				</li>
			<li><a href="topdoctors.aspx" class="active">Doctors List</a></li>
			<li><a href="nearby.aspx" class="active">Search Nearby</a></li>
			<li><a href="appoint.aspx" class="active">Appointment</a></li>
			<li><a href="" class="active">Admin Login</a>
			<ul>
				<li><a href="hosadmin.aspx" class="active">Hospital Admin</a></li>
				<li><a href="medadmin.aspx" class="active">Medicine shop Admin</a></li>
				
				</ul>
				</li>
	</ul>
		</nav>
	</div>
	<!-- ..............HEADER SESH............-->

	<div class="sect sectone">
		<a href="https://www.facebook.com/daktarkothay/" target="_blank""><img src="fb.png" style="width:50px;height:50px;margin-top: 40px;margin-left: 1250px;border:0;"></a>
		<img src="about3-01.png" style="width:600px;height:450px;margin-top: 30px;margin-left: 400px;">

	</div>
		
	
	



	<footer>
		<div class="foot">
			<a href="about.aspx" class="active">About us</a>
			|
			<a href="about.aspx" class="active">Contact</a>
			|
			<a href="https://www.facebook.com/daktarkothay/" target="_blank" class="active">Our facebook page</a>
		</div>

	</footer>
	
</body>
</html>