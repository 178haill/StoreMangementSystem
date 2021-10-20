using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace StoreManagementSystem
{
    public partial class CustomerDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }
        protected void Entered_Customer_Details_Click(object sender, EventArgs e)
        {

            using (SqlConnection con = new SqlConnection(@"Data Source = HR-DIGITAL-MARK; Initial Catalog = store_management; Integrated Security = True"))
            {
                try
                {
                    con.Open();
                    int ronak = 0;
                    SqlCommand cmd = new SqlCommand("INSERT INTO [customer_details]  VALUES ('" + cname.Text + "','" + cgender.SelectedValue.ToString() + "','" + cnumber.Text + "','" + ccity.Text + "','" + ronak + "','" + csalary.Text + "','" + cmail.Text + "','" + cage.Text + "')", con);

                    int k = cmd.ExecuteNonQuery();

                    if (k != 0)
                    {
                        Response.Write("<script>alert('Instered Successfully.');</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('Instered  Not Successfully.');</script>");
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }


                finally
                {
                    con.Close();
                }


            }

        }
    }
}