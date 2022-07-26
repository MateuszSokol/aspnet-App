using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace netcoreasp
{
    // informacje do zalogowania
    //email: admin
    //haslo: admin

    public partial class WebForm1 : System.Web.UI.Page
    {
        bool isLog;
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();

            if (!isLog)
            {
                TextBox0.Enabled = false;
                TextBox1.Enabled = false;
                TextBox2.Enabled = false;
                TextBox3.Enabled = false;
                TextBox4.Enabled = false;
                DropDownList1.Enabled = false;
                TextBox6.Enabled = false;
                TextBox7.Enabled = false;
                deleteIdTextBox.Enabled = false;
                Button1.Enabled = false;
                DeleteContactButton.Enabled = false;
            }
           

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand command = new SqlCommand("INSERT INTO Users VALUES ('"+TextBox0.Text+"','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + DropDownList1.SelectedValue + "','" + TextBox6.Text + "','" + TextBox7.Text + "')", con);

            command.ExecuteNonQuery();
            con.Close();

            GridView1.DataBind();
            TextBox0.Text = "";
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            DropDownList1.SelectedValue = null;
            TextBox6.Text = "";
            TextBox7.Text = "";

        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            if(EmailLoginTextBox.Text.Equals("admin") && PasswordLoginTextBox.Text.Equals("admin"))
            {
                
                isLog = true;
                Button1.Enabled = true;
                DeleteContactButton.Enabled = true;
                deleteIdTextBox.Enabled = true;
                TextBox0.Enabled = true;
                TextBox1.Enabled = true;
                TextBox2.Enabled = true;
                TextBox3.Enabled = true;
                TextBox4.Enabled = true;
                DropDownList1.Enabled = true;
                TextBox6.Enabled = true;
                TextBox7.Enabled = true;

          
            }
            else
            {
                isLog = false;
            }
       
        }
       

        protected void DeleteContactButton_Click(object sender, EventArgs e)
        {

        
            SqlCommand sqlCommandDelete = new SqlCommand("DELETE FROM Users WHERE Id = '"+deleteIdTextBox.Text+"'",con);

    

            sqlCommandDelete.ExecuteNonQuery();
            con.Close();
            GridView1.DataBind();
        }
    }
}