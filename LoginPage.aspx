<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="Assignment.LoginPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .user{
            width: 100px;
            height: 100px;
            overflow: hidden;
            top: calc(-100px/2);
            left: calc(50% - 50px);
            position: absolute;
      }
      .loginbox{
          margin-top: 400px; 
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
            background: rgb(255, 255, 255);
            border-style: solid;
            border-color:black ;
            border-width: 9px;
        }
      h2{
            padding:0;
            margin:0;
            text-align: center;
            color: rgb(7, 6, 6);
      }
      .Labeluname{
            font-weight: bold;
            color: #fff;
       }
              .labelPword {
            font-weight: bold;
            color: #fff;
        }
                      .txtuname{
            width: 100%;
            margin-bottom: 20px; 
        }
        .txtpword{
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
            .login { 
        margin: 0; 
        padding: 0;
        height: 733px;
        background-color: #ffffff;
        font-family: "Garamond";

        }

        .auto-style9 {
            height: 733px;
            font-family: Garamond;
            width: 1089px;
            padding: 0;
            background-color: #ffffff;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <div class="auto-style9">
        <div class ="loginbox">
            <img src="Images/user4.png" alt="User" class="user"/> 
            <h2> Login Here:</h2>

            <asp:Label Text="Username:" CssClass="Labeluname" runat="server" /> 
            <asp:TextBox runat="server" CssClass="txtuname" placeholder="Enter Username" ID="txtUname"/> 
            <asp:TextBox runat="server" CssClass="txtpword" placeholder="Enter Password" ID="txtPword" />

            <asp:Button Text="Sign In" runat="server" CssClass="btnlogin" ID="LoginButton" OnClick="LoginButton_Click1"/> 
            <asp:HyperLink Text="Don't Have an Account? Register Here." runat="server" CssClass="btnregister" NavigateUrl="~/RegistrationPage.aspx" /> 
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DataUsersConnectionString %>" SelectCommand="SELECT * FROM [DatabaseUsers_Table]"></asp:SqlDataSource>
        </div>
    </div>

</asp:Content>
