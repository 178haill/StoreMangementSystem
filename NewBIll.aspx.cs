using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Text;

namespace StoreManagementSystem
{
    public partial class NewBIll : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           


        }

        private void displayAlertBox(string message)
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("<script type = 'text/javascript'>");
            sb.Append("window.onload = function(){");
            sb.Append("alert('");
            sb.Append(message);
            sb.Append("')};");
            sb.Append("</script>");
            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
        }

        protected void Generate_Bill_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(@"Data Source = HR-DIGITAL-MARK; Initial Catalog = store_management; Integrated Security = True"))
            {
                try
                {
                    con.Open();


                    String orderCurrentDate = DateTime.Now.ToString("yyyy-MM-dd", System.Globalization.CultureInfo.InvariantCulture);
                   // String  Current_date = DateTime.Now.ToString("dd/MM/yyyy");
                    String query = "INSERT INTO [billing_details] ([customer_id],[discount],[total_amount],[date]) VALUES('" + Convert.ToInt32(cid) + "'," + 0 + "," + 0 + ",'" + orderCurrentDate + "')";

                    displayAlertBox(query);
                    SqlCommand cmd = new SqlCommand(query, con);
                    int k = cmd.ExecuteNonQuery();
                    if (k != 0)
                    {

                        int bill_id = Convert.ToInt32(cmd.Parameters["bill_id"]);
                        Response.Write(" < script>alert('Instered Successfully.');</script>");
                        Response.Redirect("~/Billing.aspx?bill_id=" + bill_id);

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

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("CustomerDetails.aspx");
        }
    }
}