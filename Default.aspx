<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CompanyWebService._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>ASP.NET</h1>
        <p class="lead">Welcome&nbsp; Welcome</p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Getting started</h2>
            <p>
                Welcome to Sana&#39;s Project in Asp.net</p>
            <p>
                &nbsp;</p>
            <p>
                &nbsp;<asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="Deptno" DataSourceID="SqlDataSource2" EmptyDataText="There are no data records to display." ForeColor="Black" GridLines="None">
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    <Columns>
                        <asp:BoundField DataField="Deptno" HeaderText="Deptno" ReadOnly="True" SortExpression="Deptno" />
                        <asp:BoundField DataField="Dname" HeaderText="Dname" SortExpression="Dname" />
                        <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
                    </Columns>
                    <FooterStyle BackColor="Tan" />
                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                    <SortedAscendingCellStyle BackColor="#FAFAE7" />
                    <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                    <SortedDescendingCellStyle BackColor="#E1DB9C" />
                    <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CompanyConnectionString1 %>" DeleteCommand="DELETE FROM [Department] WHERE [Deptno] = @Deptno" InsertCommand="INSERT INTO [Department] ([Deptno], [Dname], [Location]) VALUES (@Deptno, @Dname, @Location)" ProviderName="<%$ ConnectionStrings:CompanyConnectionString1.ProviderName %>" SelectCommand="SELECT [Deptno], [Dname], [Location] FROM [Department]" UpdateCommand="UPDATE [Department] SET [Dname] = @Dname, [Location] = @Location WHERE [Deptno] = @Deptno">
                    <DeleteParameters>
                        <asp:Parameter Name="Deptno" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Deptno" Type="Int32" />
                        <asp:Parameter Name="Dname" Type="String" />
                        <asp:Parameter Name="Location" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Dname" Type="String" />
                        <asp:Parameter Name="Location" Type="String" />
                        <asp:Parameter Name="Deptno" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </p>
            <p>
                &nbsp;</p>
            <p>
                &nbsp;</p>
            <p>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Empno" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None" Width="152px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="Empno" HeaderText="Empno" ReadOnly="True" SortExpression="Empno" />
                        <asp:BoundField DataField="Ename" HeaderText="Ename" SortExpression="Ename" />
                        <asp:BoundField DataField="Deptno" HeaderText="Deptno" SortExpression="Deptno" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CompanyConnectionString1 %>" DeleteCommand="DELETE FROM [Employee] WHERE [Empno] = @Empno" InsertCommand="INSERT INTO [Employee] ([Empno], [Ename], [Deptno]) VALUES (@Empno, @Ename, @Deptno)" ProviderName="<%$ ConnectionStrings:CompanyConnectionString1.ProviderName %>" SelectCommand="SELECT [Empno], [Ename], [Deptno] FROM [Employee]" UpdateCommand="UPDATE [Employee] SET [Ename] = @Ename, [Deptno] = @Deptno WHERE [Empno] = @Empno">
                    <DeleteParameters>
                        <asp:Parameter Name="Empno" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Empno" Type="Int32" />
                        <asp:Parameter Name="Ename" Type="String" />
                        <asp:Parameter Name="Deptno" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Ename" Type="String" />
                        <asp:Parameter Name="Deptno" Type="Int32" />
                        <asp:Parameter Name="Empno" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </p>
            <pre class="ng-binding" style="box-sizing: border-box; outline: 0px; overflow: auto; font-size: 13px; line-height: 1.42857; display: block; color: rgb(51, 51, 51); font-family: Menlo, Monaco, Consolas, &quot;Courier New&quot;, monospace; padding: 9.5px 30px 9.5px 9.5px; margin: 0px 0px 10px; word-break: break-all; word-wrap: break-word; background-color: rgb(245, 245, 245); border: 1px solid rgb(204, 204, 204); border-radius: 0px; white-space: pre-wrap; position: relative; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 300; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;">&lt;iframe
    width=&quot;350&quot;
    height=&quot;430&quot;
    src=&quot;https://console.api.ai/api-client/demo/embedded/661f406a-5669-469a-9a0f-b5eb3e376174&quot;&gt;
&lt;/iframe&gt;
    </pre>
            <p>
                &nbsp;</p>
            <p>
                &nbsp;</p>
        </div>
        <div class="col-md-4">
            <p>
                &nbsp;</p>
        </div>
        \</div>

</asp:Content>
