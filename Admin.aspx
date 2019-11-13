<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Assignment.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSourceAdmin" ShowFooter="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Height="230px" Width="546px">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:TemplateField HeaderText="ID" SortExpression="ID">
                <EditItemTemplate>
                    <asp:TextBox ID="txtId1" runat="server" Text='<%# Bind("ID") %>'></asp:TextBox>
                </EditItemTemplate>
                 <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                </ItemTemplate>
                     <FooterTemplate>
                    <asp:TextBox ID="txtID" runat="server"></asp:TextBox>
                </FooterTemplate>
                
           

            </asp:TemplateField>
            <asp:TemplateField HeaderText="FirstName" SortExpression="FirstName">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("FirstName") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("FirstName") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtFname" runat="server"></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="LastName" SortExpression="LastName">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("LastName") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("LastName") %>'></asp:Label>
                </ItemTemplate>
                                <FooterTemplate>
                    <asp:TextBox ID="txtLname" runat="server"></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Username" SortExpression="Username">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Username") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("Username") %>'></asp:Label>
                </ItemTemplate>
                                <FooterTemplate>
                    <asp:TextBox ID="txtUname" runat="server"></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Password" SortExpression="Password">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Password") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("Password") %>'></asp:Label>
                </ItemTemplate>
                                <FooterTemplate>
                    <asp:TextBox ID="txtPword" runat="server"></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Email" SortExpression="Email">
                <EditItemTemplate>
                    <asp:TextBox ID="txtEmail" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                </ItemTemplate>
                                <FooterTemplate>
                    <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Course" SortExpression="Course">
                <EditItemTemplate>
                    <asp:TextBox ID="txtCourse" runat="server" Text='<%# Bind("Course") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("Course") %>'></asp:Label>
                </ItemTemplate>
                                <FooterTemplate>
                    <asp:TextBox ID="txtcourse" runat="server"></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField ShowHeader="False" HeaderText="Action">
                <ItemTemplate>
                    <asp:LinkButton ID="insertButton" OnClick="insertButton_Click1" runat="server" CausesValidation="false" CommandName="" Text="InsertSH"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSourceAdmin" runat="server" ConnectionString="<%$ ConnectionStrings:DataUsersConnectionString %>" DeleteCommand="DELETE FROM [DatabaseUsers_Table] WHERE [ID] = @ID" InsertCommand="INSERT INTO [DatabaseUsers_Table] ([ID], [FirstName], [LastName], [Username], [Password], [Email], [Course]) VALUES (@ID, @FirstName, @LastName, @Username, @Password, @Email, @Course)" SelectCommand="SELECT * FROM [DatabaseUsers_Table]" UpdateCommand="UPDATE [DatabaseUsers_Table] SET [FirstName] = @FirstName, [LastName] = @LastName, [Username] = @Username, [Password] = @Password, [Email] = @Email, [Course] = @Course WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ID" Type="String" />
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="Username" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Course" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="Username" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Course" Type="String" />
            <asp:Parameter Name="ID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>

    <br /> 

</asp:Content>
