using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class EnergySold : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Userid"] == null)
        {
            Response.Redirect("Login.aspx");
        }

    }
    protected void btnBuy_Click(object sender, EventArgs e)
    {
        try
        {
            
            SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["TradeConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand("INSERT INTO dbo.[EnergyS_Table] (Name,ProducerId,timestamp,FiscalCode,QuantityEnergy,SelectDistance,ProducerName,Select_DM_Per_Km,Cost) Values (@Name,@ProducerId,@timestamp,@FiscalCode,@QuantityEnergy,@SelectDistance,@ProducerName,@Select_DM_Per_Km,@Cost)", conn);

            cmd.Parameters.AddWithValue("@Name", txtName.Text);
            
            cmd.Parameters.AddWithValue("@ProducerId", Session["UserId"].ToString());
            cmd.Parameters.AddWithValue("@timestamp", DateTime.Now.ToString("yyyy/MM/dd HH:mm:ss"));
            cmd.Parameters.AddWithValue("@FiscalCode", txtFiscalCode.Text);
            cmd.Parameters.AddWithValue("@QuantityEnergy", txtQuantityEnergy.Text);
            cmd.Parameters.AddWithValue("@ProducerName", DropDownList2.SelectedValue);
            cmd.Parameters.AddWithValue("@SelectDistance", DropDownList3.SelectedValue);
            cmd.Parameters.AddWithValue("@Select_DM_Per_Km", DropDownList4.SelectedValue);
            cmd.Parameters.AddWithValue("@Cost", txtCost.Text);
            

            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();
                GridView3.DataBind();
               
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
            Response.Write(ex.Message);
        }
    }
}