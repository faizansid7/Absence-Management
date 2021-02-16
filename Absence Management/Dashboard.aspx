<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Absence_Management.Dashboard" %>

<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Dashboard</title>
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link href="https://fonts.googleapis.com/css2?family=Oxygen&display=swap" rel="stylesheet" />
    <link type="text/css" rel="Stylesheet" href="StyleSheet.css" />
   
    <style type="text/css">
        #form1 {
            height: 702px;
            margin-bottom: 5px;
        }
    </style>
   
</head>
<body>
    <form id="form1" runat="server">
        <telerik:RadScriptManager ID="RadScriptManager1" runat="server">
            <Scripts>
                <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.Core.js">
                </asp:ScriptReference>
                <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQuery.js">
                </asp:ScriptReference>
                <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQueryInclude.js">
                </asp:ScriptReference>
            </Scripts>
        </telerik:RadScriptManager>
        <div style="height: 157px">
            <telerik:RadContentTemplateTile runat="server" ID="PendingLeavessTile" Shape="Wide" BackColor="#3333ff" Style="border-radius: 17px; border: 0.5px solid gray; margin: 0 25px;">
                <ContentTemplate>
                    <asp:Image runat="server" ImageUrl="assets/member.png" Height="65px" Style="padding: 10px 0px 0px 20px;" />
                    <telerik:RadLabel runat="server" Font-Size="30px" Style="padding: 15px 0 0 60px; color: white;">25</telerik:RadLabel>
                    <br />
                    <telerik:RadLabel runat="server" Font-Size="18px" Style="padding-left: 20px; padding-top:0px; color: white;">Pending Requests </telerik:RadLabel>
                </ContentTemplate>
            </telerik:RadContentTemplateTile>
        </div>  

        
        <telerik:RadTileList runat="server"  ID="TileList1" RenderMode="Lightweight" SelectionMode="None" EnableDragAndDrop="false">
            <Groups >
                <telerik:TileGroup>
                <telerik:RadContentTemplateTile runat="server" ID="RequestMonthly" Shape="Square" BackColor="white" BorderColor="gray" style="border-radius:12px;">
                    <ContentTemplate>
                        <div style="text-align: center;">
                            <asp:Image runat="server" Height="40px" style="padding-bottom:5px;" ImageUrl="assets/request.png" />
                            <div><telerik:RadLabel runat="server" Text="20" Font-Size="XX-Large" style="padding-bottom:10px;" /></div>
                            <div><label style="font-size:medium;">Monthly Requests</label></div>
                        </div>
                    </ContentTemplate>
                </telerik:RadContentTemplateTile>
                <telerik:RadContentTemplateTile runat="server" ID="RequestYearly" Shape="Square" BackColor="white" BorderColor="gray" style="border-radius:12px;">
                    <ContentTemplate>
                        <div style="text-align: center;">
                            <asp:Image runat="server" Height="40px" style="padding-bottom:5px;" ImageUrl="assets/request.png" />
                            <div><telerik:RadLabel runat="server" Text="80" Font-Size="XX-Large" style="padding-bottom:10px;" /></div>
                            <div><label style="font-size:medium;">Annual Requests</label></div>
                        </div>
                    </ContentTemplate>
                </telerik:RadContentTemplateTile>
        
                <telerik:RadContentTemplateTile runat="server" ID="ApprovedMonthly" Shape="Square" BackColor="white" BorderColor="gray" style="border-radius:12px;">
                    <ContentTemplate>
                        <div style="text-align: center;">
                            <asp:Image runat="server" Height="40px" style="padding-bottom:5px;" ImageUrl="assets/thumbs-up.png" />
                            <div><telerik:RadLabel runat="server" Text="15" Font-Size="XX-Large" style="padding-bottom:10px;" /></div>
                            <div><label style="font-size:larger;">Monthly Approved</label></div>
                        </div>
                    </ContentTemplate>
                </telerik:RadContentTemplateTile>
                <telerik:RadContentTemplateTile runat="server" ID="ApprovedYearly" Shape="Square" BackColor="white" BorderColor="gray" style="border-radius:12px;">
                    <ContentTemplate>
                        <div style="text-align: center;">
                            <asp:Image runat="server" Height="40px" style="padding-bottom:5px;" ImageUrl="assets/thumbs-up.png" />
                            <div><telerik:RadLabel runat="server" Text="45" Font-Size="XX-Large" style="padding-bottom:10px;" /></div>
                            <div><label style="font-size:medium;">Annual Approved</label></div>
                        </div>
                    </ContentTemplate>
                </telerik:RadContentTemplateTile>
        
                <telerik:RadContentTemplateTile runat="server" ID="RejectedMonthly" Shape="Square" BackColor="white" BorderColor="gray" style="border-radius:12px;">
                    <ContentTemplate>
                        <div style="text-align: center;">
                            <asp:Image runat="server" Height="40px" style="padding-bottom:5px;" ImageUrl="assets/thumbs-down.png" />
                            <div><telerik:RadLabel runat="server" Text="12" Font-Size="XX-Large" style="padding-bottom:10px;" /></div>
                            <div><label style="font-size:medium;">Monthly Rejected</label></div>
                        </div>
                    </ContentTemplate>
                </telerik:RadContentTemplateTile>
                <telerik:RadContentTemplateTile runat="server" ID="RejectedYearly" Shape="Square" BackColor="white" BorderColor="gray" style="border-radius:12px;">
                    <ContentTemplate>
                        <div style="text-align: center;">
                            <asp:Image runat="server" Height="40px" style="padding-bottom:5px;" ImageUrl="assets/thumbs-down.png" />
                            <div><telerik:RadLabel runat="server" Text="46" Font-Size="XX-Large" style="padding-bottom:10px;" /></div>
                            <div><label style="font-size:medium;">Annual Rejected</label></div>
                        </div>
                    </ContentTemplate>
                </telerik:RadContentTemplateTile>
                </telerik:TileGroup>
            </Groups>
        </telerik:RadTileList>

        


        <div style="height: 162px; margin-bottom: 0px">
        <telerik:RadContentTemplateTile runat="server" ID="TotalEmployee" Shape="Wide" BackColor="LightGray" Style="border-radius:17px; margin:0 25px;">
            <ContentTemplate>
                <asp:Image runat="server" ImageUrl="assets/employee.png" ImageAlign="Middle" Height="120px" />
                <telerik:RadLabel runat="server" Font-Bold="true" Font-Size="18px" Text="150 Employees"></telerik:RadLabel>
            </ContentTemplate>
        </telerik:RadContentTemplateTile>
        </div>
    
    <div style="height: 152px; margin: 0 25px;" >

        <telerik:RadContentTemplateTile runat="server" ID="RadContentTemplateTile1" Shape="Square" BackColor="tan" style="border-radius:12px;">
            <ContentTemplate>
                <div style="text-align: center;">
                    <asp:Image runat="server" Height="100px" ImageUrl="assets/HR.png" />
                    <div><telerik:RadLabel runat="server" Font-Size="Medium" ForeColor="white" Text="HR" /></div>
                </div>
            </ContentTemplate>
        </telerik:RadContentTemplateTile>
        <telerik:RadContentTemplateTile runat="server" ID="Template" Shape="Square" BackColor="#beadd3" style="border-radius:12px;">
            <ContentTemplate>
                <div style="text-align: center;">
                    <asp:Image runat="server" Height="80px" ImageUrl="assets/marketing.png" style="padding:12px 0 4px 0;" />
                    <telerik:RadLabel runat="server" Font-Size="medium" Text="Marketing" />
                </div>
            </ContentTemplate>
        </telerik:RadContentTemplateTile>
        <telerik:RadContentTemplateTile runat="server" ID="FinanceDept" Shape="square" BackColor="#ff9933" style="border-radius:12px">
            <ContentTemplate>
                <div style="text-align:center;">
                    <asp:Image runat="server" ImageUrl="assets/finance.png" Height="90px" style="padding:5px 0 0 0;" />
                    <telerik:RadLabel runat="server" Font-Size="Medium" Text="Finance" />
                 </div>
            </ContentTemplate>
        </telerik:RadContentTemplateTile>
        <telerik:RadContentTemplateTile runat="server" ID="RadContentTemplateTile2" Shape="square" BackColor="Purple" style="border-radius:12px">
            <ContentTemplate>
                <div style="text-align:center;">
                    <asp:Image runat="server" ImageUrl="assets/IT.png" Height="90px" style="padding:5px 0 0 0;" />
                    <div><label style="font-size:medium; color:white;">IT</label></div>
                </div>
            </ContentTemplate>
        </telerik:RadContentTemplateTile>

    </div>

    <div style="height: 402px;  margin:5px 25px; border:1px solid black;">
        <div>
            <telerik:RadHtmlChart ID="PieChartMonthly" runat="server" Width="600px" style="float:left; ">
                <Legend>
                    <Appearance Visible="true"></Appearance>
                </Legend>
                <PlotArea>
                    <Series>
                        <telerik:PieSeries StartAngle="90">
                            <LabelsAppearance Position="OutsideEnd" DataFormatString="{0}%" />
                            <TooltipsAppearance Visible="false" />
                            <SeriesItems>
                                <telerik:PieSeriesItem BackgroundColor="#ff0000" VisibleInLegend="true" Exploded="false" Name="HR" Y="30" />
                                <telerik:PieSeriesItem BackgroundColor="#ff6600" VisibleInLegend="true" Exploded="false" Name="IT" Y="25" />
                                <telerik:PieSeriesItem BackgroundColor="yellow" VisibleInLegend="true" Exploded="false" Name="Marketing" Y="25" />
                                <telerik:PieSeriesItem BackgroundColor="purple" VisibleInLegend="true" Exploded="false" Name="Finance" Y="20" />
                            </SeriesItems>
                        </telerik:PieSeries>
                    </Series>
                </PlotArea>
                <ChartTitle Text="Monthly Leaves">
                    <Appearance Visible="True">
                        <TextStyle Bold="true"  />
                    </Appearance>
                </ChartTitle>
            </telerik:RadHtmlChart>
        </div>
        <div >
        <telerik:RadHtmlChart runat="server" ID="PieChartYearly" Width="600px" style="float:right;">
            <Legend>
                <Appearance Visible="True">
                </Appearance>
            </Legend>
        <PlotArea>
            <Series>
                <telerik:PieSeries StartAngle="90">
                    <LabelsAppearance Position="OutsideEnd" DataFormatString="{0} %" />
                    <TooltipsAppearance Visible="false" />
                    <SeriesItems>
                        <telerik:PieSeriesItem BackgroundColor="#ff0000" VisibleInLegend="true" Exploded="false" Name="HR" Y="30" Visible="true" />
                        <telerik:PieSeriesItem BackgroundColor="#ff6600" VisibleInLegend="true" Exploded="false" Name="IT" Y="25" />
                        <telerik:PieSeriesItem BackgroundColor="yellow" VisibleInLegend="true" Exploded="false" Name="Marketing" Y="25" />
                        <telerik:PieSeriesItem BackgroundColor="purple" VisibleInLegend="true" Exploded="false" Name="Finance" Y="18" />
                    </SeriesItems>
                </telerik:PieSeries>
            </Series>
        </PlotArea>
        <ChartTitle Text="Yearly Leaves">
            <Appearance Visible="True">
                <TextStyle Bold="true"  />
            </Appearance>
        </ChartTitle>
        </telerik:RadHtmlChart>
        </div>
    </div>

        <telerik:RadGrid ID="RadGrid1" runat="server" AllowPaging="true" AllowFilteringByColumn="true" AllowSorting="true" OnNeedDataSource="RadGrid1_NeedDataSource">
            <MasterTableView AutoGenerateColumns="false" DataKeyNames="ID" >
                <Columns>
                    <telerik:GridBoundColumn AllowFiltering="true" DataField="ID" DataType="System.Int32" HeaderText="Employee Id" ReadOnly="true" UniqueName="ID"></telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="Name" DataType="System.String" HeaderText="Name" SortExpression="Name" ReadOnly="true" UniqueName="Name" FilterControlAltText="Filter Name column"></telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="Department" DataType="System.String" HeaderText="Department" ReadOnly="true" SortExpression="Department" UniqueName="Department" FilterControlAltText="Filter Department column"></telerik:GridBoundColumn>
                    
                </Columns>
            </MasterTableView>
        </telerik:RadGrid>

        <div style="height: 338px">
            <telerik:RadHtmlChart ID="RadHtmlChart1" runat="server" Transitions="true">
                <ChartTitle Text="Absence Ratio">
                    <Appearance Visible="True" Align="Center" Position="top" BackgroundColor="Transparent">
                        <TextStyle Bold="true" />
                    </Appearance>
                </ChartTitle>
                <Legend>
                    <Appearance BackgroundColor="Transparent" Position="Bottom" Visible="True">
                    </Appearance>
                </Legend>

                <PlotArea>
                    <Appearance FillStyle-BackgroundColor="Transparent"></Appearance>
                    <XAxis Visible="True" AxisCrossingValue="0" Step="1" Color="black" MajorTickType="Outside" MinorTickType="Outside" Reversed="false">
                        <Items>
                            <telerik:AxisItem LabelText="2000" />
                            <telerik:AxisItem LabelText="2001" />
                            <telerik:AxisItem LabelText="2002" />
                            <telerik:AxisItem LabelText="2003" />
                            <telerik:AxisItem LabelText="2004" />
                            <telerik:AxisItem LabelText="2005" />
                        </Items>
                        <LabelsAppearance DataFormatString="{0}" RotationAngle="0"></LabelsAppearance>
                        <TitleAppearance Position="Center" Text="Years" Visible="true"></TitleAppearance>
                    </XAxis>

                    <YAxis AxisCrossingValue="0" MaxValue="100" MinValue="0" Step="10" Color="black" MajorTickType="Outside" MajorTickSize="1" MinorTickSize="1" MinorTickType="Outside" Visible="True" Reversed="false">
                        <LabelsAppearance DataFormatString="{0}" Skip="0" Step="1" />
                        <TitleAppearance Position="Center" Text="Absences" Visible="true" />
                    </YAxis>
                    <Series>
                        <telerik:LineSeries MissingValues="Interpolate" Name="ratio">
                            <Appearance FillStyle-BackgroundColor="#33ccff"></Appearance>
                            <LabelsAppearance Position="Above" DataFormatString="{0}"></LabelsAppearance>
                            <LineAppearance LineStyle="Normal" Width="1" />
                            <MarkersAppearance MarkersType="Circle" BackgroundColor="#33ccff" Size="8" />
                            <SeriesItems>
                                <telerik:CategorySeriesItem Y="52" />
                                <telerik:CategorySeriesItem Y="20" />
                                <telerik:CategorySeriesItem Y="12" />
                                <telerik:CategorySeriesItem Y="4" />
                                <telerik:CategorySeriesItem Y="33" />
                                <telerik:CategorySeriesItem Y="62" />
                                <telerik:CategorySeriesItem Y="47" />
                            </SeriesItems>
                        </telerik:LineSeries>
                    </Series>
                </PlotArea>

            </telerik:RadHtmlChart>
        </div>

    </form>
       

        
        </body>
</html>
