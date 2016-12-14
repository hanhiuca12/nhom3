<%@ Page Title="Trang Chủ" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent" >
            <div class="banner">
	 <div class="container">
	 </div>
</div>
<div class="featured">
    <div class="container">
        <div class="row">
            <div class="feature-grids">
                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource3">
                    <ItemTemplate>
			             <div class="col-md-3 feature-grid jewel">
				             <asp:Image id="Image2" runat="server"
                                        CssClass ="img-rounded"
                                        Width="100%"
                                        Height="230px"
                                        AlternateText="Image text"
                                        ImageAlign="left"
                                        ImageUrl="<%# Bind('anh')%>"
                                        />
					             <div class="arrival-info">
						             <h4><a href="#" class="text-muted"><asp:Label ID="Label1" runat="server" Text='<%# Bind("ten_sp") %>' /></a></h4>
						             <p><asp:Label ID="Label2" runat="server" Text='<%# Bind("gia_thanh")%>' /> VNĐ</b></p>
						             <span class="pric1"><asp:Label ID="Label3" runat="server" Text='<%# Bind("mo_ta") %>' /></span>
					             </div>
					             </a><div class="viw"><a href="product.html">
                                     <asp:HyperLink id="hyperlink2" NavigateUrl="sanpham.aspx" Text="Sua" runat="server"/>
					             </div>
			             </div>
                </ItemTemplate>
            </asp:Repeater>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [san_pham]" OldValuesParameterFormatString="original_{0}">
            </asp:SqlDataSource>
            </div>
        </div>
        </div>
    </div>
</asp:Content>
