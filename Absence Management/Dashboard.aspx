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
        .wrapper {
            height: 179px;
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
        
        <div class="wrapper" >
            <telerik:RadContentTemplateTile runat="server" ID="PendingLeavessTile" Height="130px" Width="250px" Shape="Wide" BorderColor="gray" BorderWidth="1" BackColor="#273033" style="top: 0px; left: 1px">
                <ContentTemplate>
                    <asp:Image runat="server" ImageUrl="assets/member.png" Height="65px" ImageAlign="AbsMiddle" Style="padding: 10px 0px 0px 20px;" />
                    <telerik:RadLabel runat="server" Font-Size="30px" Style="padding: 25px 0 0 50px; color: white;" Text="25"></telerik:RadLabel>
                    <br />
                    <telerik:RadLabel runat="server" Font-Size="18px" Style="padding-left: 20px; padding-top:0px; color: white;">Pending Requests </telerik:RadLabel>
                </ContentTemplate>  
            </telerik:RadContentTemplateTile>      
            <div  class="tileList" style="margin:19px 10px 10px 10px; height: 158px; float:left;">   
                <telerik:RadContentTemplateTile runat="server" ID="RequestMonthly" Height="130px" Width="200px" Shape="Square" BackColor="#273033" BorderColor="gray" style="margin:0 0 0 2.33rem;border-radius:12px;">
                    <ContentTemplate>
                        <div style="text-align: center;">
                            <asp:Image runat="server" Height="40px" style="padding-bottom:5px;" ImageUrl="assets/request.png" />
                            <div><telerik:RadLabel runat="server" Text="20" Font-Size="XX-Large" style="color:white; padding-bottom:10px;" /></div>
                            <div><label style="color:white; font-size:larger;">Monthly Requests</label></div>
                        </div>
                    </ContentTemplate>
                    <PeekTemplate>
                        <div style="text-align: center; background-color:#273033;">
                            <asp:Image runat="server" Height="40px" style="padding-bottom:5px;" ImageUrl="assets/request.png" />
                            <div><telerik:RadLabel runat="server" Text="80" Font-Size="XX-Large" style="color:white;padding-bottom:10px;" /></div>
                            <div style="padding-bottom:10px;"><label style="color:white;font-size:larger;">Annual Requests</label></div>
                        </div>
                    </PeekTemplate>
                    <PeekTemplateSettings Animation="slide" HidePeekTemplateOnMouseOut="true" ShowPeekTemplateOnMouseOver="true" />
                </telerik:RadContentTemplateTile>
                       
                <telerik:RadContentTemplateTile runat="server" ID="ApprovedMonthly" Height="130px" Width="200" Shape="Square" BackColor="#273033" BorderColor="gray" style="border-radius:12px; margin: 0 2.4rem;">
                    <ContentTemplate>
                        <div style="text-align: center;">
                            <asp:Image runat="server" Height="40px" style="padding-bottom:5px;" ImageUrl="assets/thumbs-up.png" />
                            <div><telerik:RadLabel runat="server" Text="15" Font-Size="XX-Large" style="color:white;padding-bottom:10px;" /></div>
                            <div><label style="font-size:larger;color:white;">Monthly Approved</label></div>
                        </div>
                    </ContentTemplate>
                    <PeekTemplate>
                        <div style="text-align: center; background-color:#273033;">
                            <asp:Image runat="server" Height="40px" style="padding-bottom:5px;" ImageUrl="assets/thumbs-up.png" />
                            <div><telerik:RadLabel runat="server" Text="45" Font-Size="XX-Large" style="color:white;padding-bottom:10px;" /></div>
                            <div style="padding-bottom:10px;"><label style="font-size:larger;color:white;">Annual Approved</label></div>
                        </div>
                    </PeekTemplate>
                    <PeekTemplateSettings Animation="Slide" HidePeekTemplateOnMouseOut="true" ShowPeekTemplateOnMouseOver="true" />
                </telerik:RadContentTemplateTile>
                       
                <telerik:RadContentTemplateTile runat="server" ID="RejectedMonthly" Height="130px" Width="200" Shape="Square" BackColor="#273033" BorderColor="gray" style="border-radius:12px; margin: 0 2.3rem 0 0">
                    <ContentTemplate>
                        <div style="text-align: center;">
                            <asp:Image runat="server" Height="40px" style="padding-bottom:5px;" ImageUrl="assets/thumbs-down.png" />
                            <div><telerik:RadLabel runat="server" Text="12" Font-Size="XX-Large" style="padding-bottom:10px;color:white;" /></div>
                            <div><label style="font-size:larger;color:white;">Monthly Rejected</label></div>
                        </div>
                    </ContentTemplate>
                    <PeekTemplate>
                        <div style="text-align: center; background-color:#273033;">
                            <asp:Image runat="server" Height="40px" style="padding-bottom:5px;" ImageUrl="assets/thumbs-down.png" />
                            <div><telerik:RadLabel runat="server" Text="46" Font-Size="XX-Large" style="padding-bottom:10px;color:white;" /></div>
                            <div style="padding-bottom:10px;"><label style="font-size:larger;color:white;">Annual Rejected</label></div>
                        </div>
                    </PeekTemplate>
                    <PeekTemplateSettings Animation="Slide" HidePeekTemplateOnMouseOut="true" ShowPeekTemplateOnMouseOver="true" />
                </telerik:RadContentTemplateTile>
            </div>  
            <div style="height: 162px; margin-bottom: 10px; float:right;">
                <telerik:RadContentTemplateTile runat="server" ID="TotalEmployee" Shape="Wide" Height="130" width="250" BorderWidth="1px" BorderColor="Gray" BorderStyle="solid" BackColor="#273033" Style="border-radius:12px; margin:20px 20px 0 0;">
                    <ContentTemplate>
                        <asp:Image runat="server" ImageUrl="assets/employee.png" ImageAlign="AbsMiddle" Height="90px" Style="padding: 5px 0px 0px 10px;" />
                        <telerik:RadLabel runat="server" Font-Bold="false" Font-Size="30px" Text="150" ForeColor="white" style="padding-left:20px;" ></telerik:RadLabel>
                        <telerik:RadLabel runat="server" Font-Bold="false" Font-Size="18px" Text="Employees" ForeColor="white" style="padding:0 50px 20px 20px; "></telerik:RadLabel>

                    </ContentTemplate>
                </telerik:RadContentTemplateTile>
            </div>
        </div>
        <div>
        <telerik:RadTileList RenderMode="Lightweight" runat="server" TileRows="2" ID="DepartmentTileList" SelectionMode="None" EnableDragAndDrop="false" style="margin-bottom: 14px">
            <Groups>
                <telerik:TileGroup Title="Department" >
                    <telerik:RadContentTemplateTile runat="server" ID="RadContentTemplateTile1" Height="120" Width="120" Shape="Square" BackColor="tan" style="border-radius:12px;">
                        <ContentTemplate>
                            <div style="text-align: center;">
                                <asp:Image runat="server" Height="90px" ImageUrl="assets/HR.png" />
                                <div><telerik:RadLabel runat="server" Font-Size="larger" ForeColor="white" Text="HR" /></div>
                            </div>
                        </ContentTemplate>
                    </telerik:RadContentTemplateTile>
                    <telerik:RadContentTemplateTile runat="server" ID="Template"  Height="120" Width="120" Shape="Square" BackColor="#beadd3" style="border-radius:12px;">
                        <ContentTemplate>
                            <div style="text-align: center;">
                                <asp:Image runat="server" Height="70px" ImageUrl="assets/marketing.png" style="padding:12px 0 4px 0;" />
                                <telerik:RadLabel runat="server" Font-Size="larger" Text="Marketing" />
                            </div>
                        </ContentTemplate>
                    </telerik:RadContentTemplateTile>
                    <telerik:RadContentTemplateTile runat="server" ID="FinanceDept"  Height="120" Width="120" Shape="square" BackColor="#ff9933" style="border-radius:12px">
                        <ContentTemplate>
                            <div style="text-align:center;">
                                <asp:Image runat="server" ImageUrl="assets/finance.png" Height="80px" style="padding:5px 0 0 0;" />
                                <telerik:RadLabel runat="server" Font-Size="larger" Text="Finance" />
                             </div>
                        </ContentTemplate>
                    </telerik:RadContentTemplateTile>
                    <telerik:RadContentTemplateTile runat="server" ID="ITDept"  Height="120" Width="120"  Shape="square" BackColor="Purple" style="border-radius:12px;">
                        <ContentTemplate>
                            <div style="text-align:center;">
                                <asp:Image runat="server" ImageUrl="assets/IT.png" Height="80px" style="padding:5px 0 0 0;" />
                                <div><label style="font-size:larger; color:white;">IT</label></div>
                            </div>
                        </ContentTemplate>
                    </telerik:RadContentTemplateTile>
                </telerik:TileGroup>
            </Groups>
        </telerik:RadTileList>

        <telerik:RadHtmlChart ID="RadHtmlChart2" runat="server" Width="300px" Height="300" >
                <Legend>
                    <Appearance Visible="true" Position="bottom" >
                        <TextStyle Color="white" />
                    </Appearance>
                </Legend>
                <PlotArea>
                    <Series>
                        <telerik:PieSeries StartAngle="90">
                            <LabelsAppearance Position="OutsideEnd" DataFormatString="{0}%" Color="white" />
                            <TooltipsAppearance Visible="false" />
                            <SeriesItems>
                                <telerik:PieSeriesItem BackgroundColor="#B7BC9D" VisibleInLegend="true" Exploded="false" Name="HR" Y="30" />
                                <telerik:PieSeriesItem BackgroundColor="#DA5E3E" VisibleInLegend="true" Exploded="false" Name="IT" Y="25" />
                                <telerik:PieSeriesItem BackgroundColor="#D2A685" VisibleInLegend="true" Exploded="false" Name="Marketing" Y="25" />
                                <telerik:PieSeriesItem BackgroundColor="#804A50" VisibleInLegend="true" Exploded="false" Name="Finance" Y="20" />
                            </SeriesItems>
                        </telerik:PieSeries>
                    </Series>
                </PlotArea>
                <ChartTitle Text="Monthly Leaves">
                    <Appearance Visible="True">
                        <TextStyle Bold="true" Color="white" />
                    </Appearance>
                </ChartTitle>
            </telerik:RadHtmlChart>
        <telerik:RadHtmlChart runat="server" ID="RadHtmlChart3"  Width="300px" Height="300">
            <Legend>
                <Appearance Visible="True" Position="Bottom" >
                    <TextStyle Color="white" />
                </Appearance>
            </Legend>
        <PlotArea>
            <Series>
                <telerik:PieSeries StartAngle="90">
                    <LabelsAppearance Position="OutsideEnd" DataFormatString="{0} %"  Color="white"/>
                    <TooltipsAppearance Visible="false" />
                    <SeriesItems>
                        <telerik:PieSeriesItem BackgroundColor="#B7BC9D" VisibleInLegend="true" Exploded="false" Name="HR" Y="30" Visible="true" />
                        <telerik:PieSeriesItem BackgroundColor="#DA5E3E" VisibleInLegend="true" Exploded="false" Name="IT" Y="25" />
                        <telerik:PieSeriesItem BackgroundColor="#D2A685" VisibleInLegend="true" Exploded="false" Name="Marketing" Y="25" />
                        <telerik:PieSeriesItem BackgroundColor="#804A50" VisibleInLegend="true" Exploded="false" Name="Finance" Y="18" />
                    </SeriesItems>
                </telerik:PieSeries>
            </Series>
        </PlotArea>
        <ChartTitle Text="Yearly Leaves">
            <Appearance Visible="True">
                <TextStyle Bold="true" Color="white"  />
            </Appearance>
        </ChartTitle>
        </telerik:RadHtmlChart>
                

            <telerik:RadHtmlChart ID="AbsenceRatioGraph" runat="server" Transitions="true" Height="300" Width="370"  >
                <ChartTitle Text="Absence Ratio">
                    <Appearance Visible="True" Align="Center" Position="top" BackgroundColor="Transparent">
                        <TextStyle Bold="true" Color="white" />
                    </Appearance>
                </ChartTitle>
                <Legend>
                    <Appearance BackgroundColor="Transparent" Position="Bottom" Visible="false" >
                        <TextStyle Color="white" />
                    </Appearance>
                </Legend>

                <PlotArea>
                    
                    <Appearance FillStyle-BackgroundColor="Transparent">
                       
                    </Appearance>
                    <XAxis Visible="true" AxisCrossingValue="0" Step="1" Color="white" MajorTickType="None" MinorTickType="None" Reversed="false">
                        <MajorGridLines Color="transparent" />
                        <MinorGridLines Color="Transparent" />
                        <Items>
                            <telerik:AxisItem LabelText="2000" /> 
                            <telerik:AxisItem LabelText="2001" />
                            <telerik:AxisItem LabelText="2002" />
                            <telerik:AxisItem LabelText="2003" />
                            <telerik:AxisItem LabelText="2004" />
                            <telerik:AxisItem LabelText="2005" />
                            <telerik:AxisItem LabelText="2006" />
                        </Items>
                        <LabelsAppearance DataFormatString="{0}" RotationAngle="0"></LabelsAppearance>
                        <TitleAppearance Position="Center" Text="Years" Visible="true"></TitleAppearance>
                    </XAxis>

                    <YAxis AxisCrossingValue="0" MaxValue="100" MinValue="0" Step="10" Color="white" MajorTickType="none" MinorTickType="none" Visible="True" Reversed="false">
                        <MajorGridLines Color="transparent" />
                        <MinorGridLines Color="Transparent" />
                        <LabelsAppearance DataFormatString="{0}" Skip="0" Step="1" Visible="false"/>
                        <TitleAppearance Position="Center" Text="Absences" Visible="true" />
                    </YAxis>
                    <Series>
                        <telerik:LineSeries MissingValues="Interpolate"  Name="ratio">
                            <Appearance FillStyle-BackgroundColor="#33ccff"></Appearance>
                            <LabelsAppearance Position="Above" DataFormatString="{0}">
                                <TextStyle Color="White" />
                            </LabelsAppearance>
                            <LineAppearance LineStyle="Smooth" Width="1" />
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
        <div>
            <asp:TextBox runat="server" Text="Sample Text"></asp:TextBox>
      <%--   <telerik:RadGrid ID="RadGrid1" runat="server" AllowPaging="true" Width="350" AllowFilteringByColumn="false" AllowSorting="true" OnNeedDataSource="RadGrid1_NeedDataSource" style="margin-right:0">
            <MasterTableView AutoGenerateColumns="false" DataKeyNames="ID" >
                <Columns>
                    <telerik:GridBoundColumn AllowFiltering="true" DataField="ID" DataType="System.Int32" HeaderText="Employee Id" ReadOnly="true" UniqueName="ID"></telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="Name" DataType="System.String" HeaderText="Name" SortExpression="Name" ReadOnly="true" UniqueName="Name" FilterControlAltText="Filter Name column"></telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="Department" DataType="System.String" HeaderText="Department" ReadOnly="true" SortExpression="Department" UniqueName="Department" FilterControlAltText="Filter Department column"></telerik:GridBoundColumn>                    
                </Columns>
            </MasterTableView>
        </telerik:RadGrid> --%>
        </div>

    </form>
       

        
        </body>
</html>
