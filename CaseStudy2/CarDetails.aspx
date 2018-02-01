<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CarDetails.aspx.cs" Inherits="CaseStudy2.CarDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 29%;
            z-index: 1;
            left: 887px;
            top: 93px;
            position: absolute;
            height: 179px;
            margin-bottom: 0px;
        }
        .auto-style2 {            color: #FFFFFF;
        }
        .auto-style3 {
            font-family: "Century Gothic";
        }
        .auto-style4 {
            color: #FFFFFF;
        }
        #form1 {
            height: 568px;
        }
        .auto-style5 {
            width: 1428px;
            height: 505px;
            margin-top: 0px;
        }
        .auto-style6 {
            font-family: Corbel;
            font-size: xx-large;
        }
        .auto-style7 {
            font-weight: bold;
            color: #FFFFFF;
        }
        .auto-style8 {
            width: 1332px;
            height: 508px;
        }
    </style>
</head>
<body style="height: 580px" >
    <form id="form1" runat="server">
    <div>
        <h1 style="background-color: #FF9900">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp; </span><span class="auto-style6"><em>Book Cars</em></span><img alt="" class="auto-style8" src="images/simple-wallpaper-2.jpg" /><img alt="" class="auto-style5" src="simple-wallpaper-2.jpg" /></h1>
    </div>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>&nbsp; </strong>&nbsp;
                 <br />
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btncheck" runat="server" Text="CHECK CARS " OnClick="btncheck_Click" style="z-index: 1; left: 28px; top: 71px; position: absolute; height: 25px; font-weight: 700" />
                 <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns = "false" Font-Names = "Arial" ShowHeader = "true" Font-Size = "10pt" AlternatingRowStyle-BackColor = "#C2D69B" Width="16px" Height="49px" style="margin-top: 9px; z-index: 1; left: 33px; top: 116px; position: absolute; height: 115px; width: 649px; color: #FFFFFF;" >
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
            <table class="auto-style1">
                <tr>
                    <td class="auto-style7">Vehicle Type:</td>
                    <td>
                        <asp:Label ID="lblvehicletype" runat="server" style="color: #FFFFFF" ></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Vehicle Name:</td>
                    <td>
                        <asp:Label ID="lblcar" runat="server" style="color: #FFFFFF"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Fuel Required:</td>
                    <td>
                        <asp:DropDownList ID="ddlfuel" runat="server" AutoPostBack="True" Height="16px" Width="76px">
                            <asp:ListItem>Petrol</asp:ListItem>
                            <asp:ListItem>Diesel</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Seating Capacity:</td>
                    <td>
                        <asp:Label ID="lblseatingcapacity" runat="server" style="color: #FFFFFF"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Rent Mode:</td>
                    <td>
                        <asp:DropDownList ID="ddlrentmode" runat="server" AutoPostBack="True" Height="16px" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged" Width="75px">
                            <asp:ListItem>Per Day</asp:ListItem>
                            <asp:ListItem>Per Kilo-Meter</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Availiable Tourist Destination:</td>
                    <td>
                        <asp:DropDownList ID="ddldestination" runat="server" AutoPostBack="True" Height="16px" Width="119px">
                            <asp:ListItem>Srisailam</asp:ListItem>
                            <asp:ListItem>Nagarjunasagar</asp:ListItem>
                            <asp:ListItem>Tirupathi</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="2">
                        <asp:Button ID="btncalculate" runat="server" Text="Calculate" OnClick="btncalculate_Click" style="font-weight: 700" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblsm" runat="server" CssClass="auto-style4" style="font-weight: 700"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;ID:<asp:Label ID="lblid" runat="server" CssClass="auto-style4" style="font-weight: 700" ></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                </tr>
            </table>

      
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnbook" runat="server" Text="REQUEST" style="z-index: 1; left: 1036px; top: 311px; position: absolute; margin-bottom: 5px; font-weight: 700;" OnClick="btnbook_Click" />
       
    </form>
</body>
</html>
