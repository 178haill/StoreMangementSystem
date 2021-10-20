using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Product_details
{
    public partial class index : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("data source=(localdb)\\MSSQLLocalDB; initial catalog=database4; integrated security=true;");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into product_details(product_Id,name,price,stock,rating,warranty) values('"+ TextBox6.Text + "','"+ TextBox1.Text + "','"+ TextBox2.Text + "', '"+ TextBox3.Text + "', '"+ TextBox4.Text + "' , '" + TextBox5.Text + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
           
            SqlCommand cmd = new SqlCommand("Update product_details set name = '" + TextBox1.Text + "' , price = '" + TextBox2.Text + "'  , stock = '" + TextBox3.Text + "' ,  rating = '" + TextBox4.Text + "' , warranty = '" + TextBox5.Text + "' where product_ID = '"+TextBox6.Text+"' ", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

            SqlCommand cmd = new SqlCommand("delete from product_details where product_ID = '" + TextBox6.Text + "' ", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

    }
}