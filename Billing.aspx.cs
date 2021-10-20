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
    public partial class Billing1 : System.Web.UI.Page
    {
        private int bill_id = 1;

        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

             bill_id = Convert.ToInt32(Request.QueryString["bill_id"]);

            int total = 0;

            using (SqlConnection con = new SqlConnection(@"Data Source = HR-DIGITAL-MARK; Initial Catalog = store_management; Integrated Security = True"))
            {
                try
                {
                    con.Open();


                    SqlCommand cmd1 = new SqlCommand("SELECT priduct_bill.product_id, priduct_bill.quantity, product_details.price FROM priduct_bill INNER JOIN product_details ON priduct_bill.product_id = product_details.product_Id WHERE(priduct_bill.bill_Id = "+bill_id+"')", con);
                    SqlDataReader rdr = cmd1.ExecuteReader();

                    int price = 0;
                    int quantity = 0;
                    int p_id = 1;
                    while (rdr.Read())
                    {

                        price = Convert.ToInt32(rdr["price"]);
                        quantity = Convert.ToInt32(rdr["quantity"]);

                        total = total + (price * quantity);
                        Response.Write("<script>alert('Using Update 3.');</script>");

                    }



                    rdr.Close();
                    rdr.Dispose();


                    SqlDataAdapter sda = new SqlDataAdapter("SELECT priduct_bill.product_id, product_details.name, priduct_bill.quantity, product_details.price, product_details.warranty, product_details.rating FROM priduct_bill INNER JOIN product_details ON priduct_bill.product_id = product_details.product_Id WHERE(priduct_bill.bill_Id = " + bill_id + "')", con);
                    DataTable DT = new DataTable();
                    sda.Fill(DT);
                    GridView3.DataSource = DT;
                    GridView3.DataBind();



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

            Label_Bill_ID.Text = bill_id.ToString();
            Label_Total.Text = total.ToString();

            

        }








        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(@"Data Source = HR-DIGITAL-MARK; Initial Catalog = store_management; Integrated Security = True"))
            {
                try
                {
                    con.Open();


                    SqlCommand cmd1 = new SqlCommand("SELECT * FROM [product_details] WHERE name = '" + DropDownList2.SelectedItem.Value.ToString() + "'", con);
                    SqlDataReader rdr = cmd1.ExecuteReader();

                    int p_id = 1;
                    while (rdr.Read())
                    {

                        p_id = Convert.ToInt32(rdr["product_id"]);
                        Response.Write("<script>alert('Using Update 3.');</script>");

                    }
                    rdr.Close();
                    rdr.Dispose();

                    SqlCommand cmd = new SqlCommand(@"INSERT INTO [priduct_bill] ([bill_Id],[product_id],[quantity]) VALUES ('" + bill_id + "','"+p_id +"','" + Convert.ToInt32(quantity.Text) + "')", con);
                    int k = cmd.ExecuteNonQuery();
 
                    if (k != 0)
                    {
                        Response.Write("<script>alert('Instered Successfully.');</script>");
                        Response.Redirect("~/Billing.aspx?bill_id="+bill_id);

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

            /*  using (SqlConnection con = new SqlConnection(@"Data Source = HR-DIGITAL-MARK; Initial Catalog = store_management; Integrated Security = True"))
              { 
                  try
                  {
                      con.Open();
                      int ronak = 0;

                      SqlCommand cmd1 = new SqlCommand("SELECT * FROM product_details WHERE name = " + DropDownList2.SelectedValue.ToString(), con);
                      SqlDataReader rdr = cmd1.ExecuteReader();
                      Response.Write("<script>alert('Using Update 2.');</script>");

                      while (rdr.Read())
                      {
                          DropDownList2.SelectedItem.Value = rdr["name"].ToString();
                          price.Text = rdr["price"].ToString();

                          Response.Write("<script>alert('Using Update 3.');</script>");

                      }



                      SqlCommand cmd = new SqlCommand("INSERT INTO [priduct_bill]  VALUES ( " 1 + "," + DropDownList2.SelectedItem.Value + "," + quantity), con);

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
              */
        }
    }
}
    
   
