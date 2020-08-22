<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="CreateRolePage.aspx.cs" Inherits="Assignment7.CreateRolePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headImage" runat="server">
    <div style="background-image:url('https://chods-cheats.com/uploads/monthly_2017_12/header-background-indexed.png.2d9cf7839f995da1eacff51a8627d055.png'); width:100%; height:70%; float:left">
        <h1 style="font-family:'Century Schoolbook'; font-weight:bold; font-size:40px; color:white; margin-left:580px; margin-top:60px;">
            CREATE ROLE PAGE
        </h1>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="sectionPart" runat="server">
    <div style="height:500px; text-align:center; font-size:20px; margin:0px auto 0px auto">
        <b style="font-family:Arial;">Create a New Role : </b>
        <asp:TextBox ID="RoleName" runat="server" style="width:200px; height:30px;"></asp:TextBox><br /><br />
        <asp:Button ID="CreateRoleButton" runat="server" Text="CREATE ROLE" OnClick="CreateRoleButton_Click" style="width:250px; height:35px;"/><br /><br />
        <div style="margin-left:500px;">
            <asp:GridView ID="RoleList" runat="server" AutoGenerateColumns="False" OnRowDeleting="RoleList_RowDeleting">
                <Columns>
                    <asp:TemplateField HeaderText="Role">
                        <ItemTemplate>
                            <asp:Label runat="server" ID="RoleNameLabel" Text='<%# Container.DataItem %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField DeleteText="Delete Role" ShowDeleteButton="true"/>
                </Columns>
            </asp:GridView>
        </div><br /><br />
        <img src="https://cdn.pixabay.com/photo/2016/11/08/22/33/madison-1809574_960_720.jpg" style="width:90%; margin-left:-150px;" />
    </div>
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="articleArea" runat="server">
    <h3 style="font-size:30px; margin-left:230px;  font-family:'Arial Rounded MT';">
         INTI TABLE TENNIS CLUB ACTIVITY
    </h3>
         <p style="font-size:20px; margin-left:230px; font-family:Arial; width:600px;">
               Welcome to table tennis club activity in Inti Subang Campus The table tennis
               club activity offers INTI students opportunites to participate
               in the interesting table tennis. Even though you are not really good
               at table tennis, there is no need to be worried about it.
               Because there are some lessons there, you may learn
               how to play the table tennis well. As you are playing the table tennis,
               you can learn how to compete with other people and form the good character
               in your campus life.
         </p>
    <img src="http://iiuintima.weebly.com/uploads/9/9/8/3/9983243/3735179_orig.png" width="330" height="330" alt="intiLogo" style="position:relative; margin-left:950px; margin-top:-320px;" />
</asp:Content>
