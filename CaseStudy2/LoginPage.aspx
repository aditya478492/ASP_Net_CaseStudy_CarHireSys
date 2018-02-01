<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="CaseStudy2.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 45%;
            height: 221px;
        }
        .auto-style2 {
            font-family: Algerian;
            font-size: medium;
            font-style: italic;
            font-weight: bold;
            height: 78px;
        }
        .auto-style4 {
            width: 105px;
        }
        .auto-style5 {
            width: 74px;
            font-family: "Segoe UI Semibold";
        }
        .auto-style9 {
            color: #FF0000;
            font-family: "Segoe UI Semibold";
        }
        .auto-style10 {
            width: 74px;
            height: 4px;
            font-family: "Segoe UI Semibold";
        }
        .auto-style11 {
            width: 105px;
            height: 4px;
        }
        .auto-style12 {
            height: 4px;
        }
        .auto-style13 {
            font-family: "Berlin Sans FB Demi";
            font-style: normal;
            font-weight: normal;
        }
        .auto-style14 {
            font-family: "Segoe UI Semibold";
        }
        .auto-style15 {
            width: 284px;
            height: 107px;
        }
        #form1 {
            width: 1272px;
        }
    </style>
</head>
<body style="height: 619px;background-color:beige">
    <form id="form1" runat="server">
    <div>
        <table style="position:absolute; top: 38px; left: 370px;" class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="3">
                    <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="auto-style13">&nbsp;Welcome to Login Page</span></h1>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    User Name:</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtbxusername" runat="server" Height="31px" Width="181px" CssClass="auto-style14"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtbxusername" ErrorMessage="*mandatory" CssClass="auto-style9"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">
                    Password:</td>
                <td class="auto-style11">
                    <asp:TextBox ID="txtbxpassword" TextMode="Password" runat="server" Height="31px" Width="179px" CssClass="auto-style14"></asp:TextBox>
                </td>
                <td class="auto-style12">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtbxpassword" ErrorMessage="*mandatory" CssClass="auto-style9"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Button Text="LOGIN" ID="btnlogin" runat="server" OnClick="btnlogin_Click" CssClass="auto-style14" />
                    &nbsp;<asp:Button ID="btncancel" runat="server" Text="Cancel" OnClick="btncancel_Click" CssClass="auto-style14" />
                    <span class="auto-style14">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </span>
                    <asp:Label ID="lblwarning" runat="server" style="color: #FF0000" CssClass="auto-style14" ></asp:Label>
                </td>
            </tr>
        </table>
    </div>
        <img alt="" class="auto-style15" src="images/account-login.png" /></form>
</body>
</html>
