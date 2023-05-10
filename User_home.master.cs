using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.ClientServices;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class user_userhome : System.Web.UI.MasterPage
{
    public DatabaseLayer x = new DatabaseLayer();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            disp_city();
        }
    }
    //public void disp_country()
    //{
    //    cmb_country.Text = "";
    //    cmb_country.DataSource = x.Fetch_Data("select * from Country");
    //    cmb_country.ValueField = "Country_Id";
    //    cmb_country.TextField = "Country_Name";
    //    cmb_country.DataBind();
    //}
    public void disp_city()
    {
        cmb_city.Text = "";
        // cmb_city.DataSource = x.Fetch_Data("select * from City where State_Id=" + cmb_state.Value);
        cmb_city.DataSource = x.Fetch_Data("select * from City ");
        cmb_city.ValueField = "City_Id";
        cmb_city.TextField = "City_Name";
        cmb_city.DataBind();
    }

    public void disp_area()
    {
        SqlConnection con1 = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Faz\Desktop\sem6\App_Data\medicare.mdf;Integrated Security=True;User Instance=True");
        con1.Open();
        SqlCommand cmd2 = new SqlCommand("select * from Area where City_Id =" + cmb_city.Value, con1);

        SqlDataAdapter da = new SqlDataAdapter(cmd2);
        DataSet ds = new DataSet();
        //cmb_area.DataSource = x.Fetch_Data("select * from Area where City_Id=" + cmb_city.Value);
        da.Fill(ds);
        cmb_area .DataSource = ds.Tables[0];
        cmb_area.ValueField = "Area_Id";
        cmb_area.TextField = "Area_Name";
        cmb_area.DataBind();





        //connection();
        //con.Open();
        //SqlCommand cmd2 = new SqlCommand("select * from CityMaster where StateId =" + DropDownList3.SelectedItem.Value, con);
        //SqlDataAdapter da = new SqlDataAdapter(cmd2);
        //DataSet ds = new DataSet();
        //da.Fill(ds);
        //DropDownList4.DataSource = ds.Tables[0];
        //DropDownList4.DataTextField = "City";
        //DropDownList4.DataValueField = "CityId";
        //DropDownList4.DataBind();
        //DropDownList4.Items.Insert(0, "--Select City--");
        //con.Close();



    }
  
  

    protected void btCreate_Click(object sender, EventArgs e)
    {

        SqlConnection con1 = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Faz\Desktop\sem6\App_Data\medicare.mdf;Integrated Security=True;User Instance=True");
        string str1;
        str1 = "Select Count(*) from UserReg where Email='" +tbEmail .Text  + "'";

        SqlCommand cmd1 = new SqlCommand(str1, con1);

        con1.Open();
        string Gender;
        if (rbmale .Checked == true)
        {
            Gender = "male";
        }
        else
        {
            Gender = "female";
        }

        string country, area, city;
      //  country = cmb_country.SelectedItem.Text;
     //  area = cmb_area.SelectedItem .Text  ;



     //   city = cmb_city.SelectedItem .Text;



        







        int i;
        i = Convert.ToInt16(cmd1.ExecuteScalar());
        if (i == 1)
        {
            
           //clientscript.RegisterStartupScript(Page.GetType(), "validation", "<script  language='javascript'>alert('Username is Already Exist')</script>"); ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script  language='javascript'>alert('Username is Already Exist')</script>");
            //  erorr_msg .Text  = "Username is Already Exist";
            MessageBox.Show("Username is Already Exist");

            return;
        }

        SqlConnection con2 = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Faz\Desktop\sem6\App_Data\medicare.mdf;Integrated Security=True;User Instance=True");
        string str;
        str = "Insert into UserReg values('" + tbUsername .Text  + "','" + tbPass1 .Text  + "','" + tbConfPass2 .Text  + "','" +tbEmail .Text  + "'," + tbmobile.Text  + ",'" +tbaddress .Text  + "','" + Gender  + "','" +cmb_city .Text    + "','" +cmb_area .SelectedItem .Text + "' )";


        SqlCommand cmd = new SqlCommand(str, con2);
        con2.Open();

        cmd.ExecuteNonQuery();
        MessageBox.Show("Registration Successfully");
        //  erorr_msg .Text  = "Registration Successfully";
    //    ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script  language='javascript'>alert('Registration Successfully')</script>");
        Session["UserName"] = tbUsername.Text;
        Session["Password"] = tbPass1.Text;
        Session["ConfirmPassword"] = tbConfPass2.Text;
        Session["Email"] = tbEmail.Text; 
        Session["Mobile"] = tbmobile .Text ;
        Session["Gender"] = Gender;
        Session["Address"] = tbaddress.Text;
        Session["Area"] = cmb_area.Text  ;

        Session["Ctiy"] = cmb_city.Text ;


        MessageBox.Show("Insert Successfully");

        //   erorr_msg .Text  = "Insert Successfully";
     //   ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script  language='javascript'>alert('Insert Successfully')</script>");
        //msgbox.show();
        
        Response.Redirect("Admin_Login.aspx");

   

    }
    protected void AccessDataSourceCountry_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void btCancel2_Click(object sender, EventArgs e)
    {
           
    }
    protected void btOK_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Faz\Desktop\sem6\App_Data\medicare.mdf;Integrated Security=True;User Instance=True");
            string str;
            str = "select count(*) from UserReg where UserName='" + tbLogin .Text  + "' and Password='" + tbPassword .Text  + "'";
            SqlCommand cmd = new SqlCommand(str, con);
            con.Open();

            int i = Convert.ToInt16(cmd.ExecuteScalar());
            if (i == 1)
            {
           //     Label1.Text = "login successfull..";
            //    Session["un"] = TextBox1.Text;
                Response.Redirect("Home.aspx");
              //  TextBox1.Text = "";
             //   TextBox2.Text = "";
            }
            else
            {
             //   ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script  language='javascript'>alert('Invalid Username and Password')</script>");

             //   Label1.Text = "username or password incorrect";
            }

        }
        catch
        {
         //   Label1.Text = "some problem";
        }


    }

    protected void cmb_city_SelectedIndexChanged(object sender, EventArgs e)
    {
        disp_area();

    }
    protected void cmb_area_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void btCancel_Click(object sender, EventArgs e)
    {

    }
}
