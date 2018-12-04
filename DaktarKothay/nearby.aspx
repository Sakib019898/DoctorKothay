<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="nearby.aspx.cs" Inherits="DaktarKothay.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Daktar Kothay</title>
    <style type="text/css">
        * {
            margin: 0px;
        }

        html, body {
            background-color: steelblue;
            height: 100%;
            width: 100%;
            padding: 0;
        }

        h1, h2, h3, h4, h5, h6, p {
            margin-bottom: 20px;
        }

        nav {
            height: 40px;
            width: 100%;
            background-color: rgba(0,10,20,1);
            opacity: 0.85;
            position: fixed;
        }

        ul {
            padding: 0px;
            width: 100%;
        }

            ul li a {
                /*text-align: right;*/
                text-decoration: none;
                color: white;
                display: block;
                width: 220px;
            }

            ul li {
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

                ul li a:hover {
                    background-color: rgba(167,216,190,0.85);
                    font-size: 22px;
                }

                ul li ul li {
                    display: none;
                }

                ul li:hover ul li {
                    display: block;
                    background-color: rgba(227,105,92,0.85);
                }

        /*--------------------HEADER SESH---------------*/
        #map {
            height: 500px;
            width: 500px;
            margin-left: 450px;
            //margin-top: 200px;
        }

        #infowindow {
            width: 300px;
        }

        #back {
            height: 520px;
            width: 520px;
            margin-left: 500px;
            margin-top: 40px;
        }

        .sect {
            height: 91%;
            width: 100%;
            background-color: aliceblue;
            background-size: cover;
            background-attachment: fixed;
        }

        .subsect {
            height: 50%;
            width: 100%;
            background-color: bisque;
        }

        .sectone {
        }

        .sectonetext {
            line-height: 658px;
            padding: 570px;
            color: white;
            font-size: 40px;
        }

        .one {
            height: 100%;
        }

        .two {
            height: 100%;
        }

        .left {
            margin-top: 80px;
            margin-left: 300px;
            float: left;
            position: absolute;
            color: white;
            text-align: center;
        }

        .right {
            position: absolute;
            margin-top: 50px;
        }

        /*-------------footer--------*/
        footer div {
            position: fixed;
            left: 0;
            bottom: 0;
            width: 100%;
            background-color: rgba(0,10,20,0.85);
            padding: 20px;
            text-align: center;
            color: white;
        }

            footer div a {
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

    <form id="form3" runat="server">
        <img src="logo-01.png" style="width: 240px; height: 120px; position: fixed; margin-top: 30px;">
        
		<div>
            <nav>
                <ul>

                    <li><a href="home.aspx" class="active">Home</a></li>
                    <li><a href="" class="active">Menu</a>
                        <ul>
                            <li><a href="topdoctors.aspx" class="active">Search Doctor</a></li>
                            <li><a href="nearby.aspx" class="active">Map</a></li>
                            <li><a href="about.aspx" class="active">About us</a></li>
                        </ul>
                    </li>
                    <li><a href="topdoctors.aspx" class="active">Doctors List</a></li>
                    <li><a href="nearby.aspx" class="active">Map</a></li>
                    <li><a href="appoint.aspx" class="active">Appointment</a></li>
                    <li><a href="" class="active">Admin Login</a>
                        <ul>
                            <li><a href="hoslogin.aspx" class="active">Hospital Admin</a></li>
                            <li><a href="medlogin.aspx" class="active">Medicine shop Admin</a></li>

                        </ul>
                    </li>
            </nav>
        </div>
        <!-- ..............HEADER SESH............-->

        <div class="sect sectone">
            <div id="map" class="right">
            </div>
            <script>
                function initMap() {
                    var map;
                    var bounds = new google.maps.LatLngBounds();
                    var mapOptions = {
                        mapTypeId: 'roadmap',


                    };
                    // Display a map on the web page
                    map = new google.maps.Map(document.getElementById("map"), mapOptions);
                    map.setTilt(50);



                    function loadDB() {
                        var connection = new ActiveXObject("ADODB.Connection");

                        var connectionstring = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=G:\DaktarKothay0.3\DaktarKothay\DaktarKothay\App_Data\Doctorkothay.mdf;Integrated Security=True";

                        connection.open(connectionstring);
                        var rs = new ActiveXObject("ADODB.Recordset");

                        rs.Open("SELECT * FROM map", connection);
                        rs.MoveFirst();
                        while (!rs.eof) {
                            document.write(rs.fields(1));
                            rs.MoveNext();
                        }

                        rs.close();
                        connection.close();

                    }





                   /* <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<//%$ ConnectionStrings:connect %>" SelectCommand="SELECT [hosName], [lat], [hosID], [degree] FROM [doctor]"></asp:SqlDataSource >
                    // Multiple markers location, latitude, and longitude */
                    var hosmarkers = [
                        ['Square Hospital', 23.752806, 90.381668],
                        ['Apollo Hospital', 23.809907, 90.431058],
                        ['Dhaka Medical College', 23.725755, 90.398072],
                        ['National Heart Foundation', 23.803035, 90.361969],
                        ['MH Shamorita Medical College', 23.762937, 90.403098],
                    ];
					var medmarkers = [
						['Anurag Pharmacy', 23.770325, 90.368182],
						['Laz Pharmacy', 23.751667, 90.37919],
						['Jaki Pharmacy', 23.773388, 90.361499],
						
					];
                    // Info window content
                    var hosinfoWindowContent = [
                        ['<div class="info_content">' +
                            '<h3>Square Hospital</h3>' +
                            '<a href="hospitalinfo.aspx?id=Square Hospital" class="active" style="background-color: red;color:white;text-decoration:none;font-size:15px">GO</a>' + '</div>'],
                        ['<div class="info_content">' +
                            '<h3>Apollo Hospital</h3>' +
                            '<a href="hospitalinfo.aspx?id=Apollo Hospital" class="active" style="background-color: red;color:white;text-decoration:none;font-size:15px">GO</a>' +
                            '</div>'],
                        ['<div class="info_content">' +
                            '<h3>Dhaka Medical</h3>' +
                            '<a href="hospitalinfo.aspx?id=Dhaka medical" class="active" style="background-color: red;color:white;text-decoration:none;font-size:15px">GO</a>' +
                            '</div>'],
                        ['<div class="info_content">' +
                            '<h3>National Heart Foundation</h3>' +
                            '<a href="hospitalinfo.aspx?id=National Heart Foundation" class="active" style="background-color: red;color:white;text-decoration:none;font-size:15px">GO</a>' +
                            '</div>'],
                        ['<div class="info_content">' +
                            '<h3>MH Shamorita Medical College</h3>' +
                            '<a href="hospitalinfo.aspx?id=MH Shamorita Medical College" class="active" style="background-color: red;color:white;text-decoration:none;font-size:15px">GO</a>' +
                            '</div>'],

					];


					var medinfoWindowContent = [
						['<div class="info_content">' +
							'<h3>Anurag Pharmacy</h3>' +
							'<a href="medinfo.aspx?id=Anurag Pharmacy" class="active" style="background-color: red;color:white;text-decoration:none;font-size:15px">Anurag Pharmacy</a>' + '</div>'],
						['<div class="info_content">' +
							'<h3>Laz Pharmacy</h3>' +
							'<a href="medinfo.aspx?id=Laz Pharmacy" class="active" style="background-color: red;color:white;text-decoration:none;font-size:15px">Laz Pharmacy</a>' +
							'</div>'],
						['<div class="info_content">' +
							'<h3>Jaki Pharmacy</h3>' +
							'<a href="medinfo.aspx?id=Jaki Pharmacy" class="active" style="background-color: red;color:white;text-decoration:none;font-size:15px">Jaki Pharmacy</a>' +
							'</div>'],
					

					];

                    // Add multiple markers to map
                    var infoWindow = new google.maps.InfoWindow(), marker, i;

                    // Place each marker on the map  
                    for (i = 0; i < hosmarkers.length; i++) {
                        var position = new google.maps.LatLng(hosmarkers[i][1], hosmarkers[i][2]);
                        bounds.extend(position);
                        marker = new google.maps.Marker({
                            position: position,
                            map: map,
                            icon: "hosicon-01.png",
                            animation: google.maps.Animation.BOUNCE,
                            title: hosmarkers[i][0]
                        });

                        // Add info window to marker    
                        google.maps.event.addListener(marker, 'click', (function (marker, i) {
                            return function () {
                                infoWindow.setContent(hosinfoWindowContent[i][0]);
                                infoWindow.open(map, marker);
                            }
                        })(marker, i));

                        // Center the map to fit all markers on the screen
                        map.fitBounds(bounds);
					}

					////med
					for (i = 0; i < medmarkers.length; i++) {
						var position = new google.maps.LatLng(medmarkers[i][1], medmarkers[i][2]);
						bounds.extend(position);
						marker = new google.maps.Marker({
							position: position,
							map: map,
							icon: "medicon-01.png",
							animation: google.maps.Animation.BOUNCE,
							title: medmarkers[i][0]
						});

						// Add info window to marker    
						google.maps.event.addListener(marker, 'click', (function (marker, i) {
							return function () {
								infoWindow.setContent(medinfoWindowContent[i][0]);
								infoWindow.open(map, marker);
							}
						})(marker, i));

						// Center the map to fit all markers on the screen
						map.fitBounds(bounds);
					}

                    // Set zoom level
                    var boundsListener = google.maps.event.addListener((map), 'bounds_changed', function (event) {
                        this.setZoom(14);
                        google.maps.event.removeListener(boundsListener);
                    });

                }
                // Load initialize function
				google.maps.event.addDomListener(window, 'load', initMap);
			
            </script>
            <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBNrzosqx7IGy_XJnVRDQJnkL-6talitPY&callback=initMap"></script>
        </div>
        <img src="clickicon-01.png" style="width: 400px; height: 220px; margin-top: 150px; margin-left: 50px;">
		





        <footer>
            <div class="foot">
                <a href="about.aspx" class="active">About us</a>
                |
			<a href="about.aspx" class="active">Contact</a>
                |
			<a href="https://www.facebook.com/daktarkothay/" target="_blank" class="active">Our facebook page</a>
            </div>
		
        </footer>
    	
    </form>
</body>
</html>
