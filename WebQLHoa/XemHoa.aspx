<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="XemHoa.aspx.cs" Inherits="WebQLHoa.XemHoa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   

    <asp:ListView ID="LvXe" runat="server" DataSourceID="dsTheLoai" DataSource="Id">
           
            <ItemTemplate>
                 <div class=" col-md-3 mt-2 text-center">
                    <a href="#">
                        <img src="hinh.jpg/<%# Eval("Hinh") %>"style="width:200px;object-fit:cover"/>
                    </a>
                    <br />
                    <%# Eval("TenXe") %><br/>
                    Giá bán: <span class="price"><%# Eval("Dongia","{0:#,##0} VNĐ") %></span><br/>
                    <asp:Button ID="btnAddToCard" runat="server" Text="Add To Card" CommandArgument='<%# Eval("MaXe") %>' class="btn btn-success"
                        OnClick="btnAddToCard_Click"  />
                </div>
            </ItemTemplate>   
             <EmptyDataTemplate>
                  <div class="alert alert-warning">
                        Không có dữ liệu
                  </div>
             </EmptyDataTemplate>
            <LayoutTemplate>
                 <div class="row">
                      <div runat="server" id="itemPlaceHolder"></div>
                 </div>
                <div class="text-center w-100 mt-3 pt-3 pb-3">
                    Trang <asp:DataPager ID="dpXe" runat="server" PageSize="6" >
                        <Fields>
                            <asp:NumericPagerField />
                        </Fields>
                    </asp:DataPager>
                </div>
            </LayoutTemplate>
        </asp:ListView>
    


    <asp:SqlDataSource ID="dstheloai" runat="server" ConnectionString="<%$ ConnectionStrings:QLXeDBConnectionString %>" SelectCommand="SELECT * FROM [ChuDe]">
</asp:SqlDataSource>

    <asp:SqlDataSource ID="dsXe" runat="server" ConnectionString="<%$ ConnectionStrings:QLXeDBConnectionString %>"
        SelectCommand="SELECT * FROM [Xe]">
    </asp:SqlDataSource>
</asp:Content>
