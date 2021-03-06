﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="medlogin.aspx.cs" Inherits="DaktarKothay.medlogin" %>



<!doctype html>
<html lang="en">
<head runat="server">
    <title>Daktar Kothay
    </title>

    <style type="text/css">
        body {
            margin: 0;
            padding: 0;
            background: url(adminback.jpg);
            background-size: cover;
            font-family: sans-serif;
        }

        .loginbox {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%,-50%);
            width: 450px;
            height: 420px;
            padding: 80px 40px;
            box-sizing: border-box;
            background: rgba(0,0,0,.5);
        }

        .user {
            width: 100px;
            height: 100px;
            border-radius: 50%;
            overflow: hidden;
            position: absolute;
            top: calc(-100px/2);
            left: calc(50% -50px);
        }

        h2 {
            margin: 0;
            padding: 0 0 20px;
            color: palegreen;
            text-align: center;
        }

        .loginbox p {
            margin: 0;
            padding: 0;
            font-weight: bold;
            color: #fff;
        }

        .loginbox input {
            width: 100%;
            margin-bottom: 20px;
        }

            .loginbox input[type="text"],
            .loginbox input[type="password"] {
                border: none;
                border-bottom: 1px solid #fff;
                background: transparent;
                outline: none;
                height: 40px;
                color: #fff;
                font-size: 16px;
            }


        .TextBox {
            width: 100%;
            margin-bottom: 20px;
            border: none;
            border-bottom: 1px solid #fff;
            background: transparent;
            outline: none;
            height: 40px;
            color: #fff;
            font-size: 16px;
        }

        #TextUser {
            width: 100%;
            margin-bottom: 20px;
            border: none;
            border-bottom: 1px solid #fff;
            background: transparent;
            outline: none;
            height: 40px;
            color: #fff;
            font-size: 16px;
        }

        ::placeholder {
            color: rgba(255,255,255,.5);
        }

        #loginbtn {
            border: none;
            outline: none;
            height: 40px;
            color: #fff;
            font-size: 16px;
            background: palegreen;
            cursor: pointer;
            border-radius: 20px;
        }

            #loginbtn:hover {
                background: #ffd800;
            }

        /*-------------footer--------*/
        footer div {
            background-color: rgba(0,10,20,0.85);
            padding: 20px;
            text-align: center;
            color: white;
            width: 100%;
            margin-top: 50px;
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
                width: 225px;
            }

            ul li {
                float: left;
                height: 40px;
                width: 225px;
                background-size: cover;
                background-color: rgba(0,10,20,0.85);
                color: white;
                font-size: 20px;
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

    <div style="width: 100%">
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
                        <li><a href="hoslogin.aspx" class="active">Hospital Admin</a></li>
                        <li><a href="medlogin.aspx" class="active">Medicine shop Admin</a></li>

                    </ul>
                </li>
            </ul>
        </nav>
    </div>

    <div class="loginbox">
        <img src="medicon2.png" class="user" />
        <h2>Medical Admin Login</h2>
        <form id="form1" runat="server">
            <p>Email</p>
            <asp:TextBox ID="TextUser" Style="background: transparent" placeholder="Enter Email" runat="server"></asp:TextBox>
            <p>Password</p>
            <asp:TextBox ID="TextPass" TextMode="Password" placeholder="*******" runat="server"></asp:TextBox>

            <asp:Button ID="loginbtn" runat="server" Text="Login" OnClick="loginbtn_Click" />
            <asp:Label ID="Label1" runat="server" Style="text-align: center; color: red"></asp:Label>
        </form>
    </div>

    <footer style="width: 100%; bottom: 0px; position: fixed">
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
