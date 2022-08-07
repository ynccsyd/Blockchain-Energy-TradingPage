using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class AddUser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Userid"] == null)
        {
            Response.Redirect("Login.aspx");
        }



    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["TradeConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand("insert into Users_Table (UserName,Pwd,Role,CreatedUserId,FiscalCode,UserType,UserAddress,ConsumedEnergy,ProducedEnergy) values (@name,@pwd,@role,@adminUserid,@FiscalCode,@UserType,@UserAddress,@ConsumedEnergy,@ProducedEnergy)", conn);
            cmd.Parameters.AddWithValue("@name", txtStudentId.Text);
            cmd.Parameters.AddWithValue("@pwd", txtStudentName.Text);
            cmd.Parameters.AddWithValue("@role", "Manager");
            cmd.Parameters.AddWithValue("@adminUserid", "1");
            cmd.Parameters.AddWithValue("@FiscalCode", txtFiscalCode.Text);
            cmd.Parameters.AddWithValue("@UserType",DropDownList1.SelectedValue);
            cmd.Parameters.AddWithValue("@UserAddress", txtUserAddress.Text);
            cmd.Parameters.AddWithValue("@ProducedEnergy", txtProducedEnergy.Text);
            cmd.Parameters.AddWithValue("@ConsumedEnergy", txtConsumedEnergy.Text);
            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();
                GridView1.DataBind();
                txtStudentId.Text = "";
                txtStudentName.Text = "";
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