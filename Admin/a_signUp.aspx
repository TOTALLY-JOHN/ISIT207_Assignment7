<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="a_signUp.aspx.cs" Inherits="Assignment7.a_signUp" %>

<asp:Content ID="signUp" ContentPlaceHolderID="headImage" runat="server">

    <div>
        <asp:CreateUserWizard ID="RegisterUserWithRoles" runat="server" ContinueDestinationPageUrl="~/Member/m_default.aspx" LoginCreatedUser="False">
        </asp:CreateUserWizard>
    </div>

</asp:Content>