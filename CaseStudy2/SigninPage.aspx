<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SigninPage.aspx.cs" Inherits="CaseStudy2.SigninPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 56%;
            height: 350px;
        }
        .auto-style2 {
            height: 29px;
        }
        .auto-style3 {
            font-family: Verdana, Geneva, Tahoma, sans-serif;
        }
        .auto-style4 {
            width: 134px;
            font-family: "Segoe UI Symbol";
            font-weight: bold;
            font-style: italic;
        }
        .auto-style5 {
            width: 20px;
        }
        .auto-style6 {
            color: #FF0000;
            font-family: "Segoe UI Symbol";
        }
        .auto-style7 {
            height: 68px;
        }
        .auto-style8 {
            font-style: italic;
            font-size: xx-large;
        }
        .auto-style9 {
            font-family: "Segoe UI Symbol";
        }
        .auto-style10 {
            width: 833px;
            height: 399px;
            margin-left: 222px;
        }
        .auto-style11 {
            font-family: "Lucida Sans", "Lucida Sans Regular", "Lucida Grande", "Lucida Sans Unicode", Geneva, Verdana, sans-serif;
        }
        .auto-style13 {
            font-family: "Lucida Sans", "Lucida Sans Regular", "Lucida Grande", "Lucida Sans Unicode", Geneva, Verdana, sans-serif;
            font-weight: normal;
        }
    </style>
</head>
<body style="background-color:beige;">
    
    <form id="form1" runat="server">
    
    <table style="position:absolute; top: 59px; left: 292px;" class="auto-style1">
        <tr>
            <td colspan="3" class="auto-style7">
                <h1 class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style8">Welcome to Sign-in Page</span></h1>
                </td>
        </tr>
        <tr>
            <td class="auto-style4">User Name:</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtbxusername2" runat="server" CssClass="auto-style9"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*mandatory" ControlToValidate="txtbxusername2" CssClass="auto-style6"></asp:RequiredFieldValidator>
                <span class="auto-style9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </span>
                </td>
        </tr>
        <tr>
            <td class="auto-style4">Password:</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtbxpassword2" runat="server" TextMode="Password" CssClass="auto-style9"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*mandatory" ControlToValidate="txtbxpassword2" CssClass="auto-style6"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Confirm Password:</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtbxpasswordconfirm" runat="server" TextMode="Password" CssClass="auto-style9"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*mandatory" ControlToValidate="txtbxpasswordconfirm" CssClass="auto-style6"></asp:RequiredFieldValidator>
                <span class="auto-style9">&nbsp;&nbsp;&nbsp;&nbsp;
                </span>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtbxpassword2" ControlToValidate="txtbxpasswordconfirm" CssClass="auto-style6" ErrorMessage="*Passwords Don't match" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Email Id:</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtbxemailid" runat="server" TextMode="Email" CssClass="auto-style9"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*mandatory" ControlToValidate="txtbxemailid" CssClass="auto-style6"></asp:RequiredFieldValidator>
                <span class="auto-style9">&nbsp;&nbsp;&nbsp;
                </span>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtbxemailid" CssClass="auto-style6" ErrorMessage="*Invalid Email Id" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Location:</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtbxlocation" runat="server" CssClass="auto-style9"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*mandatory" ControlToValidate="txtbxlocation" CssClass="auto-style6"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Pin Code:</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtbxpincode" runat="server" CssClass="auto-style9" ></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*mandatory" ControlToValidate="txtbxpincode" CssClass="auto-style6"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Mobile Number:</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtbxmobilenumber" runat="server" CssClass="auto-style9"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*mandatory" ControlToValidate="txtbxmobilenumber" CssClass="auto-style6"></asp:RequiredFieldValidator>
                <span class="auto-style9">&nbsp;&nbsp;&nbsp;&nbsp;
                </span>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" CssClass="auto-style6" ErrorMessage="*Invalid Mobile Number" ForeColor="Red" ValidationExpression="^[789]\d{9}$" ControlToValidate="txtbxmobilenumber"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="3">
                <asp:Button ID="btnSignin" runat="server" Text="SIGN IN" OnClick="btnSignin_Click" style="font-weight: 700; font-style: italic" />
                <asp:Button ID="btncancel2" runat="server" Text="CANCEL" style="font-weight: 700; font-style: italic" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblwarning2" runat="server" style="font-family: Algerian; color: #666666; font-weight: 700; font-style: italic;"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="btnsgnlgn" runat="server" Text="Log In Now!!" Visible="false" OnClick="btnsgnlgn_Click" style="font-weight: 700; font-style: italic" />
            </td>
        </tr>
    </table>
    </form>
    <p>
        <img alt="" class="auto-style10" src="images/saimg1.jpg" />

    </p>
    <div class="col-xs-9 col-sm-11">
        <h3 class="auto-style13"><em><strong>High-seasons and low-seasons by locations:</strong></em></h3>
        <p class="auto-style11">
            <em>Most business owners know that demand has a direct effect on prices. Furthermore, most rent-a-car owners also know that demand in the travel industry isn’t near as stable as they would like it to be; while sometimes high-demand allows for better profits, other times it pays off lowering rates and being more competitive. Unfortunately if you change your rates way too early or way too late, you can lose business in either of these cases. Rather than remembering to change your rates right at the season break, we let you schedule the rate calendar for your whole fleet in advance and leave the remembering part to us. The season feature works in a set-and-go basis, which means you enter your rates once, and from then on our system picks the best rate automatically, based on the rental period. The daily rate for the economy car is so much today but doubles around spring break or Christmas? No problem. You can create as many seasons per location as you want and, of course, you can alter 
            their rates as often as you want. With our system, you can be sure your company remains profitable and competitive.</em></p>
    </div>
</body>
</html>
