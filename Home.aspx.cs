using System;
using Microsoft.AnalysisServices.AdomdClient;
using System.Data.Sql;
using System.Data;
public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        AdomdConnection con = new AdomdConnection("Data Source=PC;Initial Catalog=ADM_HW");
        con.Open();
        AdomdCommand com = new AdomdCommand();
        com.Connection = con;
        string s = @"SELECT disease From [HeartID3MM]
NATURAL PREDICTION JOIN
(SELECT '" + TextBox1.Text+@"' AS [Age],
  '" + DropDownList1.SelectedItem.Text + @"' AS [Chest Pain Type],
  '" + TextBox2.Text + @"' AS [Rest Blood Pressure],
  '" + DropDownList2.SelectedItem.Text + @"' AS [Blood Sugar],
  '" + DropDownList4.SelectedItem.Text + @"' AS [Exercice Angina],
  '" + TextBox3.Text + @"' AS [Max Heart Rate],
  '" + DropDownList3.SelectedItem.Text + @"' AS [Rest Electro]) AS t";
         com.CommandText = s;
        AdomdDataReader dr = com.ExecuteReader();
        if (dr.Read())
        {
            if (dr[0] !=null)
                Label2.Text= dr[0].ToString();
        }
        dr.Close();
        con.Close();
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Label1.Text = " "; Label2.Text = " ";
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        AdomdConnection con = new AdomdConnection("Data Source = PC; Initial Catalog = ADM_HW");
        con.Open();
        AdomdCommand com = new AdomdCommand();
        com.Connection = con;
        string s = @"select flattened predicthistogram(disease) from [HeartBMM]
natural prediction join
(select '" + TextBox1.Text + @"' AS [Age],
  '" + DropDownList1.SelectedItem.Text + @"' AS [Chest Pain Type],
  '" + TextBox2.Text + @"' AS [Rest Blood Pressure],
  '" + DropDownList2.SelectedItem.Text + @"' AS [Blood Sugar],
  '" + DropDownList4.SelectedItem.Text + @"' AS [Exercice Angina],
  '" + TextBox3.Text + @"' AS [Max Heart Rate],
  '" + DropDownList3.SelectedItem.Text + @"' AS [Rest Electro]) AS t"; 

        com.CommandText = s;
        AdomdDataReader dr = com.ExecuteReader();
        while (dr.Read())
        {
            if (dr[0] != null)
                Label1.Text += dr[0].ToString() + " " +dr[2].ToString();
        }
        dr.Close();
        con.Close();
    }
}