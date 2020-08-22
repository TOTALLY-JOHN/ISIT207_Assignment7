<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="UsersAndRoles.aspx.cs" Inherits="Assignment7.UsersAndRoles" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headImage" runat="server">
    <div style="background-image:url('https://hometechenergy.com/wp-content/themes/options/images/skins/headers/full_width/header-crimsonRed.jpg'); width:100%; height:70%; float:left">
        <h1 style="font-family:'Century Schoolbook'; font-weight:bold; font-size:40px; color:white; margin-left:500px; margin-top:60px;">
            MANAGE USERS AND ROLES
        </h1>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="sectionPart" runat="server">
    <div style="height:500px; margin:0px auto 0px auto; text-align:center; font-size:20px;">
        <p style="text-align:center;">
            <asp:Label ID="ActionStatus" runat="server" style="font-size:large; color:red;"></asp:Label>
        </p>
        <!--<h3>Manage Roles By User</h3>
        <p>
            <b>Select a User:</b>
            <asp:DropDownList ID="UserList" runat="server" AutoPostBack="true" DataTextField="UserName" DataValueField="UserName">

            </asp:DropDownList>
        </p>
        <p>
            <asp:Repeater ID="UsersRoleList" runat="server">
                <ItemTemplate>
                    <asp:CheckBox runat="server" ID="RoleCheckBox" AutoPostBack="true" Text='<%# Container.DataItem %>' OnCheckedChanged="RoleCheckBox_CheckChanged"/><br />
                </ItemTemplate>
            </asp:Repeater>
        </p>-->
        <h3 style="font-family:Arial;">Manage Users By Role</h3>
        <p>
            <b style="font-family:Arial;">Select a Role:</b>
            <asp:DropDownList ID="RoleList" runat="server" AutoPostBack="true"></asp:DropDownList>
        </p>
        <div style="margin-left:520px;">
            <asp:GridView ID="RolesUserList" runat="server" AutoGenerateColumns="False" EmptyDataText="No users belong to this role." OnRowDeleting="RolesUserList_RowDeleting">
                <Columns>
                    <asp:TemplateField HeaderText="Users">
                        <ItemTemplate>
                            <asp:Label runat="server" ID="UserNameLabel" Text='<%# Container.DataItem %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField DeleteText="Remove" ShowDeleteButton="true" />
                </Columns>
            </asp:GridView>
        </div>
        <p>
            <b style="font-family:Arial;">Username: </b>
            <asp:TextBox ID="UserNameToAddToRole" runat="server">
            </asp:TextBox>
            <br /><br />
            <asp:Button ID="AddUserToRoleButton" runat="server" Text="Add User to Role" OnClick="AddUserToRoleButton_Click" style="width:200px; height:30px; font-size:19px;"/>
        </p>
        <br />
        <img src="https://cdn.pixabay.com/photo/2016/05/18/11/25/library-1400312_960_720.jpg" style="width:90%; margin-left:-150px;" />
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
