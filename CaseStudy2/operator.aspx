<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="operator.aspx.cs" Inherits="CaseStudy2._operator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 106%;
            z-index: 1;
            left: 4px;
            top: 23px;
            position: absolute;
            height: 652px;
        }
        .auto-style2 {
            font-family: "Tempus Sans ITC";
            font-size: x-large;
        }
        .auto-style3 {
            width: 139px;
        }
        .auto-style4 {
            width: 99%;
            height: 199px;
        }
        .auto-style5 {
        }
        .auto-style6 {
            color: #009933;
            font-weight: 700;
        }
        .auto-style7 {
            width: 838px;
            height: 694px;
        }
    </style>
</head>
<body style="height: 553px; width: 912px; z-index: 1; left: 216px; top: 8px; position: absolute;">
        <form id="form1" runat="server">
            <img src="images/OperatorLogoLarge.jpg" style="height: 89px; width: 833px; margin-left: 0px" />
        <table class="auto-style1">
            <tr>
                <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style2"><strong style="font-family: 'Segoe Marker'; font-size: xx-large; color: #008000;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</strong></span></td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Button ID="btndisplay" runat="server" Height="50px" Text="Display Car Details" Width="131px" OnClick="btndisplay_Click" CssClass="auto-style6" />
                </td>
                <td>
                    <asp:Panel style="border: 5px solid #000; " ID="Panel2" runat="server" Height="199px" Width="670px">    
                       <div style ="height:200px; width:669px; overflow:auto;">
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns = "false" Font-Names = "Arial" ShowHeader = "true" Font-Size = "11pt" AlternatingRowStyle-BackColor = "#C2D69B" >
   <Columns>
    <asp:BoundField ItemStyle-Width = "100px" DataField = "vehicleType" HeaderText="VehicleType"/>
    <asp:BoundField ItemStyle-Width = "100px" DataField = "vehicleName" HeaderText="VehicleName"/>
    <asp:BoundField ItemStyle-Width = "100px" DataField = "FuelRequired" HeaderText="Fuel"/>
    <asp:BoundField ItemStyle-Width = "50px" DataField = "Id" HeaderText="Id" />
       <asp:BoundField ItemStyle-Width = "100px" DataField = "destination" HeaderText="Destination"/>
       <asp:BoundField ItemStyle-Width = "100px" DataField = "rentMode" HeaderText="RentMode"/>
       <asp:BoundField ItemStyle-Width = "100px" DataField = "seatingCapacity" HeaderText="SeatingCap"/>
       <asp:BoundField ItemStyle-Width = "50px" DataField = "numb" HeaderText="Numb"/>
       <asp:BoundField ItemStyle-Width = "50px" DataField = "sm" HeaderText="BkId"/>
   </Columns>
</asp:GridView>
     </div>
</asp:Panel>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Button ID="btnaddcar" runat="server" Height="50px" Text="Add Car" Width="130px" OnClick="btnaddcar_Click" CssClass="auto-style6" />
                </td>
                <td>
                    <asp:Panel style="border: 5px solid #000; " ID="Panel1" runat="server" Height="199px" Width="518px">
                        <table class="auto-style4">
                            <tr>
                                <td class="auto-style5">Vehicle Type:</td>
                                <td>
                                    <asp:DropDownList ID="ddlvt" runat="server" AppendDataBoundItems="False" AutoPostBack="True" Width="77px" OnSelectedIndexChanged="ddlvt_SelectedIndexChanged1" >
                                        <asp:ListItem>Van</asp:ListItem>
                                        <asp:ListItem>Car</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style5">Vehicle Name:</td>
                                <td>
                                    <asp:DropDownList ID="ddlvn" AppendDataBoundItems="False" runat="server">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style5">Fuel Required:</td>
                                <td>
                                    <asp:DropDownList ID="ddlfr" runat="server" AutoPostBack="True">
                                        <asp:ListItem>Petrol</asp:ListItem>
                                        <asp:ListItem>Diesel</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style5">Seating Capacity:</td>
                                <td>
                                    <asp:DropDownList ID="ddlsc" runat="server" AutoPostBack="True" Height="16px" Width="73px" OnSelectedIndexChanged="ddlsc_SelectedIndexChanged1" >
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style5">Rent mode:</td>
                                <td>
                                    <asp:DropDownList ID="ddlrm" runat="server" AutoPostBack="True" >
                                        <asp:ListItem>Per Day</asp:ListItem>
                                        <asp:ListItem>Per Location</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style5">Destination:</td>
                                <td>
                                    <asp:DropDownList ID="ddld" runat="server" AutoPostBack="True" Height="16px" Width="119px" >
                                        <asp:ListItem>Srisailam</asp:ListItem>
                                        <asp:ListItem>Nagarjunasagar</asp:ListItem>
                                        <asp:ListItem>Tirupathi</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style5" colspan="2">
                                    <asp:Label ID="lblmsg" runat="server" style="font-weight: 700; color: #000000" ></asp:Label>
                                </td>
                            </tr>
                        </table>

                    </asp:Panel>
                    
                </td>
            </tr>
             <tr>
                <td class="auto-style3">
                    <asp:Button ID="btndeletecar" runat="server" Height="50px" Text="Delete Car" Width="129px" OnClick="btndeletecar_Click" style="color: #FF3300; font-weight: 700" />
                </td>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Enter Vehicle SM&nbsp;:&nbsp;&nbsp;<asp:TextBox ID="txtbxdel" runat="server" style="z-index: 1; left: 292px; top: 602px; position: absolute; height: 22px; margin-bottom: 0px; width: 34px;" OnTextChanged="txtbxdel_TextChanged"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;
                    <asp:Label ID="lbldelmsg" runat="server" style="font-weight: 700; color: #000000"></asp:Label>
                </td>
            </tr>
        </table>
        </form>
        <p>
            <img alt="" class="auto-style7" src="images/bck1.jpg" /></p>
</body>
</html>
