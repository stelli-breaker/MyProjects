<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" dir="rtl">
<head runat="server">
    <link href="css/jquery.fancybox-1.3.4.css" rel="stylesheet" />
    <link href="css/kickstart-buttons.css" rel="stylesheet" />
    <link href="css/kickstart-forms.css" rel="stylesheet" />
    <link href="css/kickstart-grid.css" rel="stylesheet" />
    <link href="css/kickstart-menus.css" rel="stylesheet" />
    <link href="css/kickstart-slideshow.css" rel="stylesheet" />
    <link href="css/kickstart.css" rel="stylesheet" />
    <link href="css/prettify.css" rel="stylesheet" />
    <link href="css/tiptip.css" rel="stylesheet" />
    <script src="js/kickstart.js"></script>
    <title></title>
</head>
<body style="font-size:22px;">
    <form id="form1" runat="server">
    <div><br /><br /><br /><br /><br /><br />
    &nbsp&nbsp&nbsp&nbsp<label for="TextBox1">أدخل العمر :</label><br />
&nbsp&nbsp&nbsp&nbsp<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br /><br />
    &nbsp&nbsp&nbsp&nbsp<label for="DropDownList1">نوع ألم الصدر :</label>
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="chest_pain_type" style="font-size:18px;" DataValueField="chest_pain_type"></asp:DropDownList><br /><br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ADM_HW_FinalConnectionString %>" SelectCommand="SELECT DISTINCT [chest_pain_type] FROM [Heart]"></asp:SqlDataSource>
    &nbsp&nbsp&nbsp&nbsp<label for="TextBox2">اختبار ضغط الدم في الوضع الطبيعي :</label><br />
&nbsp&nbsp&nbsp&nbsp<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br /><br />
            &nbsp&nbsp&nbsp&nbsp<label for="DropDownList2">يوجد سكر في الدم :</label>
        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="blood_sugar" style="font-size:18px;" DataValueField="blood_sugar"></asp:DropDownList><br /><br />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ADM_HW_FinalConnectionString %>" SelectCommand="SELECT DISTINCT [blood_sugar] FROM [Heart]"></asp:SqlDataSource>
            &nbsp&nbsp&nbsp&nbsp<label for="DropDownList3">نتيجة تخطيط القلب :</label>
        <asp:DropDownList ID="DropDownList3" style="font-size:18px;" runat="server" DataSourceID="SqlDataSource3" DataTextField="rest_electro" DataValueField="rest_electro"></asp:DropDownList><br /><br />
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ADM_HW_FinalConnectionString %>" SelectCommand="SELECT DISTINCT [rest_electro] FROM [Heart]"></asp:SqlDataSource>
       &nbsp&nbsp&nbsp&nbsp<label for="TextBox3">أقصى عدد نبضات للقلب :</label><br />
       &nbsp&nbsp&nbsp&nbsp<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><br /><br />
                &nbsp&nbsp&nbsp&nbsp<label for="DropDownList4">وجود ذبحات صدرية :</label>
        <asp:DropDownList ID="DropDownList4" style="font-size:18px;" runat="server" DataSourceID="SqlDataSource4" DataTextField="exercice_angina" DataValueField="exercice_angina"></asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ADM_HW_FinalConnectionString %>" SelectCommand="SELECT DISTINCT [exercice_angina] FROM [Heart]"></asp:SqlDataSource>
       <br /><br /> &nbsp&nbsp&nbsp&nbsp<asp:Button ID="Button1" runat="server" CssClass="blue" style="font-size:18px;" Text="Bayes" OnClick="Button1_Click" /> &nbsp&nbsp&nbsp&nbsp<asp:Label ID="Label1" runat="server" Text="Result"></asp:Label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<br />
     &nbsp&nbsp&nbsp&nbsp<asp:Button ID="Button2" runat="server" CssClass="orange" style="font-size:18px;" Text="ID3" OnClick="Button2_Click" />&nbsp&nbsp&nbsp&nbsp<asp:Label ID="Label2" runat="server" Text="Result"></asp:Label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<br />
        &nbsp&nbsp&nbsp&nbsp<asp:Button ID="Button3" CssClass="green" style="font-size:18px;" runat="server" Text="Reset" OnClick="Button3_Click" />
        
        </div>
    </form>
</body>
</html>
