<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Assignment.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .auto-style9 {
            width: 1845px;
        }
        .auto-style10 {
            height: 16px;
        }
        .auto-style12 {
            width: 122px;
        }
        .auto-style13 {
            width: 122px;
            height: 80px;
        }
        .auto-style14 {
            height: 80px;
        }
         .auto-style15 {
             width: 1085px;
         }
         .button{
             align-content: center; 
         }
         .auto-style16 {
             align-content: center;
             text-align: center;
         }
    </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
      <table> 
                  <tr style="width:1100px;height:300px"> 
                <td colspan="3">
                    <img src="images/BOJEE.png" class="auto-style15" /> 
                </td>
            </tr>
        <tr style="width:1100px;text-align:center"> 
            <td class="auto-style9"> 
                <h2 style="text-align:center;font-family:Garamond" class="auto-style10">A Project that Aims at Changes in Lifestyle & Thinking </h2>
                We do not force you to follow strict instructions, we only tell the truth & what to do with it - it's up to you. <br /> 
                We do not have strict diets - just recommendations. We do not change people - the participants themselves make this choice.</td>
        </tr>
    </table>
    <hr /> 
    <p style="text-align:center"> 
        Over the 14 days of the project, the most fundamental topics will be discussed, the knowledge of which is necessary to maintain a quality lifestyle:
    </p>

    <table style="font-family: Garamond";>
        <tr style="width:800px;">
            <td class="auto-style12"> 
                <img src="images/1.PNG"; style="text-align:center" /> 
            </td>
            <td> 
                <h3>Alcohol + Tobacco</h3>
                There is a good chance that after 14 days of the project, you will stop paying for your own death every day, love yourself and want to live.
            </td>
        </tr>
         
        <tr> 
            <td class="auto-style12">
                <img src="images/2.PNG" /> 
            </td>
            <td> 
                <h3>Water</h3>
                We will tell you why you should never forget in what quantities and what water quality you should consume.
            </td>
        </tr>
                
        <tr> 
            <td class="auto-style12">
                <img src="images/3.PNG" /> 
            </td>
            <td> 
                <h3>Animal products</h3>
                Animal products have never been more affordable than they are now. Anytime, anywhere there is an opportunity to purchase them.
                After participating in the project, you will understand what type of food is right for you. 
                You will no longer have questions about traditional food, veganism, raw food diet, fruit nutrition.
            </td>
        </tr>

                
        <tr> 
            <td class="auto-style12"> 
                <img src="images/4.PNG" /> 
            </td>
            <td> 
                <h3>Careless attitude towards body</h3>
                Physical activity is of no less importance than nutrition. After the information received, you will no longer need to look for motivation to play sports - activity will become an integral part of your life. 
                You will understand the tools for gaining and reducing mass and learn how to use them. Acne, swelling and other health problems will no longer be your life companions.
            </td>
        </tr>

                 
        <tr> 
            <td class="auto-style13">
                <img src="images/5.PNG" /> 
            </td>
            <td class="auto-style14">
                <h3>Carelessness regarding mind</h3>
                Why people don't think that nutrition is the foundation? Why you can't achieve your goals? What is decomposition and how to use it? 
                Relationship problems with relatives / friends. System dependency.
                <br />
            </td>
        </tr>
    </table>
    <hr />
    <br />
    <br /> 
    <div class="auto-style16">
        <asp:Button ID="btnHomeReg" runat="server" Text="Register Now for More Information!" BackColor="#ffccff" Height="50px" />
        <br />
        <br />
        <br />
        <br />
    </div>
    

</asp:Content>
