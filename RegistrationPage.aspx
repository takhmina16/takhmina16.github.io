<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.Master" AutoEventWireup="true" CodeBehind="RegistrationPage.aspx.cs" Inherits="Assignment.RegistrationPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css"> 
       

        .auto-style9 {
            height: 32px;
            text-align: right;
            width: 996px;
            margin-top: 5px;
        }
        .auto-style10 {
            text-align: left;
            font-family: Garamond;
            font-size: 28px;
            margin-bottom: 7px;
        }
       

        .auto-style11 {
            height: 32px;
            text-align: left;
            width: 400px;
        }
        .auto-style14 {
            width: 560px;
            font-family: Garamond
        }
        .auto-style15 {
            height: 32px;
            text-align: left;
            width: 401px;
        }
       

        .auto-style19 {
            height: 32px;
        }
        .auto-style21 {
            width: 560px;
            height: 32px;
        }
        .auto-style22 {
            text-align: right;
            height: 53px;
            width: 996px;
        }
        .auto-style23 {
            width: 560px;
            height: 53px;
        }
        .auto-style24 {
            height: 53px;
        }
       

        .auto-style26 {
            width: 996px;
        }
       

        .auto-style27 {
            width: 124px;
        }
       

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
            <h2 class="auto-style10"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Register Here:</h2>
    <table style="margin:0 auto;font-family: Garamond">
        <tr style="width: 900px; ">
            <td class="auto-style9"> 
             First Name:&nbsp;&nbsp;  
            </td>
            <td class="auto-style15"> 
                <asp:TextBox runat="server" CssClass="txtuname" placeholder="Enter First Name" ID="txtFname" Width="260px" Height="22px"/>
            </td>
            <td class="auto-style11"> 
                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="txtFname" ErrorMessage="Required Field" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr style="width: 900px; ">
            <td class="auto-style9"> 
              Last Name:&nbsp;&nbsp; 
            </td>
            <td class="auto-style15"> 
               <asp:TextBox runat="server" CssClass="txtpword" placeholder="Enter Last Name" ID="txtLname" Width="260px" />
            </td>
            <td class="auto-style19"> 
                <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="txtLname" ErrorMessage="Required Field" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr> 
            <td class="auto-style9"> 
                Username:&nbsp;&nbsp;
            </td>
            <td class="auto-style21"> 
                <asp:TextBox runat="server" CssClass="txtuname" placeholder="Enter Username" ID="txtUname" Width="260px"/>
            </td>
            <td class="auto-style19"> 
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Required Field " ControlToValidate="txtUname" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>

        <tr> 
            <td class="auto-style9"> 

                Password:&nbsp;&nbsp; </td>
            <td class="auto-style21"> 

                <asp:TextBox ID="txtPword" runat="server" placeholder="Enter Password" Width="260px" TextMode="Password"></asp:TextBox>

            </td>
            <td class="auto-style19"> 

                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="Required Field " ControlToValidate="txtFname" ForeColor="#FF3300"></asp:RequiredFieldValidator>

            </td>
        </tr>

        <tr> 
            <td class="auto-style9"> 

                Confirm Password:&nbsp;&nbsp; </td>
            <td class="auto-style21"> 

                <asp:TextBox ID="txtConfirmPword" runat="server" placeholder="Confirm Password" Width="260px" TextMode="Password"></asp:TextBox>

            </td>
            <td class="auto-style19"> 

                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="Required Field " ControlToValidate="txtConfirmPword" ForeColor="#FF3300"></asp:RequiredFieldValidator>

            </td>
        </tr>

        <tr> 
            <td class="auto-style9"> 

                Email:&nbsp;&nbsp; 

            </td>
            <td class="auto-style21"> 

                <asp:TextBox ID="txtEmail" runat="server" placeholder="Enter Email" Width="260px"></asp:TextBox>

            </td>
            <td class="auto-style19"> 

                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="Required Field " ControlToValidate="txtEmail" ForeColor="#FF3300"></asp:RequiredFieldValidator>

                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="You must enter the valid email ID" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtEmail"></asp:RegularExpressionValidator>

            </td>
        </tr>

        <tr> 
            <td class="auto-style22"> 

                Course:&nbsp;&nbsp; </td>
            <td class="auto-style23"> 

            <asp:DropDownList ID="ddlCourse" runat="server" Height="16px" Width="260px">
                <asp:ListItem>Select Course</asp:ListItem>
                <asp:ListItem>Diets</asp:ListItem>
                <asp:ListItem>Meditation</asp:ListItem>
                <asp:ListItem>Mindfulness</asp:ListItem>
                <asp:ListItem>Healthy Eating</asp:ListItem>
                <asp:ListItem>Daily Exercises</asp:ListItem>
             </asp:DropDownList>

            </td>
            <td class="auto-style24"> 

                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ErrorMessage="Required Field " ControlToValidate="ddlCourse" ForeColor="#FF3300"></asp:RequiredFieldValidator>

            </td>
 
        <tr> 
            <td class="auto-style26"> </td>
            <td class="auto-style14"> 
                <asp:Button ID="buttRegister" runat="server" Text="Register" Width="125px" OnClick="buttRegister_Click1" />
            &nbsp;&nbsp;
                <input id="Reset1" class="auto-style27" type="Reset" value="Reset" /></td>
            <td> </td>
        </tr>
    </table>






             <br />
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DataUsersConnectionString %>" SelectCommand="SELECT * FROM [DatabaseUsers_Table]"></asp:SqlDataSource>
             <br />
             <br />


    <br /> 
    <br /> 
    <br /> 
    <br /> 
        <br /> 
    <br /> 
    <br /> 
    <br /> 
</asp:Content>
