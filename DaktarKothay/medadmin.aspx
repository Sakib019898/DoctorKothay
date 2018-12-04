<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="medadmin.aspx.cs" Inherits="DaktarKothay.medadmin" %>






<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 
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
	height: 611px;
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
	 
	}
.mid a{
	text-decoration: none;
	color:white;
	font-size:25px;
	list-style: none;
	background-color: rgba(0,10,20,0.85);
	opacity: 0.80;
	position:static;
	text-align:center;
	padding:20px;
	line-height: 300px;
	
}
.mid a:hover{
	text-decoration: none;
	color:white;
	font-size:25px;
	list-style: none;
	background-color: rgba(227,105,92,0.85);
	opacity: 0.80;
	position:static;
	text-align:center;
	padding:20px;
}
.sectonetext{

	line-height: 658px;
	padding:570px;
	color:white;
	font-size: 40px;



}

.secttwo{
	height: 70%;
	background-image: url('1-01.jpg');
}
.one{
	background-image: url('7.jpg');
	height:65%;
}
.two{
	height:20%;
}
/*-------------footer--------*/
footer div{
	
	margin-bottom:0px;
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

    <form id="form2" runat="server">
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
			<li>
                    <asp:Label ID="Labeluser" href="" class="active" runat="server" Text=""></asp:Label>
                    <ul>
                        <li><a href="#" onServerClick="Anchor_Click"  runat="server">Logout</a></li>
                        
                    </ul>
                </li>

	</ul>
		</nav>
	</div>
	<!-- ..............HEADER SESH............-->


		<a href="https://www.facebook.com/daktarkothay/" target="_blank""><img src="fb.png" style="width:50px;height:50px;margin-top: 40px;margin-left: 1250px;border:0;"></a>&nbsp;
		

	
	 <div id="right" style="color: white;background-color:darkcyan;height:600px;width:100%">
	

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
           
            <asp:Label ID="Label2" runat="server" Text="Insert" Height="27px" Width="79px" BackColor="#FF5050"></asp:Label>
           
            <asp:Label ID="Label3" runat="server" Text="Medicine Name:"></asp:Label>
			<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
			<asp:Label ID="Label4" runat="server" Text="Price:"></asp:Label>
			<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
			<asp:Label ID="Label5" runat="server" Text="Amount:"></asp:Label>
			<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
			<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Update" />
			<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Insert" Width="68px" />
           
           </div>
        </form>

	



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

