<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Assignment.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css"> 
              .txosh {
            margin:0;
            padding:0;
            background-image: url('file:///E:/Takhmina/Takhmina/images/pic5.jpg');
            background-size: cover;
            height: 733px;
        }
        .loginbox{
            background-image: url("images/pic4.png"); 
            background-size: 100%;
            position: absolute;
            top:45%;
            left:50%;
            transform:translate(-50%,-50%);
            width: 350px;
            height:350px;
            padding:80px 40px;
            box-sizing: border-box;
        }
        .user{
            width: 100px;
            height: 100px;
            overflow: hidden;
            top: calc(-100px/2);
            left: calc(50% - 50px);
            position: absolute;
        }
        h2{
            padding:0;
            margin-top:30px;
            text-align: center;
        }
        .unamestyle{
            font-weight: bold;

        }
        .pwordstyle {
            font-weight: bold;
            color: #fff;
        }
        .txtuname{
            width: 100%;
            margin-bottom: 20px; 
        }
        .txtpass{
            width: 100%;
            margin-bottom: 20px;
        } 
        .btnlogin{
            width: 100%;
            margin-bottom: 20px;
        }
        .btnregister{
            width: 100%;
            margin-bottom: 20px;
        }

    .auto-style9 { 
        margin: 0; 
        padding: 0;
        height: 733px;
        font-family: "Garamond";


        }
        .auto-style10 {
            background-image: url('images/pic4.png');
            background-size: 100%;
            position: absolute;
            top: 48%;
            left: 50%;
            transform: translate(-50%,-50%);
            width: 350px;
            height: 397px;
            padding: 80px 40px;
            box-sizing: border-box;
            border-style: solid;
            border-color: black; 
             margin-top: 120px;
            
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
      <div class="auto-style9"> 
        <div class ="auto-style10">
            <img src="Images/user4.png" alt="User" class="user" style="margin-top: 60px"/> 
            <h2> Login Here </h2>
            

            <asp:Label Text="Username:" CssClass="lblemail" runat="server" /> 
            <asp:TextBox runat="server" CssClass="txtuname" placeholder="Enter Username" ID="txtUname"/> 
            <asp:Label Text="Password:" CssClass="lblpass" runat="server" /> 

            <asp:TextBox runat="server" CssClass="txtpass" placeholder="Enter Password" ID="txtPword" TextMode="Password" />
            <asp:Button Text="Sign In" runat="server" CssClass="btnlogin" ID="LoginButton" OnClick="LoginButton_Click1" /> 
            <asp:HyperLink Text="Don't Have an Account? Register Here." runat="server" CssClass="btnregister" NavigateUrl="~/RegistrationPage.aspx" /> 
         </div>
  
    </div>
</asp:Content>
