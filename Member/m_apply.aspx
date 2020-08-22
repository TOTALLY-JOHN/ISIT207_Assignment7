<%@ Page Title="" Language="C#" MasterPageFile="~/Member/MemberMasterPage.Master" AutoEventWireup="true" CodeBehind="m_apply.aspx.cs" Inherits="Assignment7.m_apply" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headImage" runat="server">
    <div style="background-image:url('https://fawry.com/wp-content/uploads/2017/05/header-bg-1-1.png'); width:100%; height:70%; float:left">
        <h1 style="font-family:'Century Schoolbook'; font-weight:bold; font-size:40px; color:white; margin-left:230px; margin-top:60px;">
            JOIN.<br />ENJOY.<br />ACHIEVE.
        </h1>
    </div>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="sectionPart" runat="server">
    <div style="margin-left:20%; padding-left:5%; width:500px; height:650px; float:left; background-color:#e9e9e9;"><br />
        <h1 style="margin-left:-3%; font-family:sans-serif;">APPLY FOR THE CLUB OF TABLE TENNIS</h1><br /><br />
        <span style="font-size:17px; font-family:sans-serif;">Full Name : </span>
        <asp:TextBox ID="fullnameInput" runat="server" style="width:300px; height:20px; margin-left:33px;"></asp:TextBox><br />
        <asp:RequiredFieldValidator ID="fullnameValidator" runat="server" ErrorMessage="You have to input!" ControlToValidate="fullnameInput" ForeColor="red"></asp:RequiredFieldValidator><br /><br />

        <span style="font-size:17px; font-family:sans-serif;">User Name : &nbsp; </span>
        <asp:TextBox ID="usernameInput" runat="server" style="width:300px; height:20px; margin-left:15px;"></asp:TextBox><br />
        <asp:RequiredFieldValidator ID="usernameValidator" runat="server" ErrorMessage="You have to input!" ControlToValidate="usernameInput" ForeColor="red"></asp:RequiredFieldValidator><br /><br />
        
        <span style="font-size:17px; font-family:sans-serif;">User Password : </span>
        <asp:TextBox ID="pwdInput" runat="server" style="width:295px; height:20px;"></asp:TextBox><br />
        <asp:RequiredFieldValidator ID="pwdValidator" runat="server" ErrorMessage="You have to input!" ControlToValidate="pwdInput" ForeColor="red"></asp:RequiredFieldValidator><br /><br />

        <span style="font-size:17px; font-family:sans-serif;">User Confirm Password : </span>
        <asp:TextBox ID="confirmPwdInput" runat="server" style="width:200px; height:20px; margin-left:30px;"></asp:TextBox><br />
        <asp:RequiredFieldValidator ID="confirmPwdValidator1" runat="server" ErrorMessage="You have to input!" ControlToValidate="confirmPwdInput" ForeColor="red"></asp:RequiredFieldValidator><br />
        <asp:CustomValidator ID="confirmPwdValidator2" runat="server" ErrorMessage="You have to match the password" ControlToValidate="confirmPwdInput" ForeColor="red" OnServerValidate="passwordValidator" SetFocusOnError="True"></asp:CustomValidator><br />

        <span style="font-size:17px; font-family:sans-serif;">User Role : &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span>
        <asp:RadioButtonList ID="radioButtonList" runat="server" Height="16px" RepeatLayout="Flow" Width="246px" RepeatDirection="Horizontal">
            <asp:ListItem>MEMBER</asp:ListItem>
            <asp:ListItem>ADMIN</asp:ListItem>
        </asp:RadioButtonList><br />
        <asp:RequiredFieldValidator ID="radioButtonValidator" runat="server" ErrorMessage="You have to choose!" ControlToValidate="radioButtonList" ForeColor="Red"></asp:RequiredFieldValidator><br /><br />

        <span style="font-size:17px; font-family:sans-serif;">The number of T-shirt purchased : </span>
        <asp:TextBox ID="tshirtInput" runat="server" style="width:150px; height:20px; margin-left:13px;"></asp:TextBox><br />
        <asp:RequiredFieldValidator ID="tshirtValidator1" runat="server" ErrorMessage="You have to input!" ControlToValidate="tshirtInput" ForeColor="red"></asp:RequiredFieldValidator><br />
        <asp:RangeValidator ID="tshirtValidator2" runat="server" ErrorMessage="The range must be 1 to 100!" ControlToValidate="tshirtInput" MaximumValue="100" MinimumValue="1" Type="Integer" ForeColor="red"></asp:RangeValidator><br /><br />

        <span style="font-size:17px; font-family:sans-serif;">User Email(gmail.com) : </span>
        <asp:TextBox ID="emailInput" runat="server" style="width:200px; height:20px; margin-left:40px;"></asp:TextBox><br />
        <asp:RequiredFieldValidator ID="emailValidator1" runat="server" ErrorMessage="You have to input!" ControlToValidate="emailInput" ForeColor="red"></asp:RequiredFieldValidator><br />
        <asp:RegularExpressionValidator ID="emailValidator2" runat="server" ErrorMessage="You have to input @gmail.com" ControlToValidate="emailInput" ValidationExpression="^[\w.+\-]+@gmail\.com$" ForeColor="red"></asp:RegularExpressionValidator><br /><br />

        <asp:Button Text="SUBMIT" runat="server" ID="buttonId" style="width:305px; height:40px; margin-left:50px;" OnClick="btnSubmit"/><br />
        <asp:Label ID="result" runat="server" Text=""></asp:Label>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="articleArea" runat="server">
    <div style="text-align:center;">
        <img src="https://contenthub-static.grammarly.com/blog/wp-content/uploads/2017/10/thank-you-760x400.jpg" width="500" height="300" alt="ThankYouImg"/> &nbsp; &nbsp; &nbsp; &nbsp;
        <img src="https://images.unsplash.com/photo-1533745848184-3db07256e163?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80" width="500" height="300" alt="welcomeImg" />
    </div>
</asp:Content>
