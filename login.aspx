<%@ Page Title="" Language="C#" MasterPageFile="~/masterPage.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Assignment7.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headImage" runat="server">
    <div style="background-image:url('https://neurotechx.github.io/studentclubs/images/unsplash_brooklyn-bridge_header.jpg'); width:100%; height:70%; float:left">
        <h1 style="font-family:'Century Schoolbook'; font-weight:bold; font-size:40px; color:white; margin-left:650px; margin-top:60px;">
            LOGIN PAGE
        </h1>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="sectionPart" runat="server">

    <div style="margin-left:20%; padding-left:5%; width:500px; height:600px; float:left; background-color:#e9e9e9;"><br />
        <h1 style="margin-left:5%; font-family:sans-serif;">LOGIN FOR THE CLUB ACTIVITY</h1><br /><br />
        <div>
            <asp:Button style="margin-top:50px; height:200px; width:200px; font-family:'Century Schoolbook'; font-size:20px;" ID="admin" runat="server" Text="Admin Login Page" OnClick="btnAdmin"/>
            <asp:Button style="margin-top:50px; margin-left:30px; height:200px; width:200px; font-family:'Century Schoolbook'; font-size:20px;" ID="member" runat="server" Text="Member Login Page" OnClick="btnMember"/>
        </div>

    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="articleArea" runat="server">
    <div style="text-align:center;">
        <img src="https://contenthub-static.grammarly.com/blog/wp-content/uploads/2017/10/thank-you-760x400.jpg" width="500" height="300" alt="ThankYouImg"/> &nbsp; &nbsp; &nbsp; &nbsp;
        <img src="https://images.unsplash.com/photo-1533745848184-3db07256e163?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80" width="500" height="300" alt="welcomeImg" />
    </div>
</asp:Content>
