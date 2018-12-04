<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="medinfo.aspx.cs" Inherits="DaktarKothay.medinfo" %>

<!doctype html>
<html lang="en">
<head runat="server">
<title>Daktar Kothay
</title>

<style type="text/css">
	*{
	margin: 0px;
}
html,body{
	background: url(adminback.jpg);
    background-size: cover;
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
	left:0;
	top:0;
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
	font-size: 22px;

}
ul li ul li{
	display: none;

}
ul li:hover ul li{
	display: block;
	background-color: rgba(227,105,92,0.85);
}

/*--------------------HEADER SESH---------------*/







/*-------------footer--------*/
footer div{
	position:fixed;
	left:0;
	bottom:0;
	width:100%;
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



	 tr{transition: all ease-in-out .25s}
            .selected{background-color:#14fa58; opacity:90% ; color:#fff;font-weight: bold}
	#wrap {
	width:630px;
    padding-right:0;
	}
	#row {
	width:480px;
	height:200px;
	padding-right:10px;
	padding-left:10px;
	padding-top:0px;
	float:left;
	}
	#column1 {
	border:none;
	width:150px;
	height:50px;
	background:#14fa58;
    opacity:90%;
	float:left;
	}
	#column2{
		border:none;
	width:150px;
	height:50px;
	background:#14fa58;
    opacity:90%;
	float:left;
	margin-left:15px;
	}
	#column3 {
		border:none;
	width:150px;
	height:50px;
	background:#14fa58;
    opacity:90%;
	float:left;
    margin-left:15px;
	}
	#column4 {
		border:none;
	margin-top:20px;
	width:150px;
	height:50px;
	background:#14fa58;
    opacity:90%;
	float:left;
	}
	#column5{
		border:none;
	margin-top:20px;
	width:150px;
	height:50px;
	background:#14fa58;
    opacity:90%;
	float:left;
	margin-left:15px;
	}
	#column6 {
		border:none;
	margin-top:20px;
	width:150px;
	height:50px;
	background:#14fa58;
    opacity:90%;
	float:left;
    margin-left:15px;
	}
	#column7{
	border:none;
		margin-top:20px;
	width:150px;
	height:50px;
	background:#14fa58;
    opacity:90%;
	float:left;
	}
	#column8{
		border:none;
	margin-top:20px;
	width:150px;
	height:50px;
	background:#14fa58;
    opacity:90%;
	float:left;
	margin-left:15px;
	}
	#column9 {
		border:none;
	margin-top:20px;
	width:150px;
	height:50px;
	background:#14fa58;
    opacity:90%;
	float:left;
    margin-left:15px;
	}
	#column1:hover,#column2:hover,#column3:hover,#column4:hover,#column5:hover,#column6:hover,#column7:hover,#column8:hover,#column9:hover {
	background:#eff810;
    opacity:95%;
	cursor:pointer;
	}

	#right {
	padding-right:200px;
    margin-left:700px;
    margin-top:-200px;
	margin-bottom:100px;
    padding-top:0px;
    position:static;
	z-index:-1;
	}
	#appointment {
		border:none;
	height:50px;
	width:200px;
	background:#14fa58;
    margin-top:0px;
	}
	#appointment:hover {
        background:#eff810;
	cursor:pointer;		
	}
</style>
	</head>
<body>
	<form id="form1" runat="server">
    <div style="width:100%">
    
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
            <li><a href="usersignup.aspx" class="active">Sign Up</a></li>
            <li><a href="" class="active">Login</a>
                <ul>
                    <li><a href="hoslogin.aspx" class="active">Hospital Admin</a></li>
                    <li><a href="medlogin.aspx" class="active">Medicine shop Admin</a></li>
                    <li><a href="userlogin.aspx" class="active">User</a></li>

                </ul>
            </li>

        </ul>
		</nav>
	</div>

	<!-- ..............HEADER SESH............-->

	
	<img src="logo-01.png" style="width:240px;height:120px;position: fixed;margin-top: 30px;">	
	


	
	

	<footer>
		<div class="foot">
			<a href="about.aspx" class="active">About us</a>
			|
			<a href="about.aspx" class="active">Contact</a>
			|
			<a href="https://www.facebook.com/daktarkothay/" target="_blank" class="active">Our facebook page</a>
		</div>

	</footer>


	<div id="wrap">
		
		<marquee ID="WelcomeLabel" direction="right" scrollamount="20" style="width:100%;height:30px;color:white;background:green; margin-top:40px" ><Strong>Welcome to <%=id %></Strong></marquee>
		<asp:Image ID="ImageView1"  src="hospitalimage/1.jpg" DataSourceID="SqlDataSource1" style="width:100%; height:200px; margin-top:0px; background-Color:red" runat="server"/> 
	
	</div>
	
    
    <div id="right" style="color: white">
	

            <asp:GridView ID="GridView1" runat="server" style="width:500px; height:200px " AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="218px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
               
				<Columns>
                    <asp:BoundField DataField="name" HeaderText="Medicine Name" SortExpression="docName" />
                    <asp:BoundField DataField="price" HeaderText="Price" SortExpression="Department" />
                    <asp:BoundField DataField="amount" HeaderText="Amount" SortExpression="Hospital" />
                  
                
                </Columns>
                 <FooterStyle BackColor="White" ForeColor="#000066" />
				<HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
				<PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
				<RowStyle ForeColor="Black" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White"/>
            	<SortedAscendingCellStyle BackColor="#F1F1F1" />
				<SortedAscendingHeaderStyle BackColor="#007DBB" />
				<SortedDescendingCellStyle BackColor="#CAC9C9" />
				<SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>
            
           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connect %>" ></asp:SqlDataSource>
           
           </div>
        </form>

    
</body>
</html>