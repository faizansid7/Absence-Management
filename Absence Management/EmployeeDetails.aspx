<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeDetails.aspx.cs" Inherits="Absence_Management.EmployeeDetails" %>

<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Employee Detail</title>
    <link type="text/css" rel="stylesheet" href="EmployeeDetail.css" />
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
        <telerik:RadContentTemplateTile runat="server" ID="TotalLeaves" shape="Wide" BackColor="#273033" BorderColor="Gray" style="border-radius:12px; top: -1px; left: 0px;">
            <ContentTemplate>
            <div>
                <asp:Image runat="server" ImageAlign="Middle" Height="80px" Style="padding:10px 0 5px 10px;" ImageUrl="assets/AnnualLeave.png" />
                <telerik:RadLabel runat="server" Text="50" Font-Bold="true" ForeColor="white" Font-Size="XX-Large" Style="padding:0 0 0 50px ;" />
                <div style="padding:10px 0 0 10px; text-align:center;"><telerik:RadLabel runat="server" ForeColor="white" Font-Size="large" Text="Annual Leaves"></telerik:RadLabel></div>
            </div>
            </ContentTemplate>
        </telerik:RadContentTemplateTile>
        <telerik:RadContentTemplateTile runat="server" ID="MonthlyLeaves" shape="Wide" BackColor="#273033" BorderColor="Gray" style="border-radius:12px;">
            <ContentTemplate>
            <div>
                <asp:Image runat="server" ImageAlign="Middle" Height="80px" Style="padding:10px 0 5px 10px;" ImageUrl="assets/AnnualLeave.png" />
                <telerik:RadLabel runat="server" Text="5" Font-Bold="true" Font-Size="XX-Large" ForeColor="white" Style="padding:0 0 0 50px ;" />
                <div style="padding:10px 0 0 10px; text-align:center;"><telerik:RadLabel runat="server" ForeColor="white" Font-Size="large" Text="Monthly Leaves"></telerik:RadLabel></div>
            </div>
            </ContentTemplate>
        </telerik:RadContentTemplateTile>
        </div>

        <div style="height: 155px; margin-bottom: 8px">
        <telerik:RadContentTemplateTile runat="server" ID="PaidAnnual" shape="Square" BackColor="#273033" BorderColor="Gray" style="border-radius:12px;">
            <ContentTemplate>
            <div style="text-align: center;">
                <asp:Image runat="server" Height="40px" Style="padding-bottom: 5px;" ImageUrl="assets/paid.png" />
                <div><telerik:RadLabel runat="server" Text="34" Font-Size="XX-Large" ForeColor="white" Style="padding-bottom: 10px;" /></div>
                <div><telerik:RadLabel runat="server" Font-Size="larger" ForeColor="white" Text="Paid Annual Leaves"></telerik:RadLabel></div>
            </div>
            </ContentTemplate>
            <PeekTemplate>
                <div style="text-align: center; background-color:#273033">
                <asp:Image runat="server" Height="40px" Style="padding-bottom: 5px;" ImageUrl="assets/paid.png" />
                <div><telerik:RadLabel runat="server" Text="20"  ForeColor="white" Font-Size="XX-Large" Style="padding-bottom: 10px;" /></div>
                <div><telerik:RadLabel runat="server" Font-Size="larger" ForeColor="white" Text="Consumed Annual Paid Leaves"></telerik:RadLabel></div>
            </div>
            </PeekTemplate>
            <PeekTemplateSettings Animation="Slide" HidePeekTemplateOnMouseOut="true" ShowPeekTemplateOnMouseOver="true" />
        </telerik:RadContentTemplateTile>
        <telerik:RadContentTemplateTile runat="server" ID="PaidMonthly" shape="Square" BackColor="#273033" BorderColor="Gray" style="border-radius:12px;">
            <ContentTemplate>
            <div style="text-align: center;">
                <asp:Image runat="server" Height="40px" Style="padding-bottom: 5px;" ImageUrl="assets/paid.png" />
                <div><telerik:RadLabel runat="server" Text="2" Font-Size="XX-Large" ForeColor="white" Style="padding-bottom: 10px;" /></div>
                <div><telerik:RadLabel runat="server" Font-Size="Larger" ForeColor="white" Text="Paid Monthly Leaves"></telerik:RadLabel></div>
            </div>
            </ContentTemplate>
            <PeekTemplate>
                <div style="text-align: center; background-color:#273033">
                <asp:Image runat="server" Height="40px" Style="padding-bottom: 5px;" ImageUrl="assets/paid.png" />
                <div><telerik:RadLabel runat="server" Text="2" Font-Size="XX-Large" ForeColor="white" Style="padding-bottom: 10px;" /></div>
                <div><telerik:RadLabel runat="server" Font-Size="larger" ForeColor="white" Text="Consumed Monthly paid Leaves"></telerik:RadLabel></div>
            </div>
            </PeekTemplate>
            <PeekTemplateSettings Animation="Slide" HidePeekTemplateOnMouseOut="true" ShowPeekTemplateOnMouseOver="true" />
        </telerik:RadContentTemplateTile>
        <telerik:RadContentTemplateTile runat="server" ID="UnpaidAnnual" shape="Square" BackColor="#273033" BorderColor="Gray" style="border-radius:12px;">
            <ContentTemplate>
            <div style="text-align: center;">
                <asp:Image runat="server" Height="40px" Style="padding-bottom: 5px;" ImageUrl="assets/unpaid.png" />
                <div><telerik:RadLabel runat="server" Text="12" ForeColor="white" Font-Size="XX-Large" Style="padding-bottom: 10px;" /></div>
                <div><telerik:RadLabel runat="server" Font-Size="larger" ForeColor="white" Text="Unpaid Annual Leaves"></telerik:RadLabel></div>
            </div>
            </ContentTemplate>
            <PeekTemplate>
                <div style="text-align: center; background-color:#273033">
                <asp:Image runat="server" Height="40px" Style="padding-bottom: 5px;" ImageUrl="assets/unpaid.png" />
                <div><telerik:RadLabel runat="server" Text="12" Font-Size="XX-Large" ForeColor="white" Style="padding-bottom: 10px;" /></div>
                <div><telerik:RadLabel runat="server" Font-Size="larger" ForeColor="white" Text="Consumed Annual Unpaid Leaves"></telerik:RadLabel></div>
            </div>
            </PeekTemplate>
            <PeekTemplateSettings Animation="Slide" HidePeekTemplateOnMouseOut="true" ShowPeekTemplateOnMouseOver="true" />
        </telerik:RadContentTemplateTile>
        <telerik:RadContentTemplateTile runat="server" ID="UnpaidMonthly" shape="Square" BackColor="#273033" BorderColor="Gray" style="border-radius:12px;">
            <ContentTemplate>
            <div style="text-align: center;">
                <asp:Image runat="server" Height="40px" Style="padding-bottom: 5px;" ImageUrl="assets/unpaid.png" />
                <div><telerik:RadLabel runat="server" Text="2" Font-Size="XX-Large" ForeColor="white" Style="padding-bottom: 10px;" /></div>
                <div><telerik:RadLabel runat="server" Font-Size="larger" ForeColor="white" Text="Unpaid Monthly Leaves"></telerik:RadLabel></div>
            </div>
            </ContentTemplate>
            <PeekTemplate>
                <div style="text-align: center; background-color:#273033">
                <asp:Image runat="server" Height="40px" Style="padding-bottom: 5px;" ImageUrl="assets/unpaid.png" />
                <div><telerik:RadLabel runat="server" Text="12" ForeColor="white" Font-Size="XX-Large" Style="padding-bottom: 10px;" /></div>
                <div><telerik:RadLabel runat="server" Font-Size="larger" ForeColor="white" Text="Consumed Monthly Unpaid Leaves"></telerik:RadLabel></div>
            </div>
            </PeekTemplate>
            <PeekTemplateSettings Animation="Slide" HidePeekTemplateOnMouseOut="true" ShowPeekTemplateOnMouseOver="true" />
        </telerik:RadContentTemplateTile>
        <telerik:RadContentTemplateTile runat="server" ID="AnnualSick" shape="Square" BackColor="#273033" BorderColor="Gray" style="border-radius:12px;">
            <ContentTemplate>
            <div style="text-align: center;">
                <asp:Image runat="server" Height="40px" Style="padding-bottom: 5px;" ImageUrl="assets/sick.png" />
                <div><telerik:RadLabel runat="server" Text="20" ForeColor="white" Font-Size="XX-Large" Style="padding-bottom: 10px;" /></div>
                <div><telerik:RadLabel runat="server" Font-Size="larger" ForeColor="white" Text="Annual Sick Leaves"></telerik:RadLabel></div>
            </div>
            </ContentTemplate>
            <PeekTemplate>
                <div style="text-align: center; background-color:#273033">
                <asp:Image runat="server" Height="40px" Style="padding-bottom: 5px;" ImageUrl="assets/sick.png" />
                <div><telerik:RadLabel runat="server" Text="12" Font-Size="XX-Large" ForeColor="white" Style="padding-bottom: 10px;" /></div>
                <div><telerik:RadLabel runat="server" Font-Size="larger" ForeColor="white" Text="Consumed Annual Sick Leaves"></telerik:RadLabel></div>
            </div>
            </PeekTemplate>
            <PeekTemplateSettings Animation="Slide" HidePeekTemplateOnMouseOut="true" ShowPeekTemplateOnMouseOver="true" />
        </telerik:RadContentTemplateTile>
        <telerik:RadContentTemplateTile runat="server" ID="MonthlySick" shape="Square" BackColor="#273033" BorderColor="Gray" style="border-radius:12px;">
            <ContentTemplate>
            <div style="text-align: center;">
                <asp:Image runat="server" Height="40px" Style="padding-bottom: 5px;" ImageUrl="assets/sick.png" />
                <div><telerik:RadLabel runat="server" Text="2" Font-Size="XX-Large" ForeColor="white" Style="padding-bottom: 10px;" /></div>
                <div><telerik:RadLabel runat="server" Font-Size="larger" ForeColor="white" Text="Monthly Sick Leaves"></telerik:RadLabel></div>
            </div>
            </ContentTemplate>
            <PeekTemplate>
                <div style="text-align: center; background-color:#273033">
                <asp:Image runat="server" Height="40px" Style="padding-bottom: 5px;" ImageUrl="assets/sick.png" />
                <div><telerik:RadLabel runat="server" Text="12" Font-Size="XX-Large" ForeColor="white" Style="padding-bottom: 10px;" /></div>
                <div><telerik:RadLabel runat="server" Font-Size="larger" ForeColor="white" Text="Consumed Monthly Sick Leaves"></telerik:RadLabel></div>
            </div>
            </PeekTemplate>
            <PeekTemplateSettings Animation="Slide" HidePeekTemplateOnMouseOut="true" ShowPeekTemplateOnMouseOver="true" />
        </telerik:RadContentTemplateTile>
        </div>

        <div style="height:154px; margin-bottom:8px; ">
        <telerik:RadContentTemplateTile runat="server" ID="NationalHolidays" shape="Wide" BackColor="#273033" BorderColor="Gray" style="border-radius:12px; top: -1px; left: 0px;">
            <ContentTemplate>
            <div>
                <asp:Image runat="server" ImageAlign="Middle" Height="80px" Style="padding:10px 0 5px 10px;" ImageUrl="assets/holiday1.png" />
                <telerik:RadLabel runat="server" Text="50" Font-Bold="true" ForeColor="white" Font-Size="XX-Large" Style="padding:0 0 0 50px ;" />
                <div style="padding:10px 0 0 10px; text-align:center;"><telerik:RadLabel runat="server" ForeColor="white" Font-Size="large" Text="National Holidays"></telerik:RadLabel></div>
            </div>
            </ContentTemplate>
        </telerik:RadContentTemplateTile>
        <telerik:RadContentTemplateTile runat="server" ID="InternationalHoliday" shape="Wide" BackColor="#273033" BorderColor="Gray" style="border-radius:12px; top: -1px; left: 0px;">
            <ContentTemplate>
            <div>
                <asp:Image runat="server" ImageAlign="Middle" Height="80px" Style="padding:10px 0 5px 10px;" ImageUrl="assets/holiday2.png" />
                <telerik:RadLabel runat="server" Text="50" Font-Bold="true" ForeColor="white" Font-Size="XX-Large" Style="padding:0 0 0 50px ;" />
                <div style="padding:10px 0 0 10px; text-align:center;"><telerik:RadLabel runat="server" ForeColor="white" Font-Size="large" Text="International Holidays"></telerik:RadLabel></div>
            </div>
            </ContentTemplate>
        </telerik:RadContentTemplateTile>
        </div>


        <telerik:RadHtmlChart ID="HtmlDonutChart" runat="server" Width="400px" BorderStyle="Solid" BorderColor="gray" BorderWidth="2" transition="true" style="margin-bottom:8px;">
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

        
        <telerik:RadContentTemplateTile runat="server" ID="WorkfromHome" shape="Square" BackColor="White" BorderColor="Gray" style="margin-bottom:8px; border-radius:12px;">
            <ContentTemplate>
            <div style="text-align: center;">
                <asp:Image runat="server" Height="40px" Style="padding-bottom: 5px;" ImageUrl="assets/request.png" />
                <div><telerik:RadLabel runat="server" Text="43" Font-Size="XX-Large" Style="padding-bottom: 10px;" /></div>
                <div><telerik:RadLabel runat="server" Font-Size="larger" Text="Hours Worked From Home"></telerik:RadLabel></div>
            </div>
            </ContentTemplate>
            <PeekTemplate>
                <div style="text-align: center;  background-color:beige;">
                    <asp:Image runat="server" Height="40px" Style="padding-bottom: 5px;" ImageUrl="assets/request.png" />
                    <div><telerik:RadLabel runat="server" Text="4" Font-Size="XX-Large" Style="padding-bottom: 10px;" /></div>
                    <div style="padding-bottom:10px;"><telerik:RadLabel runat="server" Font-Size="larger" Text="Days Worked From Home"></telerik:RadLabel></div>
                </div>
            </PeekTemplate>
            <PeekTemplateSettings Animation="Slide" HidePeekTemplateOnMouseOut="true" ShowPeekTemplateOnMouseOver="true" Easing="swing"/>
        </telerik:RadContentTemplateTile>

        <telerik:RadContentTemplateTile runat="server" ID="ExtraWork" shape="Square" BackColor="White" BorderColor="Gray" style="margin-bottom:8px; border-radius:12px;">
            <ContentTemplate>
            <div style="text-align: center;">
                <asp:Image runat="server" Height="40px" Style="padding-bottom: 5px;" ImageUrl="assets/request.png" />
                <div><telerik:RadLabel runat="server" Text="25" Font-Size="XX-Large" Style="padding-bottom: 10px;" /></div>
                <div ><telerik:RadLabel runat="server" Font-Size="larger" Text="Hours Worked Extra"></telerik:RadLabel></div>
            </div>
            </ContentTemplate>
            <PeekTemplate>
                <div style="text-align: center; background-color:beige;">
                    <asp:Image runat="server" Height="40px" Style="padding-bottom: 5px;" ImageUrl="assets/request.png" />
                    <div><telerik:RadLabel runat="server" Text="1" Font-Size="XX-Large" Style="padding-bottom: 10px;" /></div>
                    <div style="padding-bottom:30px;"><telerik:RadLabel runat="server" Font-Size="larger" Text="Days Worked Extra"></telerik:RadLabel></div>
                </div>
            </PeekTemplate>
            <PeekTemplateSettings  Animation="Slide" HidePeekTemplateOnMouseOut="true" ShowPeekTemplateOnMouseOver="true" Easing="swing" />
        </telerik:RadContentTemplateTile>
        




    </form>
</body>
</html>
