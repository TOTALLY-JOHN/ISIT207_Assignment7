<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="a_adminLogin.aspx.cs" Inherits="Assignment7.a_adminLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headImage" runat="server">
    <div style="background-image:url('https://neurotechx.github.io/studentclubs/images/unsplash_brooklyn-bridge_header.jpg'); width:100%; height:70%; float:left">
        <h1 style="font-family:'Century Schoolbook'; font-weight:bold; font-size:40px; color:white; margin-left:650px; margin-top:60px;">
            ADMIN LOGIN
        </h1>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="sectionPart" runat="server">
    <div style="margin-left:20%; padding-left:5%; width:500px; height:600px; float:left; background-color:#e9e9e9;"><br />
        <h1 style="margin-left:5%; font-family:sans-serif;">LOGIN FOR THE CLUB ACTIVITY</h1><br /><br />
        <asp:LoginView ID="LoginView1" runat="server">
            <AnonymousTemplate>
                <asp:Login ID="Login1" runat="server" CreateUserUrl="a_signUp.aspx" DestinationPageUrl="Admin/a_default.aspx" CreateUserText="Sign Up for a new account!" BackColor="#F7F7DE" BorderColor="#CCCC99" Font-Size="10pt" Height="333px" Width="466px">
                    <TitleTextStyle BackColor="#6B696B" Font-Bold="True" ForeColor="#FFFFFF" />
                </asp:Login>
            </AnonymousTemplate>
            <LoggedInTemplate>
                You are already logged in.
            </LoggedInTemplate>
            <RoleGroups>
                <asp:RoleGroup Roles="Admin">
                    <ContentTemplate>
                        (<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Admin/a_default.aspx">Manage Site</asp:HyperLink> or <asp:LoginStatus ID="LoginStatus2" runat="server" />)
                    </ContentTemplate>
                </asp:RoleGroup>
            </RoleGroups>
        </asp:LoginView>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="articleArea" runat="server">
    <div style="text-align:center;">
        <img src="https://contenthub-static.grammarly.com/blog/wp-content/uploads/2017/10/thank-you-760x400.jpg" width="500" height="300" alt="ThankYouImg"/> &nbsp; &nbsp; &nbsp; &nbsp;
        <img src="https://images.unsplash.com/photo-1533745848184-3db07256e163?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80" width="500" height="300" alt="welcomeImg" />
    </div>
</asp:Content>
