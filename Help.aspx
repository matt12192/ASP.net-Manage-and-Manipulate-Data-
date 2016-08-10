<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Help.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:TreeView ID="TreeView1" runat="server" DataSourceID="SiteMapDataSource1">
        </asp:TreeView>
        <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
        <asp:Image ID="Image1" runat="server" 
            
            style="z-index: 1; left: 374px; top: 371px; position: absolute; height: 197px; width: 523px" 
            ImageUrl="~/Images/Capture 2.PNG" />
        <asp:Label ID="Label1" runat="server" 
            style="z-index: 1; left: 365px; top: 59px; position: absolute" 
            Text="Create jobs in the New Job form. All fields must be completed then save new job is selected."></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" 
            style="z-index: 1; left: 380px; top: 327px; position: absolute" 
            Text="Use View Jobs page to view any current jobs via reference number selection."></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:Image ID="Image2" runat="server" 
            
            style="z-index: 1; left: 375px; top: 94px; position: absolute; height: 197px; width: 523px" 
            ImageUrl="~/Images/Capture.PNG" />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" 
            style="z-index: 1; left: 368px; top: 596px; position: absolute" 
            Text="Change current Jobs through Modify Job Details form. Chose job via reference number and then change details and click update selected job."></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:Image ID="Image3" runat="server" 
            
            style="z-index: 1; left: 375px; top: 649px; position: absolute; height: 197px; width: 523px" 
            ImageUrl="~/Images/Capture 3.PNG" />
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
