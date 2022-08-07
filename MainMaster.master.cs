using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MainMaster : System.Web.UI.MasterPage
{
    public string myrole = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Userid"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        try
        {
            if (Convert.ToBoolean(Session["IsAuth"]))
            {
                switch (Session["Role"].ToString())
                {
                    
                    case "Manager":
                        myrole = "<ul class='nav navbar-nav' id='mManager'><li><a href='Home.aspx'>Home</a></li><li><a href='PriceTable.aspx'>PriceTable</a></li><li><a href='EnergySold.aspx'>EnergySold</a></li><li><a href='EnergySoldTable.aspx'>EnergySoldTable</a></li></ul>";
                        break;
                    case "Admin":
                        myrole = "<ul class='nav navbar-nav' id='mAdmin'><li><a href='Home.aspx'>Home</a></li><li><a href='AddUser.aspx'>AddUser</a><li><li><a href='EnergyTrading.aspx'>EnergyTrading</a></li><li><a href='PriceTable.aspx'>PriceTable</a></li></ul>";
                        break;
                    default:
                        break;
                }
            }
        }
        catch (Exception EX)
        {

            Response.Redirect("Login.aspx");
        }
    }
}
