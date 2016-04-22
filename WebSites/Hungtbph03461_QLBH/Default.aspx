<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1>ThanhCongMobile.com</h1>
                <h2>Chào mừng bạn đến với Thành Công Mobile.</h2>
            </hgroup>
            <asp:Image ID="Image1" runat="server" ImageUrl="Images/banner.png" Width="950px" Height="400px" />
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3>Quản lý bán hàng by Hungtbph03461</h3>
    <ol class="round">
        <li class="one">
            <h5>KHÁCH HÀNG</h5>
            <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="MaKH" DataSourceID="SqlDataSource1" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>

                <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True"></CommandRowStyle>

                <EditRowStyle BackColor="#2461BF"></EditRowStyle>

                <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True"></FieldHeaderStyle>
                <Fields>
                    <asp:BoundField DataField="MaKH" HeaderText="MaKH" ReadOnly="True" SortExpression="MaKH"></asp:BoundField>
                    <asp:BoundField DataField="TenKH" HeaderText="TenKH" SortExpression="TenKH"></asp:BoundField>
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email"></asp:BoundField>
                    <asp:CommandField ShowInsertButton="True" ShowEditButton="True" ShowDeleteButton="True"></asp:CommandField>
                </Fields>
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"></FooterStyle>

                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"></HeaderStyle>

                <PagerStyle HorizontalAlign="Center" BackColor="#2461BF" ForeColor="White"></PagerStyle>

                <RowStyle BackColor="#EFF3FB"></RowStyle>
            </asp:DetailsView>
            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:Hungtbph03461_sqlConnectionString3 %>' DeleteCommand="DELETE FROM [KhachHang] WHERE [MaKH] = @MaKH" InsertCommand="INSERT INTO [KhachHang] ([MaKH], [TenKH], [Email]) VALUES (@MaKH, @TenKH, @Email)" SelectCommand="SELECT [MaKH], [TenKH], [Email] FROM [KhachHang]" UpdateCommand="UPDATE [KhachHang] SET [TenKH] = @TenKH, [Email] = @Email WHERE [MaKH] = @MaKH">
                <DeleteParameters>
                    <asp:Parameter Name="MaKH" Type="Int32"></asp:Parameter>
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MaKH" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="TenKH" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Email" Type="String"></asp:Parameter>
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="TenKH" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Email" Type="String"></asp:Parameter>
                    <asp:Parameter Name="MaKH" Type="Int32"></asp:Parameter>
                </UpdateParameters>
            </asp:SqlDataSource>
        </li>
        <li class="two">
            <h5>LOẠI SẢN PHẨM</h5>
            <asp:DetailsView ID="DetailsView2" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="MaLoai" DataSourceID="SqlDataSource2" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>

                <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True"></CommandRowStyle>

                <EditRowStyle BackColor="#2461BF"></EditRowStyle>

                <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True"></FieldHeaderStyle>
                <Fields>
                    <asp:BoundField DataField="MaLoai" HeaderText="MaLoai" ReadOnly="True" SortExpression="MaLoai"></asp:BoundField>
                    <asp:BoundField DataField="TenLoai" HeaderText="TenLoai" SortExpression="TenLoai"></asp:BoundField>
                    <asp:BoundField DataField="SoLuong" HeaderText="SoLuong" SortExpression="SoLuong"></asp:BoundField>
                    <asp:BoundField DataField="DonViTinh" HeaderText="DonViTinh" SortExpression="DonViTinh"></asp:BoundField>
                    <asp:CommandField ShowEditButton="True" ShowInsertButton="True" ShowDeleteButton="True"></asp:CommandField>
                </Fields>
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"></FooterStyle>

                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"></HeaderStyle>

                <PagerStyle HorizontalAlign="Center" BackColor="#2461BF" ForeColor="White"></PagerStyle>

                <RowStyle BackColor="#EFF3FB"></RowStyle>
            </asp:DetailsView>
            <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:Hungtbph03461_sqlConnectionString4 %>' DeleteCommand="DELETE FROM [LoaiSP] WHERE [MaLoai] = @MaLoai" InsertCommand="INSERT INTO [LoaiSP] ([MaLoai], [TenLoai], [SoLuong], [DonViTinh]) VALUES (@MaLoai, @TenLoai, @SoLuong, @DonViTinh)" SelectCommand="SELECT [MaLoai], [TenLoai], [SoLuong], [DonViTinh] FROM [LoaiSP]" UpdateCommand="UPDATE [LoaiSP] SET [TenLoai] = @TenLoai, [SoLuong] = @SoLuong, [DonViTinh] = @DonViTinh WHERE [MaLoai] = @MaLoai">
                <DeleteParameters>
                    <asp:Parameter Name="MaLoai" Type="Int32"></asp:Parameter>
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MaLoai" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="TenLoai" Type="String"></asp:Parameter>
                    <asp:Parameter Name="SoLuong" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="DonViTinh" Type="String"></asp:Parameter>
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="TenLoai" Type="String"></asp:Parameter>
                    <asp:Parameter Name="SoLuong" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="DonViTinh" Type="String"></asp:Parameter>
                    <asp:Parameter Name="MaLoai" Type="Int32"></asp:Parameter>
                </UpdateParameters>
            </asp:SqlDataSource>
        </li>  
         <li class="three">
            <h5>SẢN PHẨM</h5>
             <asp:DetailsView ID="DetailsView3" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="MaSP" DataSourceID="SqlDataSource3" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None">
                 <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>

                 <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True"></CommandRowStyle>

                 <EditRowStyle BackColor="#2461BF"></EditRowStyle>

                 <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True"></FieldHeaderStyle>
                 <Fields>
                     <asp:BoundField DataField="MaSP" HeaderText="MaSP" ReadOnly="True" SortExpression="MaSP"></asp:BoundField>
                     <asp:BoundField DataField="MaLoai" HeaderText="MaLoai" SortExpression="MaLoai"></asp:BoundField>
                     <asp:BoundField DataField="DonVi" HeaderText="DonVi" SortExpression="DonVi"></asp:BoundField>
                     <asp:BoundField DataField="TenSP" HeaderText="TenSP" SortExpression="TenSP"></asp:BoundField>
                     <asp:BoundField DataField="GiaSP" HeaderText="GiaSP" SortExpression="GiaSP"></asp:BoundField>
                     <asp:BoundField DataField="MoTa" HeaderText="MoTa" SortExpression="MoTa"></asp:BoundField>
                     <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True"></asp:CommandField>
                 </Fields>
                 <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"></FooterStyle>

                 <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"></HeaderStyle>

                 <PagerStyle HorizontalAlign="Center" BackColor="#2461BF" ForeColor="White"></PagerStyle>

                 <RowStyle BackColor="#EFF3FB"></RowStyle>
             </asp:DetailsView>
             <asp:SqlDataSource runat="server" ID="SqlDataSource3" ConnectionString='<%$ ConnectionStrings:Hungtbph03461_sqlConnectionString5 %>' DeleteCommand="DELETE FROM [SanPham] WHERE [MaSP] = @MaSP" InsertCommand="INSERT INTO [SanPham] ([MaSP], [MaLoai], [DonVi], [TenSP], [GiaSP], [MoTa]) VALUES (@MaSP, @MaLoai, @DonVi, @TenSP, @GiaSP, @MoTa)" SelectCommand="SELECT [MaSP], [MaLoai], [DonVi], [TenSP], [GiaSP], [MoTa] FROM [SanPham]" UpdateCommand="UPDATE [SanPham] SET [MaLoai] = @MaLoai, [DonVi] = @DonVi, [TenSP] = @TenSP, [GiaSP] = @GiaSP, [MoTa] = @MoTa WHERE [MaSP] = @MaSP">
                 <DeleteParameters>
                     <asp:Parameter Name="MaSP" Type="Int32"></asp:Parameter>
                 </DeleteParameters>
                 <InsertParameters>
                     <asp:Parameter Name="MaSP" Type="Int32"></asp:Parameter>
                     <asp:Parameter Name="MaLoai" Type="Int32"></asp:Parameter>
                     <asp:Parameter Name="DonVi" Type="String"></asp:Parameter>
                     <asp:Parameter Name="TenSP" Type="String"></asp:Parameter>
                     <asp:Parameter Name="GiaSP" Type="Int32"></asp:Parameter>
                     <asp:Parameter Name="MoTa" Type="String"></asp:Parameter>
                 </InsertParameters>
                 <UpdateParameters>
                     <asp:Parameter Name="MaLoai" Type="Int32"></asp:Parameter>
                     <asp:Parameter Name="DonVi" Type="String"></asp:Parameter>
                     <asp:Parameter Name="TenSP" Type="String"></asp:Parameter>
                     <asp:Parameter Name="GiaSP" Type="Int32"></asp:Parameter>
                     <asp:Parameter Name="MoTa" Type="String"></asp:Parameter>
                     <asp:Parameter Name="MaSP" Type="Int32"></asp:Parameter>
                 </UpdateParameters>
             </asp:SqlDataSource>
         </li>
        <li class="for">
            <h5>HÓA ĐƠN</h5>
            <asp:DetailsView ID="DetailsView4" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="MaHD" DataSourceID="SqlDataSource4" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>

                <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True"></CommandRowStyle>

                <EditRowStyle BackColor="#2461BF"></EditRowStyle>

                <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True"></FieldHeaderStyle>
                <Fields>
                    <asp:BoundField DataField="MaHD" HeaderText="MaHD" ReadOnly="True" SortExpression="MaHD"></asp:BoundField>
                    <asp:BoundField DataField="SoHoaDon" HeaderText="SoHoaDon" SortExpression="SoHoaDon"></asp:BoundField>
                    <asp:BoundField DataField="MaKH" HeaderText="MaKH" SortExpression="MaKH"></asp:BoundField>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True"></asp:CommandField>
                </Fields>
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"></FooterStyle>

                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"></HeaderStyle>

                <PagerStyle HorizontalAlign="Center" BackColor="#2461BF" ForeColor="White"></PagerStyle>

                <RowStyle BackColor="#EFF3FB"></RowStyle>
            </asp:DetailsView>
            <asp:SqlDataSource runat="server" ID="SqlDataSource4" ConnectionString='<%$ ConnectionStrings:Hungtbph03461_sqlConnectionString6 %>' DeleteCommand="DELETE FROM [HoaDon] WHERE [MaHD] = @MaHD" InsertCommand="INSERT INTO [HoaDon] ([MaHD], [SoHoaDon], [MaKH]) VALUES (@MaHD, @SoHoaDon, @MaKH)" SelectCommand="SELECT [MaHD], [SoHoaDon], [MaKH] FROM [HoaDon]" UpdateCommand="UPDATE [HoaDon] SET [SoHoaDon] = @SoHoaDon, [MaKH] = @MaKH WHERE [MaHD] = @MaHD">
                <DeleteParameters>
                    <asp:Parameter Name="MaHD" Type="Int32"></asp:Parameter>
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MaHD" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="SoHoaDon" Type="String"></asp:Parameter>
                    <asp:Parameter Name="MaKH" Type="Int32"></asp:Parameter>
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="SoHoaDon" Type="String"></asp:Parameter>
                    <asp:Parameter Name="MaKH" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="MaHD" Type="Int32"></asp:Parameter>
                </UpdateParameters>
            </asp:SqlDataSource>
        </li>
        <li class="five">
            <h5>HÓA ĐƠN CHI TIẾT</h5>
            <asp:DetailsView ID="DetailsView5" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="MaCT" DataSourceID="SqlDataSource5" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>

                <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True"></CommandRowStyle>

                <EditRowStyle BackColor="#2461BF"></EditRowStyle>

                <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True"></FieldHeaderStyle>
                <Fields>
                    <asp:BoundField DataField="MaCT" HeaderText="MaCT" ReadOnly="True" SortExpression="MaCT"></asp:BoundField>
                    <asp:BoundField DataField="MaHD" HeaderText="MaHD" SortExpression="MaHD"></asp:BoundField>
                    <asp:BoundField DataField="MaSP" HeaderText="MaSP" SortExpression="MaSP"></asp:BoundField>
                    <asp:BoundField DataField="ThanhTien" HeaderText="ThanhTien" SortExpression="ThanhTien"></asp:BoundField>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True"></asp:CommandField>
                </Fields>
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"></FooterStyle>

                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"></HeaderStyle>

                <PagerStyle HorizontalAlign="Center" BackColor="#2461BF" ForeColor="White"></PagerStyle>

                <RowStyle BackColor="#EFF3FB"></RowStyle>
            </asp:DetailsView>
            <asp:SqlDataSource runat="server" ID="SqlDataSource5" ConnectionString='<%$ ConnectionStrings:Hungtbph03461_sqlConnectionString7 %>' DeleteCommand="DELETE FROM [ChiTietHD] WHERE [MaCT] = @MaCT" InsertCommand="INSERT INTO [ChiTietHD] ([MaCT], [MaHD], [MaSP], [ThanhTien]) VALUES (@MaCT, @MaHD, @MaSP, @ThanhTien)" SelectCommand="SELECT [MaCT], [MaHD], [MaSP], [ThanhTien] FROM [ChiTietHD]" UpdateCommand="UPDATE [ChiTietHD] SET [MaHD] = @MaHD, [MaSP] = @MaSP, [ThanhTien] = @ThanhTien WHERE [MaCT] = @MaCT">
                <DeleteParameters>
                    <asp:Parameter Name="MaCT" Type="Int32"></asp:Parameter>
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MaCT" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="MaHD" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="MaSP" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="ThanhTien" Type="Int32"></asp:Parameter>
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="MaHD" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="MaSP" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="ThanhTien" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="MaCT" Type="Int32"></asp:Parameter>
                </UpdateParameters>
            </asp:SqlDataSource>
        </li>
    </ol>
</asp:Content>
