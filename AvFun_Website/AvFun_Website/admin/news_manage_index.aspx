﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="news_manage_index.aspx.cs" Inherits="AvFun_Website.admin.news_manage_index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <asp:Label ID="lblLoginStatus" runat="server" Text=""></asp:Label>
    <form id="AdminLoggedForm" runat="server">
    <div id="adminNewsListDiv" align="center">
    
        <asp:HyperLink ID="urlAddNews" runat="server" 
            NavigateUrl="~/admin/AddNews.aspx" Target="_blank">发布新闻</asp:HyperLink>
        <br />
        <asp:Label ID="lblKeyWords" runat="server" Text="搜索关键字："></asp:Label>
        <asp:TextBox ID="txtKeyWord" runat="server" MaxLength="32"></asp:TextBox>
        <asp:Label ID="lblScope" runat="server" Text="范围："></asp:Label>
        <asp:DropDownList ID="dpListKeyScope" runat="server">
            <asp:ListItem Selected="True" Value="1">标题</asp:ListItem>
            <asp:ListItem Value="2">作者</asp:ListItem>
            <asp:ListItem Value="3">内容</asp:ListItem>
        </asp:DropDownList>
        <asp:Button ID="btnSearch" runat="server" onclick="btnSearch_Click" Text="搜索" />
        <br />
        <asp:GridView ID="AdminNewsList" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" 
            DataSourceID="AdminNewsListDataSource" DataKeyNames="news_id" >
            <Columns>
                <asp:BoundField DataField="admin_nickname" HeaderText="admin_nickname" 
                    SortExpression="admin_nickname" />
                <asp:BoundField DataField="news_id" HeaderText="news_id" 
                    SortExpression="news_id" ReadOnly="True" />
                <asp:BoundField DataField="news_title" HeaderText="news_title" 
                    SortExpression="news_title" />
                <asp:BoundField DataField="news_publish_date" HeaderText="news_publish_date" 
                    SortExpression="news_publish_date" />
                <asp:CheckBoxField DataField="news_isDeleted" HeaderText="news_isDeleted" 
                    SortExpression="news_isDeleted" />
                <asp:CheckBoxField DataField="news_isOnIndex" HeaderText="news_isOnIndex" 
                    SortExpression="news_isOnIndex" />
<asp:BoundField DataField="news_image" HeaderText="news_image" 
                    SortExpression="news_image"></asp:BoundField>
                <asp:BoundField DataField="news_click_count" HeaderText="news_click_count" 
                    SortExpression="news_click_count" />
                <asp:BoundField DataField="news_content" HeaderText="news_content" 
                    SortExpression="news_content" />
                <asp:BoundField DataField="news_author" HeaderText="news_author" 
                    SortExpression="news_author" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="AdminNewsListDataSource" runat="server" 
            ConnectionString="<%$ ConnectionStrings:AvfunNewsConnectingString %>" 
            SelectCommand="SELECT * FROM [AdminNewsList]" >
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>