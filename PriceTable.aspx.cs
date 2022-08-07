using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class PriceTable : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Userid"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        LibraryDb.SelectCommand = "SELECT * FROM [Price_Table] Where [CreatedByUserId]='" + Session["UserId"].ToString() + "'";
    }
    protected void BtnAdd_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["TradeConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand("insert into [Price_Table] (Distance,Per_km_Price,CreatedByUserId) values (@Distance,@Per_km_Price,@Userid)", conn);
           
            cmd.Parameters.AddWithValue("@Userid", Session["Userid"].ToString());
            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();
                GridView2.DataBind();
                
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            finally
            {
                conn.Close();
            }


        }
        catch (Exception ex)
        {
            
        }
    }
}