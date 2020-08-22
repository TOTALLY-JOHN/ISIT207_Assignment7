<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="payment.aspx.cs" Inherits="Assignment7.Admin.payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headImage" runat="server">
    <div style="background-image:url('http://mirrors.psu.ac.th/pub/centos/HEADER.images/docs-header.bak.png'); width:100%; height:70%; float:left">
        <h1 style="font-family:'Century Schoolbook'; font-weight:bold; font-size:40px; color:white; margin-left:230px; margin-top:60px;">
            PAY.<br />MANAGE.<br />ALL THE BEST.
        </h1>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="sectionPart" runat="server">
    <div id="paymentContainer" style="height:500px;">
        <div style="margin-left:250px;">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" AllowPaging="true" CellPadding="5" CellSpacing="5" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" DataKeyNames="purchaseId">
            <Columns>
                <asp:BoundField DataField="purchaseId" HeaderText="PURCHASE ID" ReadOnly="true" SortExpression="purchaseId" />
                <asp:BoundField DataField="userName" HeaderText="USERNAME" ReadOnly="true" SortExpression="userName" />
                <asp:BoundField DataField="tshirtName" HeaderText="NAME" ReadOnly="true" SortExpression="tshirtName" />
                <asp:BoundField DataField="tshirtNum" HeaderText="QUANTITY" ReadOnly="true" SortExpression="tshirtNum" />
                <asp:BoundField DataField="tshirtPrice" HeaderText="TOTAL COST" ReadOnly="true" SortExpression="tshirtPrice" />
                <asp:BoundField DataField="paymentStatus" HeaderText="STATUS" SortExpression="paymentStatus" />
                <asp:CommandField ButtonType="Button" HeaderText="Edit" ShowEditButton="true" ShowHeader="true">
                    <HeaderStyle HorizontalAlign="Center" />
                </asp:CommandField>
            </Columns>
        </asp:GridView>
        </div><br /><br /><br />
        <img src="https://cdn.pixabay.com/photo/2016/11/22/19/08/blur-1850082_960_720.jpg" style="width:90%; margin-left:10px;" />
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
