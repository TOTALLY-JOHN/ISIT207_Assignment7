<%@ Page Title="" Language="C#" MasterPageFile="~/Member/MemberMasterPage.Master" AutoEventWireup="true" CodeBehind="purchase.aspx.cs" Inherits="Assignment7.Member.purchase" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headImage" runat="server">
    <div style="background-image:url('https://i.pinimg.com/originals/12/50/ae/1250aecf05bf654dc783093b5bb8502c.jpg'); width:100%; height:70%; float:left">
        <h1 style="font-family:'Century Schoolbook'; font-weight:bold; font-size:40px; color:white; margin-left:230px; margin-top:60px;">
            TABLE TENNIS ?<br /> YES PLEASE.

        </h1>
    </div>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="sectionPart" runat="server">
    <h1 style="font-size:30px; font-family:'Lucida Sans';">Club T-shirts</h1><br /><br />
    <div id="section_img1" style="width:300px; height:270px; float:left; margin: 0 0 0 100px;">
        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVnQVl2itnqatwjaxTGyoryPitEzBjT4iZHDWTSrQGADCvY9e8&s" width="150" height="150" alt="pic1" /><br />
        <table style="padding:10px;">
            <tr style="background-color:white;">
                <td style=" border-right:1px solid black">Option 1</td>
                <td>Collar T-Shirt</td>
            </tr>
            <tr>
                <td style=" border-right:1px solid black">Color</td>
                <td>Red</td>
            </tr>
            <tr  style="background-color:white;">
                <td style=" border-right:1px solid black">Material</td>
                <td>Cotton</td>
            </tr>
            <tr>
                <td style=" border-right:1px solid black">Price</td>
                <td>RM 15.00</td>
            </tr>
        </table>
    </div>
    <div id="section_img2" style="margin-left:100px; width:300px; height:270px; float:left;">
        <img src="https://hsclothing.co.uk/wp-content/uploads/2019/03/NX3600-CBE-Ball-400x400.jpg" width="150" height="150" alt="pic2" />
        <table style="padding:10px;">
            <tr style="background-color:white;">
                <td style=" border-right:1px solid black">Option 2</td>
                <td>Jersey Shirt</td>
            </tr>
            <tr>
                <td style=" border-right:1px solid black">Color</td>
                <td>Green</td>
            </tr>
            <tr  style="background-color:white;">
                <td style=" border-right:1px solid black">Material</td>
                <td>Jersey</td>
            </tr>
            <tr>
                <td style=" border-right:1px solid black">Price</td>
                <td>RM 25.00</td>
            </tr>
        </table>
    </div>
    <div id="section_img3" style="margin-left:75px; width:300px; height:270px; float:left;">
        <img src="http://www.tabletennisworld.com.au/image/cache/data/Clothing/Stiga/1854-3594-XX+River+Shirt+Lime+Green+Navy+1-800x800.png" width="150" height="150" alt="pic3" />
         <table style="padding:10px;">
            <tr style="background-color:white;">
                <td style=" border-right:1px solid black">Option 3</td>
                <td>Normal T-shirt</td>
            </tr>
            <tr>
                <td style=" border-right:1px solid black">Color</td>
                <td>Blue</td>
            </tr>
            <tr  style="background-color:white;">
                <td style=" border-right:1px solid black">Material</td>
                <td>Cotton</td>
            </tr>
            <tr>
                <td style=" border-right:1px solid black">Price</td>
                <td>RM 10.00</td>
            </tr>
        </table>
    </div>

    <div id="form" style=" margin-left:75px; background-color:#e2e2e2; width:1000px; height:350px; float:left; border:1px solid black;">
        <div style="padding:10px; float:left; border:1px solid black; height: 328px; width:478px;">
            Username: <asp:TextBox ID="usernameInput" runat="server"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="usernameValidator" runat="server" ErrorMessage="You have to input username" ControlToValidate="usernameInput" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            Please Select : <br />
            <asp:CheckBoxList ID="checkList" runat="server">
                <asp:ListItem> Option 1 </asp:ListItem>
                <asp:ListItem> Option 2 </asp:ListItem>
                <asp:ListItem> Option 3 </asp:ListItem> 
            </asp:CheckBoxList>
            <br /> 
            Quantity for option 1: 
            <asp:DropDownList ID="dropdownList1" runat="server">
                <asp:ListItem>0</asp:ListItem>
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
            </asp:DropDownList><br />
            Quantity for option 2: 
            <asp:DropDownList ID="dropdownList2" runat="server">
                <asp:ListItem>0</asp:ListItem>
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
            </asp:DropDownList><br />
            Quantity for option 3: 
            <asp:DropDownList ID="dropdownList3" runat="server">
                <asp:ListItem>0</asp:ListItem>
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
            </asp:DropDownList>
            <br />
            
            <br /> <br />
            <asp:Button ID="submit" runat="server" Text="Submit" OnClick="submit_Click" /><br /><br />
            <asp:Label ID="result" runat="server" Text="" ForeColor="Red"/>
        </div>
        
        <div style="padding:10px; float:left; border:1px solid black; height:328px; width:478px;">
            <asp:Button ID="display" runat="server" Text="Display item info" OnClick="display_Click" /><br /><br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" AllowPaging="true" PageSize="10">
                <Columns>
                    <asp:BoundField DataField="purchaseId" HeaderText="PURCHASE ID" ReadOnly="true" SortExpression="purchaseId" />
                    <asp:BoundField DataField="userName" HeaderText="USERNAME" ReadOnly="true" SortExpression="userName" />
                    <asp:BoundField DataField="tshirtName" HeaderText="NAME" ReadOnly="true" SortExpression="tshirtName" />
                    <asp:BoundField DataField="tshirtNum" HeaderText="QUANTITY" ReadOnly="true" SortExpression="tshirtNum" />
                    <asp:BoundField DataField="tshirtPrice" HeaderText="TOTAL COST" ReadOnly="true" SortExpression="tshirtPrice" />
                    <asp:BoundField DataField="paymentStatus" HeaderText="STATUS" ReadOnly="true" SortExpression="paymentStatus" />
                </Columns>
            </asp:GridView>
        </div>
    </div>
    
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="articleArea" runat="server">
    <h3 style="font-size:30px; margin-left:230px;  font-family:'Arial Rounded MT';">
         WE MADE OUR OWN T-SHIRTS
    </h3>
         <p style="font-size:20px; margin-left:230px; font-family:Arial; width:600px;">
             We design and print our own T-shirt, this is to ensure the quality and the materials is suitable for our members to wear on competition or even wear it casually. 
             The T-Shirt 3 types : jersey, normal T-shirt and also a collor T-shirt to be choosen from.
             The purpose of making our own T-shirt is to encourage unity and to show that all memebers has the same spirit to take on any challenges.
         </p>
    
    <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/c/c5/Karachi_-_Pakistan-market.jpg/330px-Karachi_-_Pakistan-market.jpg" width="330" height="250" alt="intiLogo" style="position:relative; margin-left:950px; margin-top:-320px;" />
</asp:Content>