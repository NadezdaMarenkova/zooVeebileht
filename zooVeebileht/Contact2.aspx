<%@ Page Title="Uus loom" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact2.aspx.cs" Inherits="zooVeebileht.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    <h2>Uue looma lisamine.</h2>
<h3>
    &nbsp;</h3>
<p>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="loomID" DataSourceID="SqlDataSource_loom" DefaultMode="Insert" Height="50px" Width="125px">
        <Fields>
            <asp:BoundField DataField="loomID" HeaderText="loomID" InsertVisible="False" ReadOnly="True" SortExpression="loomID" />
            <asp:BoundField DataField="loomNimi" HeaderText="loomNimi" SortExpression="loomNimi" />
            <asp:BoundField DataField="synniaasta" HeaderText="synniaasta" SortExpression="synniaasta" />
            <asp:TemplateField HeaderText="loomTyyp" SortExpression="loomTyyp">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("loomTyyp") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource_loomTyyp" DataTextField="loomTyyp" DataValueField="loomTyypID" SelectedValue='<%# Bind("loomTyyp") %>'>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource_loomTyyp" runat="server" ConnectionString="<%$ ConnectionStrings:zooMarenkovaConnectionString1 %>" DeleteCommand="DELETE FROM [loomTyyp] WHERE [loomTyypID] = @loomTyypID" InsertCommand="INSERT INTO [loomTyyp] ([loomTyyp]) VALUES (@loomTyyp)" SelectCommand="SELECT * FROM [loomTyyp]" UpdateCommand="UPDATE [loomTyyp] SET [loomTyyp] = @loomTyyp WHERE [loomTyypID] = @loomTyypID">
                        <DeleteParameters>
                            <asp:Parameter Name="loomTyypID" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="loomTyyp" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="loomTyyp" Type="String" />
                            <asp:Parameter Name="loomTyypID" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("loomTyyp") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="zoo" SortExpression="zoo">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("zoo") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource_zoo" DataTextField="zooNimetus" DataValueField="zooID" SelectedValue='<%# Bind("zoo") %>'>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource_zoo" runat="server" ConnectionString="<%$ ConnectionStrings:zooMarenkovaConnectionString1 %>" DeleteCommand="DELETE FROM [zoo] WHERE [zooID] = @zooID" InsertCommand="INSERT INTO [zoo] ([zooNimetus]) VALUES (@zooNimetus)" SelectCommand="SELECT [zooID], [zooNimetus] FROM [zoo]" UpdateCommand="UPDATE [zoo] SET [zooNimetus] = @zooNimetus WHERE [zooID] = @zooID">
                        <DeleteParameters>
                            <asp:Parameter Name="zooID" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="zooNimetus" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="zooNimetus" Type="String" />
                            <asp:Parameter Name="zooID" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("zoo") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource_loom" runat="server" ConnectionString="<%$ ConnectionStrings:zooMarenkovaConnectionString1 %>" DeleteCommand="DELETE FROM [loom] WHERE [loomID] = @loomID" InsertCommand="INSERT INTO [loom] ([loomNimi], [synniaasta], [loomTyyp], [zoo]) VALUES (@loomNimi, @synniaasta, @loomTyyp, @zoo)" SelectCommand="SELECT * FROM [loom]" UpdateCommand="UPDATE [loom] SET [loomNimi] = @loomNimi, [synniaasta] = @synniaasta, [loomTyyp] = @loomTyyp, [zoo] = @zoo WHERE [loomID] = @loomID">
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
    </p>
<p>&nbsp;</p>
    
</asp:Content>
