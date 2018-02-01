<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WelcomePage.aspx.cs" Inherits="CaseStudy2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            font-family: Broadway;
            height: 83px;
            background-color: #FF9933;
        }
        .auto-style3 {
            width: 1386px;
            height: 724px;
            margin-left: 0px;
            margin-top: 0px;
        }
        .auto-style4 {
            width: 100px;
            height: 78px;
        }
        .auto-style5 {
            font-size: x-large;
            background-color: #FF9933;
        }
        .auto-style6 {
            width: 100%;
            height: 196px;
        }
        .auto-style7 {
        }
        .auto-style8 {
            color: #CCFF33;
        }
        .auto-style9 {
            color: #CCFF33;
            width: 36px;
        }
        .auto-style10 {
            width: 374px;
        }
        .auto-style11 {
            font-family: fantasy;
        }
        .auto-style12 {
            font-size: xx-large;
            background-color: #FF9933;
            color: #FF0000;
        }
    </style>
</head>
<body style="height: 821px;">
    <form id="form1" runat="server">
    <div style="height: 84px">
        <div class="auto-style2"><img alt="" class="auto-style4" src="images/rent.png" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="auto-style11"><span class="auto-style12"><strong><em>Welcome To Car Hire System</em></strong></span></span></div></h1>
    </div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Panel ID="Panel1" visible="false" runat="server" style="z-index: 1; left: 14px; top: 635px; position: absolute; height: 199px;border-color:black;border-width:thick; width: 524px">
            <table class="auto-style6">
                <tr>
                    <td colspan="2" class="auto-style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>Operators Login&nbsp;</strong></td>
                </tr>
                <tr>
                    <td class="auto-style9">UserName:</td>
                    <td class="auto-style10">
                        <asp:TextBox ID="txtbxopusername" runat="server" Height="16px" Width="121px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">Password:</td>
                    <td class="auto-style10">
                        <asp:TextBox ID="txtbxoppassword" TextMode="Password" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7" colspan="2">
                        <asp:Button ID="btnoperatorlogin" runat="server" Text="LOGIN" Height="19px" Width="130px" CssClass="auto-style8" ForeColor="Black" OnClick="btnoperatorlogin_Click" />
                        <span class="auto-style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                        <asp:Label ID="lblwrng" runat="server" CssClass="auto-style8"></asp:Label>
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <img alt="" class="auto-style3" src="images/Ferrari.jpg" /><asp:Button ID="btnoperator" runat="server" style="z-index: 1; left: 16px; top: 606px; position: absolute" Text="OperatorS" OnClick="btnoperator_Click" />
        <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button style="position:absolute; top: 377px; left: 525px; width: 210px; height: 73px;" ID="btnSignin" runat="server" Text="SIGN IN" OnClick="btnSignin_Click" />
            <asp:Button style="position:absolute; top: 283px; left: 522px; height: 61px; width: 218px;" ID="btnLogin" runat="server" Text="LOG IN" OnClick="btnLogin_Click"  />
        </form>
</body>
</html>
