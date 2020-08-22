<%@ Page Title="" Language="C#" MasterPageFile="~/masterPage.Master" AutoEventWireup="true" CodeBehind="signUp.aspx.cs" Inherits="Assignment7.signUp" %>

<asp:Content ID="signUp" ContentPlaceHolderID="headImage" runat="server">

    <div>
        
        <asp:CreateUserWizard ID="RegisterUserWithRoles" runat="server" ContinueDestinationPageUrl="~/Default.aspx" LoginCreatedUser="False">

        </asp:CreateUserWizard>
    </div>

</asp:Content>