<%@ Page Title="Chi tiết hóa đơn" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent" >
<div class="featured">
    <div class="container">
        <div class="row">
            <div class="feature-grids">
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="100%" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="id_ct" DataSourceID="SqlDataSource1">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
            <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" Width="20%" Height="40px" />
            <Fields>
                <asp:BoundField DataField="id_ct" HeaderText="id_ct" ReadOnly="True" SortExpression="id_ct" />
                <asp:BoundField DataField="id_hd" HeaderText="id_hd" SortExpression="id_hd" />
                <asp:BoundField DataField="id_sp" HeaderText="id_sp" SortExpression="id_sp" />
                <asp:BoundField DataField="so_luong" HeaderText="so_luong" SortExpression="so_luong" />
                <asp:BoundField DataField="thoi_gian" HeaderText="thoi_gian" SortExpression="thoi_gian" />
                <asp:BoundField DataField="email_kh" HeaderText="email_kh" SortExpression="email_kh" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [hoa_don_chi_tiet] WHERE [id_ct] = @original_id_ct AND [id_hd] = @original_id_hd AND [id_sp] = @original_id_sp AND [so_luong] = @original_so_luong AND [thoi_gian] = @original_thoi_gian AND [email_kh] = @original_email_kh" InsertCommand="INSERT INTO [hoa_don_chi_tiet] ([id_ct], [id_hd], [id_sp], [so_luong], [thoi_gian], [email_kh]) VALUES (@id_ct, @id_hd, @id_sp, @so_luong, @thoi_gian, @email_kh)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [id_ct], [id_hd], [id_sp], [so_luong], [thoi_gian], [email_kh] FROM [hoa_don_chi_tiet]" UpdateCommand="UPDATE [hoa_don_chi_tiet] SET [id_hd] = @id_hd, [id_sp] = @id_sp, [so_luong] = @so_luong, [thoi_gian] = @thoi_gian, [email_kh] = @email_kh WHERE [id_ct] = @original_id_ct AND [id_hd] = @original_id_hd AND [id_sp] = @original_id_sp AND [so_luong] = @original_so_luong AND [thoi_gian] = @original_thoi_gian AND [email_kh] = @original_email_kh">
            <DeleteParameters>
                <asp:Parameter Name="original_id_ct" Type="Int32" />
                <asp:Parameter Name="original_id_hd" Type="Int32" />
                <asp:Parameter Name="original_id_sp" Type="Int32" />
                <asp:Parameter Name="original_so_luong" Type="Int32" />
                <asp:Parameter Name="original_thoi_gian" Type="String" />
                <asp:Parameter Name="original_email_kh" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="id_ct" Type="Int32" />
                <asp:Parameter Name="id_hd" Type="Int32" />
                <asp:Parameter Name="id_sp" Type="Int32" />
                <asp:Parameter Name="so_luong" Type="Int32" />
                <asp:Parameter Name="thoi_gian" Type="String" />
                <asp:Parameter Name="email_kh" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="id_hd" Type="Int32" />
                <asp:Parameter Name="id_sp" Type="Int32" />
                <asp:Parameter Name="so_luong" Type="Int32" />
                <asp:Parameter Name="thoi_gian" Type="String" />
                <asp:Parameter Name="email_kh" Type="String" />
                <asp:Parameter Name="original_id_ct" Type="Int32" />
                <asp:Parameter Name="original_id_hd" Type="Int32" />
                <asp:Parameter Name="original_id_sp" Type="Int32" />
                <asp:Parameter Name="original_so_luong" Type="Int32" />
                <asp:Parameter Name="original_thoi_gian" Type="String" />
                <asp:Parameter Name="original_email_kh" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
            </div>
        </div>
    </div>
</asp:Content>
