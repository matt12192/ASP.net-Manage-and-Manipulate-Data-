<%@ Page Language="VB" AutoEventWireup="false" CodeFile="NewJob.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <asp:Label ID="Label7" runat="server" 
        style="z-index: 1; left: 290px; top: 160px; position: absolute; width: 88px; bottom: 180px" 
        Text="Job Status"></asp:Label>
    <asp:TreeView ID="TreeView1" runat="server" DataSourceID="SiteMapDataSource1">
    </asp:TreeView>
    <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/App_Data/Database.mdb" 
        SelectCommand="SELECT * FROM [tbl_jobs]" 
        DeleteCommand="DELETE FROM [tbl_jobs] WHERE [job_ID] = ?" 
        InsertCommand="INSERT INTO [tbl_jobs] ([job_ID], [job_reference], [employee_ID], [employee_name], [job_start_date], [job_completion_date], [job_description], [job_status], [job_search_field]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)" 
        UpdateCommand="UPDATE [tbl_jobs] SET [job_reference] = ?, [employee_ID] = ?, [employee_name] = ?, [job_start_date] = ?, [job_completion_date] = ?, [job_description] = ?, [job_status] = ?, [job_search_field] = ? WHERE [job_ID] = ?">
        <DeleteParameters>
            <asp:Parameter Name="job_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="job_ID" Type="Int32" />
            <asp:Parameter Name="job_reference" Type="String" />
            <asp:Parameter Name="employee_ID" Type="String" />
            <asp:Parameter Name="employee_name" Type="String" />
            <asp:Parameter Name="job_start_date" Type="String" />
            <asp:Parameter Name="job_completion_date" Type="String" />
            <asp:Parameter Name="job_description" Type="String" />
            <asp:Parameter Name="job_status" Type="String" />
            <asp:Parameter Name="job_search_field" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="job_reference" Type="String" />
            <asp:Parameter Name="employee_ID" Type="String" />
            <asp:Parameter Name="employee_name" Type="String" />
            <asp:Parameter Name="job_start_date" Type="String" />
            <asp:Parameter Name="job_completion_date" Type="String" />
            <asp:Parameter Name="job_description" Type="String" />
            <asp:Parameter Name="job_status" Type="String" />
            <asp:Parameter Name="job_search_field" Type="String" />
            <asp:Parameter Name="job_ID" Type="Int32" />
        </UpdateParameters>
    </asp:AccessDataSource>
   
    
    <asp:Button ID="Button3" runat="server" 
        
        style="z-index: 1; left: 805px; top: 105px; position: absolute; width: 190px;" 
        Text="Set Job Completion Date" Height="26px" Width="190px" />
    <asp:Button ID="Button2" runat="server" 
        
        style="z-index: 1; left: 805px; top: 65px; position: absolute; width: 190px;" 
        Text="Set Job Start Date" Height="26px" Width="190px" />
    <asp:Button ID="Button1" runat="server" 
        
        style="z-index: 1; left: 805px; top: 25px; position: absolute; width: 190px; bottom: 485px;" 
        Text="Save New Job" Height="26px" Width="190px" />
    <asp:DropDownList ID="DropDownList2" runat="server" 
        
        
        
        style="z-index: 1; left: 423px; top: 166px; position: absolute; bottom: 174px; width: 127px; right: 469px">
        <asp:ListItem>Unselected</asp:ListItem>
        <asp:ListItem>New Job</asp:ListItem>
        <asp:ListItem>In-Progress</asp:ListItem>
        <asp:ListItem>Job Complete</asp:ListItem>
        <asp:ListItem>Job On-Hold</asp:ListItem>
        <asp:ListItem>Job Invoiced</asp:ListItem>
        <asp:ListItem>Job Paid</asp:ListItem>
        <asp:ListItem></asp:ListItem>
    </asp:DropDownList>
    <asp:TextBox ID="TextBox5" runat="server" 
        style="z-index: 1; left: 424px; top: 132px; position: absolute"></asp:TextBox>
    <asp:TextBox ID="TextBox3" runat="server" 
        
        
        
        style="z-index: 1; left: 427px; top: 61px; position: absolute; bottom: 279px"></asp:TextBox>
    <asp:TextBox ID="TextBox4" runat="server" 
        style="z-index: 1; left: 426px; top: 98px; position: absolute"></asp:TextBox>
    <asp:Label ID="Label6" runat="server" 
        style="z-index: 1; left: 274px; top: 128px; position: absolute; width: 123px; bottom: 216px" 
        Text="Job Description"></asp:Label>
    <asp:Label ID="Label5" runat="server" 
        style="z-index: 1; left: 227px; top: 97px; position: absolute; width: 175px; bottom: 243px" 
        Text="Job Completion Date"></asp:Label>
    <asp:Label ID="Label4" runat="server" 
        style="z-index: 1; left: 265px; top: 65px; position: absolute; width: 120px; bottom: 278px" 
        Text="Job Start Date"></asp:Label>
    <asp:Calendar ID="Calendar1" runat="server" 
        
        
        style="z-index: 1; top: 20px; position: absolute; height: 241px; width: 197px; left: 583px" 
        BackColor="White" BorderColor="Black" BorderStyle="Double" BorderWidth="1px" 
        Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" 
        NextPrevFormat="FullMonth">
        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" 
            VerticalAlign="Bottom" />
        <OtherMonthDayStyle ForeColor="#999999" />
        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
        <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" 
            Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
        <TodayDayStyle BackColor="#CCCCCC" />
    </asp:Calendar>
    <asp:Label ID="Label3" runat="server" 
        style="z-index: 1; left: 264px; top: 26px; position: absolute; width: 114px" 
        Text="Job Reference"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" 
        style="z-index: 1; left: 427px; top: 23px; position: absolute"></asp:TextBox> 
        <asp:Panel ID="Panel1" runat="server" 
        style="z-index: 1; left: 45px; top: 305px; position: absolute; height: 275px; width: 1280px" 
        ScrollBars="Auto">
            <asp:GridView ID="GridView1" runat="server" 
    AutoGenerateColumns="False" DataKeyNames="job_ID" 
    DataSourceID="AccessDataSource1" 
    
                style="z-index: 1; left: 0px; top: 0px; position: absolute; height: 133px; width: 1525px" 
                AllowSorting="True" CellPadding="4" CellSpacing="2" ForeColor="#333333" 
                GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="job_ID" HeaderText="job_ID" 
            InsertVisible="False" ReadOnly="True" SortExpression="job_ID" />
                    <asp:BoundField DataField="job_reference" HeaderText="job_reference" 
                        SortExpression="job_reference" />
                    <asp:BoundField DataField="job_start_date" HeaderText="job_start_date" 
                        SortExpression="job_start_date" />
                    <asp:BoundField DataField="job_completion_date" HeaderText="job_completion_date" 
            SortExpression="job_completion_date" />
                    <asp:BoundField DataField="job_description" HeaderText="job_description" 
                        SortExpression="job_description" />
                    <asp:BoundField DataField="job_status" 
                        HeaderText="job_status" SortExpression="job_status" />
                    <asp:BoundField DataField="job_search_field" HeaderText="job_search_field" 
                        SortExpression="job_search_field" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
    </asp:Panel>
   
    
    <p>
        &nbsp;</p>
    <asp:HiddenField ID="jobPrimaryKey" runat="server" />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="TextBox1" ErrorMessage="Reference is Required" 
        
        style="z-index: 1; left: 237px; top: 203px; position: absolute; right: 649px;"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="TextBox3" ErrorMessage="Start Date is Required" 
        style="z-index: 1; left: 232px; top: 236px; position: absolute"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ControlToValidate="TextBox4" ErrorMessage="Completion Date is Required" 
        style="z-index: 1; left: 398px; top: 204px; position: absolute"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
        ControlToValidate="TextBox5" ErrorMessage="Description is Required" 
        style="z-index: 1; left: 399px; top: 239px; position: absolute"></asp:RequiredFieldValidator>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
   
    
    </form>
</body>
</html>
