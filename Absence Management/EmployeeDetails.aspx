<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeDetails.aspx.cs" Inherits="Absence_Management.EmployeeDetails" %>

<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <telerik:RadScriptManager ID="RadScriptManager1" Runat="server">
            <Scripts>
                <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.Core.js">
                </asp:ScriptReference>
                <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQuery.js">
                </asp:ScriptReference>
                <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQueryInclude.js">
                </asp:ScriptReference>
            </Scripts>
        </telerik:RadScriptManager>

        <div style="height: 154px; margin-bottom: 8px">
        <telerik:RadContentTemplateTile runat="server" ID="TotalLeaves" shape="Wide" BackColor="White" BorderColor="Gray" style="border-radius:12px; top: -1px; left: 0px;">
            <ContentTemplate>
            <div>
                <asp:Image runat="server" ImageAlign="Middle" Height="80px" Style="padding:10px 0 5px 10px;" ImageUrl="assets/AnnualLeave.png" />
                <telerik:RadLabel runat="server" Text="50" Font-Bold="true" Font-Size="XX-Large" Style="padding:0 0 0 50px ;" />
                <div style="padding:10px 0 0 10px; text-align:center;"><telerik:RadLabel runat="server" Font-Size="large" Text="Annual Leaves"></telerik:RadLabel></div>
            </div>
            </ContentTemplate>
        </telerik:RadContentTemplateTile>
        <telerik:RadContentTemplateTile runat="server" ID="MonthlyLeaves" shape="Wide" BackColor="White" BorderColor="Gray" style="border-radius:12px;">
            <ContentTemplate>
            <div>
                <asp:Image runat="server" ImageAlign="Middle" Height="80px" Style="padding:10px 0 5px 10px;" ImageUrl="assets/AnnualLeave.png" />
                <telerik:RadLabel runat="server" Text="5" Font-Bold="true" Font-Size="XX-Large" Style="padding:0 0 0 50px ;" />
                <div style="padding:10px 0 0 10px; text-align:center;"><telerik:RadLabel runat="server" Font-Size="large" Text="Monthly Leaves"></telerik:RadLabel></div>
            </div>
            </ContentTemplate>
        </telerik:RadContentTemplateTile>
        </div>

        <div style="height: 314px; margin-bottom: 8px">
        <telerik:RadContentTemplateTile runat="server" ID="PaidAnnual" shape="Square" BackColor="White" BorderColor="Gray" style="border-radius:12px;">
            <ContentTemplate>
            <div style="text-align: center;">
                <asp:Image runat="server" Height="40px" Style="padding-bottom: 5px;" ImageUrl="assets/request.png" />
                <div><telerik:RadLabel runat="server" Text="34" Font-Size="XX-Large" Style="padding-bottom: 10px;" /></div>
                <div><telerik:RadLabel runat="server" Font-Size="larger" Text="Paid Annual Leaves"></telerik:RadLabel></div>
            </div>
            </ContentTemplate>
        </telerik:RadContentTemplateTile>
        <telerik:RadContentTemplateTile runat="server" ID="PaidMonthly" shape="Square" BackColor="White" BorderColor="Gray" style="border-radius:12px;">
            <ContentTemplate>
            <div style="text-align: center;">
                <asp:Image runat="server" Height="40px" Style="padding-bottom: 5px;" ImageUrl="assets/request.png" />
                <div><telerik:RadLabel runat="server" Text="2" Font-Size="XX-Large" Style="padding-bottom: 10px;" /></div>
                <div><telerik:RadLabel runat="server" Font-Size="Larger" Text="Paid Monthly Leaves"></telerik:RadLabel></div>
            </div>
            </ContentTemplate>
        </telerik:RadContentTemplateTile>
        <telerik:RadContentTemplateTile runat="server" ID="UnpaidAnnual" shape="Square" BackColor="White" BorderColor="Gray" style="border-radius:12px;">
            <ContentTemplate>
            <div style="text-align: center;">
                <asp:Image runat="server" Height="40px" Style="padding-bottom: 5px;" ImageUrl="assets/request.png" />
                <div><telerik:RadLabel runat="server" Text="12" Font-Size="XX-Large" Style="padding-bottom: 10px;" /></div>
                <div><telerik:RadLabel runat="server" Font-Size="larger" Text="Unpaid Annual Leaves"></telerik:RadLabel></div>
            </div>
            </ContentTemplate>
        </telerik:RadContentTemplateTile>
        <telerik:RadContentTemplateTile runat="server" ID="UnpaidMonthly" shape="Square" BackColor="White" BorderColor="Gray" style="border-radius:12px;">
            <ContentTemplate>
            <div style="text-align: center;">
                <asp:Image runat="server" Height="40px" Style="padding-bottom: 5px;" ImageUrl="assets/request.png" />
                <div><telerik:RadLabel runat="server" Text="2" Font-Size="XX-Large" Style="padding-bottom: 10px;" /></div>
                <div><telerik:RadLabel runat="server" Font-Size="larger" Text="Unpaid Monthly Leaves"></telerik:RadLabel></div>
            </div>
            </ContentTemplate>
        </telerik:RadContentTemplateTile>
        <telerik:RadContentTemplateTile runat="server" ID="AnnualSick" shape="Square" BackColor="White" BorderColor="Gray" style="border-radius:12px;">
            <ContentTemplate>
            <div style="text-align: center;">
                <asp:Image runat="server" Height="40px" Style="padding-bottom: 5px;" ImageUrl="assets/request.png" />
                <div><telerik:RadLabel runat="server" Text="20" Font-Size="XX-Large" Style="padding-bottom: 10px;" /></div>
                <div><telerik:RadLabel runat="server" Font-Size="larger" Text="Annual Sick Leaves"></telerik:RadLabel></div>
            </div>
            </ContentTemplate>
        </telerik:RadContentTemplateTile>
        <telerik:RadContentTemplateTile runat="server" ID="MonthlySick" shape="Square" BackColor="White" BorderColor="Gray" style="border-radius:12px;">
            <ContentTemplate>
            <div style="text-align: center;">
                <asp:Image runat="server" Height="40px" Style="padding-bottom: 5px;" ImageUrl="assets/request.png" />
                <div><telerik:RadLabel runat="server" Text="2" Font-Size="XX-Large" Style="padding-bottom: 10px;" /></div>
                <div><telerik:RadLabel runat="server" Font-Size="larger" Text="Monthly Sick Leaves"></telerik:RadLabel></div>
            </div>
            </ContentTemplate>
        </telerik:RadContentTemplateTile>
        <telerik:RadContentTemplateTile runat="server" ID="ConsumedPaidAnnual" shape="Square" BackColor="White" BorderColor="Gray" style="border-radius:12px;">
            <ContentTemplate>
            <div style="text-align: center;">
                <asp:Image runat="server" Height="40px" Style="padding-bottom: 5px;" ImageUrl="assets/request.png" />
                <div><telerik:RadLabel runat="server" Text="20" Font-Size="XX-Large" Style="padding-bottom: 10px;" /></div>
                <div><telerik:RadLabel runat="server" Font-Size="larger" Text="Consumed Annual Paid Leaves"></telerik:RadLabel></div>
            </div>
            </ContentTemplate>
        </telerik:RadContentTemplateTile>
        <telerik:RadContentTemplateTile runat="server" ID="ConsumedPaidMonthly" shape="Square" BackColor="White" BorderColor="Gray" style="border-radius:12px;">
            <ContentTemplate>
            <div style="text-align: center;">
                <asp:Image runat="server" Height="40px" Style="padding-bottom: 5px;" ImageUrl="assets/request.png" />
                <div><telerik:RadLabel runat="server" Text="2" Font-Size="XX-Large" Style="padding-bottom: 10px;" /></div>
                <div><telerik:RadLabel runat="server" Font-Size="larger" Text="Consumed Monthly paid Leaves"></telerik:RadLabel></div>
            </div>
            </ContentTemplate>
        </telerik:RadContentTemplateTile>
        <telerik:RadContentTemplateTile runat="server" ID="ConsumedUnpaidAnnual" shape="Square" BackColor="White" BorderColor="Gray" style="border-radius:12px;">
            <ContentTemplate>
            <div style="text-align: center;">
                <asp:Image runat="server" Height="40px" Style="padding-bottom: 5px;" ImageUrl="assets/request.png" />
                <div><telerik:RadLabel runat="server" Text="12" Font-Size="XX-Large" Style="padding-bottom: 10px;" /></div>
                <div><telerik:RadLabel runat="server" Font-Size="larger" Text="Consumed Annual Unpaid Leaves"></telerik:RadLabel></div>
            </div>
            </ContentTemplate>
        </telerik:RadContentTemplateTile>
        <telerik:RadContentTemplateTile runat="server" ID="ConsumedUnpaidMonthly" shape="Square" BackColor="White" BorderColor="Gray" style="border-radius:12px;">
            <ContentTemplate>
            <div style="text-align: center;">
                <asp:Image runat="server" Height="40px" Style="padding-bottom: 5px;" ImageUrl="assets/request.png" />
                <div><telerik:RadLabel runat="server" Text="12" Font-Size="XX-Large" Style="padding-bottom: 10px;" /></div>
                <div><telerik:RadLabel runat="server" Font-Size="larger" Text="Consumed Monthly Unpaid Leaves"></telerik:RadLabel></div>
            </div>
            </ContentTemplate>
        </telerik:RadContentTemplateTile>
        <telerik:RadContentTemplateTile runat="server" ID="ConsumedSickAnnual" shape="Square" BackColor="White" BorderColor="Gray" style="border-radius:12px;">
            <ContentTemplate>
            <div style="text-align: center;">
                <asp:Image runat="server" Height="40px" Style="padding-bottom: 5px;" ImageUrl="assets/request.png" />
                <div><telerik:RadLabel runat="server" Text="12" Font-Size="XX-Large" Style="padding-bottom: 10px;" /></div>
                <div><telerik:RadLabel runat="server" Font-Size="larger" Text="Consumed Annual Sick Leaves"></telerik:RadLabel></div>
            </div>
            </ContentTemplate>
        </telerik:RadContentTemplateTile>
        <telerik:RadContentTemplateTile runat="server" ID="ConsumedSickMonthly" shape="Square" BackColor="White" BorderColor="Gray" style="border-radius:12px;">
            <ContentTemplate>
            <div style="text-align: center;">
                <asp:Image runat="server" Height="40px" Style="padding-bottom: 5px;" ImageUrl="assets/request.png" />
                <div><telerik:RadLabel runat="server" Text="12" Font-Size="XX-Large" Style="padding-bottom: 10px;" /></div>
                <div><telerik:RadLabel runat="server" Font-Size="larger" Text="Consumed Monthly Sick Leaves"></telerik:RadLabel></div>
            </div>
            </ContentTemplate>
        </telerik:RadContentTemplateTile>
        </div>

        <div style="height:154px; margin-bottom:8px; ">
        <telerik:RadContentTemplateTile runat="server" ID="NationalHolidays" shape="Wide" BackColor="White" BorderColor="Gray" style="border-radius:12px; top: -1px; left: 0px;">
            <ContentTemplate>
            <div>
                <asp:Image runat="server" ImageAlign="Middle" Height="80px" Style="padding:10px 0 5px 10px;" ImageUrl="assets/holiday1.png" />
                <telerik:RadLabel runat="server" Text="50" Font-Bold="true" Font-Size="XX-Large" Style="padding:0 0 0 50px ;" />
                <div style="padding:10px 0 0 10px; text-align:center;"><telerik:RadLabel runat="server" Font-Size="large" Text="National Holidays"></telerik:RadLabel></div>
            </div>
            </ContentTemplate>
        </telerik:RadContentTemplateTile>
        <telerik:RadContentTemplateTile runat="server" ID="RadContentTemplateTile1" shape="Wide" BackColor="White" BorderColor="Gray" style="border-radius:12px; top: -1px; left: 0px;">
            <ContentTemplate>
            <div>
                <asp:Image runat="server" ImageAlign="Middle" Height="80px" Style="padding:10px 0 5px 10px;" ImageUrl="assets/holiday2.png" />
                <telerik:RadLabel runat="server" Text="50" Font-Bold="true" Font-Size="XX-Large" Style="padding:0 0 0 50px ;" />
                <div style="padding:10px 0 0 10px; text-align:center;"><telerik:RadLabel runat="server" Font-Size="large" Text="International Holidays"></telerik:RadLabel></div>
            </div>
            </ContentTemplate>
        </telerik:RadContentTemplateTile>
        </div>


        <telerik:RadHtmlChart ID="HtmlDonutChart" runat="server" Width="400px" BorderStyle="Solid" BorderColor="gray" transition="true">
            <Appearance FillStyle-BackgroundColor="Transparent"></Appearance>
            <ChartTitle Text="Work From Home">
                <Appearance Align="Center" Position="Top" >
                    <TextStyle Bold="true" />
                </Appearance>
            </ChartTitle>
            <Legend>
                <Appearance Position="Bottom" Visible="true"></Appearance>
            </Legend>
            <PlotArea>
                <Series>
                    <telerik:DonutSeries HoleSize="20" StartAngle="90">
                        <LabelsAppearance Position="OutsideEnd" DataFormatString="{0}%" Visible="true">
                        </LabelsAppearance>
                        <TooltipsAppearance Visible="false"></TooltipsAppearance>
                        <SeriesItems>
                            <telerik:PieSeriesItem  BackgroundColor="#cc33ff" Name="Alloted" Y="32" />
                            <telerik:PieSeriesItem BackgroundColor="#0066ff" Name="Remaining" Y="12" />
                        </SeriesItems>
                    </telerik:DonutSeries>
                </Series>
            </PlotArea>
        </telerik:RadHtmlChart>


    </form>
</body>
</html>
