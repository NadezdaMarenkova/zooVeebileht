<%@ Page Title="Loomad" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="zooVeebileht.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="loomID" DataSourceID="SqlDataSource2" EmptyDataText="There are no data records to display.">
            <Columns>
                <asp:BoundField DataField="loomID" HeaderText="loomID" InsertVisible="False" ReadOnly="True" SortExpression="loomID" />
                <asp:BoundField DataField="loomNimi" HeaderText="loomNimi" SortExpression="loomNimi" />
                <asp:BoundField DataField="synniaasta" HeaderText="synniaasta" SortExpression="synniaasta" />
                <asp:BoundField DataField="loomTyyp" HeaderText="loomTyyp" SortExpression="loomTyyp" />
                <asp:BoundField DataField="zooNimetus" HeaderText="zooNimetus" SortExpression="zooNimetus" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:zooMarenkovaConnectionString1 %>" DeleteCommand="DELETE FROM [loom] WHERE [loomID] = @loomID" InsertCommand="INSERT INTO [loom] ([loomNimi], [synniaasta], [loomTyyp], [zoo]) VALUES (@loomNimi, @synniaasta, @loomTyyp, @zoo)" SelectCommand="SELECT loom.loomID, loom.loomNimi, loom.synniaasta, loomTyyp.loomTyyp, zoo.zooNimetus FROM loom INNER JOIN loomTyyp ON loom.loomTyyp = loomTyyp.loomTyypID INNER JOIN zoo ON loom.zoo = zoo.zooID" UpdateCommand="UPDATE [loom] SET [loomNimi] = @loomNimi, [synniaasta] = @synniaasta, [loomTyyp] = @loomTyyp, [zoo] = @zoo WHERE [loomID] = @loomID">
            <DeleteParameters>
                <asp:Parameter Name="loomID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="loomNimi" Type="String" />
                <asp:Parameter Name="synniaasta" Type="Int32" />
                <asp:Parameter Name="loomTyyp" Type="Int32" />
                <asp:Parameter Name="zoo" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="loomNimi" Type="String" />
                <asp:Parameter Name="synniaasta" Type="Int32" />
                <asp:Parameter Name="loomTyyp" Type="Int32" />
                <asp:Parameter Name="zoo" Type="Int32" />
                <asp:Parameter Name="loomID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:zooMarenkovaConnectionString1 %>" DeleteCommand="DELETE FROM [loom] WHERE [loomID] = @loomID" InsertCommand="INSERT INTO [loom] ([loomNimi], [synniaasta], [loomTyyp]) VALUES (@loomNimi, @synniaasta, @loomTyyp)" SelectCommand="SELECT loom.loomID, loom.loomNimi, loom.synniaasta, loomTyyp.loomTyyp FROM loom INNER JOIN loomTyyp ON loom.loomTyyp = loomTyyp.loomTyypID" UpdateCommand="UPDATE [loom] SET [loomNimi] = @loomNimi, [synniaasta] = @synniaasta WHERE [loomID] = @loomID">
    <DeleteParameters>
        <asp:Parameter Name="loomID" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="loomNimi" Type="String" />
        <asp:Parameter Name="synniaasta" Type="Int32" />
        <asp:Parameter Name="loomTyyp" Type="Int32" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="loomNimi" Type="String" />
        <asp:Parameter Name="synniaasta" Type="Int32" />
        <asp:Parameter Name="loomID" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
<br />
</asp:Content>
