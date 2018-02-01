<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationPage.aspx.cs" Inherits="CaseStudy2.RegistrationPage" Theme="Theme1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 286px;
        }
        .auto-style3 {
        }
        .auto-style4 {
            font-family: Verdana, Geneva, Tahoma, sans-serif;
        }
        .auto-style6 {
            width: 1139px;
            height: 411px;
            margin-left: 70px;
            margin-top: 0px;
            margin-bottom: 0px;
        }
        .auto-style7 {
            font-weight: bold;
            font-style: italic;
        }
        .auto-style8 {
            width: 286px;
            font-weight: bold;
        }
        .auto-style9 {
            font-weight: normal;
            font-size: medium;
        }
        .auto-style10 {
            font-family: "Arial Unicode MS";
            font-size: xx-large;
        }
        .auto-style11 {
            font-weight: normal;
        }
        .auto-style12 {
            font-style: italic;
        }
        .auto-style13 {
            font-size: large;
        }
        .auto-style14 {
            font-size: x-large;
            font-family: "Franklin Gothic Medium", "Arial Narrow", Arial, sans-serif;
            font-style: italic;
        }
        .auto-style15 {
            font-family: "Franklin Gothic Medium";
        }
        .auto-style16 {
            font-size: large;
            font-family: "Franklin Gothic Medium";
            font-style: italic;
        }
    </style>
</head>
<body style="background-color:orange; height: 0px;">
    <form id="form1" runat="server">
    <div>
    <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="auto-style9"><span class="auto-style4"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong></span></span><span class="auto-style11"><strong><span class="auto-style10"> <em>Welcome To Registration Page</em></span></strong></span><img alt="" class="auto-style6" src="images/savimg.jpg" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></h1>
    </div>
        <div>   

            <table style="height: 334px; width: 882px; left: 194px; top: 86px; position: absolute;" class="auto-style1">
                <tr>
                    <td class="auto-style8">Customer Name:</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtbxusername" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtbxusername" ErrorMessage="*mandatory" CssClass="auto-style12"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">Address:</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtbxaddress" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtbxaddress" ErrorMessage="*mandatory" CssClass="auto-style12"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">Contact Number:</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtbxcontactnumber" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtbxcontactnumber" ErrorMessage="*mandatory" CssClass="auto-style12"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtbxcontactnumber" ErrorMessage="*Invalid MobileNumber" ValidationExpression="^[789]\d{9}$" CssClass="auto-style12"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">Email Id:</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtbxemailid" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtbxemailid" ErrorMessage="*mandatory" CssClass="auto-style12"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtbxemailid" ErrorMessage="*Invalid EmailID" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" CssClass="auto-style12"></asp:RegularExpressionValidator>
&nbsp; </td>
                </tr>
                <tr>
                    <td class="auto-style8">Car:</td>
                    <td class="auto-style3">
                        <asp:DropDownList ID="ddlcar" runat="server" AutoPostBack="True">
                            <asp:ListItem>Scorpio</asp:ListItem>
                            <asp:ListItem>Tata Sumo</asp:ListItem>
                            <asp:ListItem>Toyota Qualis</asp:ListItem>
                            <asp:ListItem>Esteem</asp:ListItem>
                            <asp:ListItem>Honda City</asp:ListItem>
                            <asp:ListItem>Hyndai Accent</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ddlcar" ErrorMessage="*mandatory" CssClass="auto-style12"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">Place:</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtbxplace" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*mandatory" ControlToValidate="txtbxplace" CssClass="auto-style12"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">Date Of Hire:</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtbxdateofhire" runat="server" TextMode="Date"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*mandatory" ControlToValidate="txtbxdateofhire" CssClass="auto-style12"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" style="font-weight: 700; font-style: italic" />
&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" Text="Cancel" style="font-weight: 700; font-style: italic" />
                    </td>
                    <td class="auto-style3" colspan="2">
                        <asp:Label ID="lblstatus" runat="server" CssClass="auto-style7"></asp:Label>
                        <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </b>
                        <asp:Label ID="lblid" runat="server" CssClass="auto-style7"></asp:Label>
                        <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </b>
                        <asp:Button ID="btncardetails" runat="server" Text="CAR DETAILS" Visible="false" OnClick="btncardetails_Click" CssClass="auto-style7" />
                    </td>
                </tr>
            </table>
            <p>             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style14">&nbsp;</span><span class="auto-style16"> </span><span class="auto-style15"><em class="auto-style13">Now both your car rental business and website can run smoothly, by accepting online reservations and managing your entire fleet, all from one single control panel. By offering highly-customizable booking system and software, your customers will be able to get exact quotes, see vehicle availability, and make online reservations from your website, with just a few clicks.

This system is user friendly fast and easy to use and structured to the specific needs for independent car and van rental agencies at affordable prices. As needs change agencies are guaranteed continuous support, improvements and upgrades. Check control panel Main features. </em></span> </p>
        </div>
    </form>
</body>
</html>
