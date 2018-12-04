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
#map{
	height: 500px;
	width: 500px;
	margin-left: 800px;
	float: right;
	z-index: 0;
}
#back{
	background-color:grey;
	height: 520px;
	width: 520px;
	margin-left: 500px;
	margin-top: 40px;
	float: right;
	z-index: -1;
}

.sect{
	height: 91%;
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
	background-image: url('7.jpg');
	}

.sectonetext{
	line-height: 658px;
	padding:570px;
	color:white;
	font-size: 40px;



}
.one{
	height:100%;
}
.two{
	height:100%;
}
.left{
	margin-top: 80px;
	margin-left: 300px;
	float: left;
	position: absolute;
	color:white;
	text-align: center;
}
.left a{
	text-decoration: none;
	color:white;
	font-size:25px;
	list-style: none;
	background-color: rgba(0,10,20,0.85);
	opacity: 0.80;
}
.left a:hover{
	text-decoration: none;
	color:white;
	font-size:25px;
	list-style: none;
	background-color: rgba(227,105,92,0.85);
	opacity: 0.80;
}
.right{
	float: right;
	position: absolute;
	margin-top: 50px;
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
		
			<li><a href="home.php" class="active">Home</a></li>
			<li><a href="" class="active">Menu \/</a>
			<ul>
				<li><a href="topdoctors.php" class="active">Search Doctor</a></li>
				<li><a href="nearby.php" class="active">Search Nearby</a></li>
				<li><a href="about.html" class="active">About us</a></li>
				</ul>
				</li>
			<li><a href="topdoctors.php" class="active">Doctors List</a></li>
			<li><a href="nearby.php" class="active">Search Nearby</a></li>
			<li><a href="appoint.php" class="active">Appointment</a></li>
	</ul>
		</nav>
	</div>
	<!-- ..............HEADER SESH............-->

	<div class="sect sectone">
		<div class="left">
			<h1 id="hospital">Search Nearby</h1>
			<a id='1' href="#hos" class="active">Hospital</a>
			<a id='2' href="#dia" class="active">Diagnostic Center</a>
			<a id='3' href="#med" class="active">Medicine Shop</a>
		</div>
		<div class="left2"><img src="near2-01.png" style="width:340px;height:250px;margin-top: 180px;margin-left: 300px;position:absolute;float: left;">
		</div>
		<div id="map" class="right">
		</div>
		<div id="back">

		</div>
	
	<script id="hos">
		function initMap(){
			var location={lat:23.773727,lng:90.361560};
			var map=new google.maps.Map(document.getElementById("map"),{
				zoom:16,
				Center:location});
			var marker=new google.maps.Marker({
				position:location,
				map:map,
				icon:"hosicon-01.png",
				animation: google.maps.Animation.BOUNCE
			
				});
		}
		
	</script>
	

	<script id='dia'>
		function initMap(){
			var location={lat:23.773727,lng:90.361560};
			var map=new google.maps.Map(document.getElementById("map"),{
				zoom:16,
				Center:location});
			var marker=new google.maps.Marker({
				position:location,
				map:map,
				icon:"diagicon-01.png",
				animation: google.maps.Animation.BOUNCE

				});
		}
		
	</script>
	
	
	<script id='med'>
		function initMap(){
			var location={lat:23.773727,lng:90.361560};
			var map=new google.maps.Map(document.getElementById("map"),{
				zoom:16,
				Center:location});
			var marker=new google.maps.Marker({
				position:location,
				map:map,
				icon:"medicon-01.png",
				
				animation: google.maps.Animation.BOUNCE
				});
		}
		
	</script>
	
	<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBNrzosqx7IGy_XJnVRDQJnkL-6talitPY&callback=initMap"></script>
	</div>
		
	



	<footer>
		<div class="foot">
			<a href="about.html" class="active">About us</a>
			|
			<a href="about.html" class="active">Contact</a>
			|
			<a href="https://www.facebook.com/daktarkothay/" target="_blank" class="active">Our facebook page</a>
		</div>

	</footer>
	
</body>
</html>