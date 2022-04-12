<%@ Page Title="Uus loom" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="zooVeebileht.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>Uue looma lisamine.</h2>
    <p>&nbsp;</p>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="loomID" DataSourceID="SqlDataSource_loom" DefaultMode="Insert" Height="199px" OnPageIndexChanging="DetailsView1_PageIndexChanging" Width="396px">
        <Fields>
            <asp:BoundField DataField="loomID" HeaderText="loomID" InsertVisible="False" ReadOnly="True" SortExpression="loomID" />
            <asp:BoundField DataField="loomNimi" HeaderText="loomNimi" SortExpression="loomNimi" />
            <asp:BoundField DataField="synniaasta" HeaderText="synniaasta" SortExpression="synniaasta" />
            <asp:TemplateField HeaderText="loomTyyp" SortExpression="loomTyyp">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("loomTyyp") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource_LoomTyyp" DataTextField="loomTyyp" DataValueField="loomTyypID" SelectedValue='<%# Bind("loomTyyp") %>'>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource_LoomTyyp" runat="server" ConnectionString="<%$ ConnectionStrings:zooMarenkovaConnectionString1 %>" DeleteCommand="DELETE FROM [loomTyyp] WHERE [loomTyypID] = @loomTyypID" InsertCommand="INSERT INTO [loomTyyp] ([loomTyyp]) VALUES (@loomTyyp)" SelectCommand="SELECT * FROM [loomTyyp]" UpdateCommand="UPDATE [loomTyyp] SET [loomTyyp] = @loomTyyp WHERE [loomTyypID] = @loomTyypID">
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
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
        </asp:DetailsView>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    
</asp:Content>
