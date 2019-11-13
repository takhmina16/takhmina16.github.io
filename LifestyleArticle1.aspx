<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.Master" AutoEventWireup="true" CodeBehind="LifestyleArticle1.aspx.cs" Inherits="Assignment.LifestyleArticle1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style> 

        .auto-style9 {
            width: 1095px;
        }
        .auto-style10 {
            text-align: center;
        }
        .auto-style11 {
            width: 814px;
            height: 358px;
        }
        p{
            font-family: Garamond;
        }
        h2{
            font-family: Garamond;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="article"> 
        <table> 
            <tr style="width: 1100px; height:50px"> 
                <td colspan="3" class="auto-style9"> 
                    <h1 class="auto-style10"> Why Lifestyle is Important? </h1>
                </td>
                
            </tr>
            <tr style="width: 1100px; height:50px"> 
                <td colspan="3" class="auto-style10"> <img src="Images/articleBack.jpg" class="auto-style11" />  </td>
            </tr>
            <tr>
                <td colspan="3"> 
                    <p> 
                        This article is designed to give tips to readers about how they can improve or augment actions in their life to have a healthy lifestyle; it is not meant to be all inclusive but will include major components that are considered to be parts of a lifestyle that lead to good health. In addition to the tips about what people should do for healthy living, the article will mention some of the tips about avoiding actions (the don'ts) that lead to unhealthy living.

                    </p>
                    <p> 
                        "Healthy living" to most people means both physical and mental health are in balance or functioning well together in a person. In many instances, physical and mental health are closely linked, so that a change (good or bad) in one directly affects the other. Consequently, some of the tips will include suggestions for emotional and mental "healthy living."
                    </p>
                     <h2>
                         Healthy eating (diet and nutrition)
                     </h2>
                    <p>
                        All humans have to eat food for growth and maintenance of a healthy body, but we humans have different nutrition requirements as infants, children (kids), teenagers, young adults, adults, and seniors. For example, infants may require feeding every 4 hours until they gradually age and begin to take in more solid foods. Eventually they develop into the more normal pattern of eating three times per day as young kids. However, as most parents know, kids, teenagers, and young adults often snack between meals. Snacking is often not limited to these age groups because adults and seniors often do the same.
                    </p>
                    <p>
                        Eat three healthy meals a day (breakfast, lunch, and dinner); it is important to remember that dinner does not have to be the largest meal.
                    </p>
                    <p>
                        The bulk of food consumption should consist of healthy foods, such as fruits, vegetables, whole grains, and fat-free or low-fat milk products.
                    </p>
                    <p>
                        Incorporate lean meats, poultry, fish, beans, eggs, and nuts (with emphasis on beans and nuts) into a healthy diet.
                    </p>
                    <p>
                        Choose foods that are low in saturated fats, trans fats, cholesterol, salt (sodium), and added sugars; look at the labels because the first listed items on the labels comprise the highest concentrations of ingredients.
                    </p>
                    <h2 class="auto-style10">
                        Want to know more about healthy eating and better lifestyle? Then click Register down below:
                    </h2>
                    <p class="auto-style10" style="font-family: Garamond">
                        <asp:Button ID="Button1" runat="server" Text="Register Now" NavigateURL ="~/RegistrationPage.aspx" Height="52px" Width="165px" BackColor="#FFCCFF" OnClick="Button1_Click"/>
                    </p>
                    <br /> 
                    <br /> 
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
