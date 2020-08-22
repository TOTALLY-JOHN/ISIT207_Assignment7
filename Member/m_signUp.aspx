<%@ Page Title="" Language="C#" MasterPageFile="~/Member/MemberMasterPage.Master" AutoEventWireup="true" CodeBehind="m_signUp.aspx.cs" Inherits="Assignment7.m_signUp" %>

<asp:Content ID="signUp" ContentPlaceHolderID="headImage" runat="server">

    <div>
        
        <asp:CreateUserWizard ID="RegisterUserWithRoles" runat="server" ContinueDestinationPageUrl="~/Member/m_default.aspx" LoginCreatedUser="False">

        </asp:CreateUserWizard>
    </div>

</asp:Content>