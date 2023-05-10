using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevExpress.Web.ASPxUploadControl;
using DevExpress.Web.ASPxClasses.Internal;
using System.IO;
using System.Data;
using System.Data.SqlClient;

public partial class madicare_Admin_Hospital : System.Web.UI.Page
{

    //public DatabaseLayer x = new DatabaseLayer();



    public DatabaseLayer x = new DatabaseLayer();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            disp_city();
        }
    }

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
        cmb_area.DataSource = ds.Tables[0];
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


    protected void cmb_city_SelectedIndexChanged(object sender, EventArgs e)
    {
        disp_area();

    }



    protected void btCreate_Click(object sender, EventArgs e)
    {

        //SqlConnection con1 = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Faz\Desktop\sem6\App_Data\medicare.mdf;Integrated Security=True;User Instance=True");
        //string str1;
        //str1 = "Select Count(*) from UserReg where Email='" + tbEmail.Text + "'";

        //SqlCommand cmd1 = new SqlCommand(str1, con1);

        //con1.Open();
        //string Gender;
        //if (rbmale.Checked == true)
        //{
        //    Gender = "male";
        //}
        //else
        //{
        //    Gender = "female";
        //}

        //string country, area, city;
        //  country = cmb_country.SelectedItem.Text;
        //  area = cmb_area.SelectedItem .Text  ;



        //   city = cmb_city.SelectedItem .Text;











        //int i;
        //i = Convert.ToInt16(cmd1.ExecuteScalar());
        //if (i == 1)
        //{

        //    //clientscript.RegisterStartupScript(Page.GetType(), "validation", "<script  language='javascript'>alert('Username is Already Exist')</script>"); ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script  language='javascript'>alert('Username is Already Exist')</script>");
        //    //  erorr_msg .Text  = "Username is Already Exist";
        //    MessageBox.Show("Hospital  is Already Exist");

        //    return;
        //}
        int maxval = x.GetMaxVal("Hospital_Id", "Hospital");
        int maxval1 = x.GetMaxVal("Hospital_Id+100", "Hospital");
        if (FilePhoto.HasFile )
        {
            String path, ext;
            path = Server.MapPath("Hospital_Img");
            ext = System.IO.Path.GetExtension(FilePhoto.FileName);
            FilePhoto.SaveAs(path + @"\" + maxval + ext);
            SqlConnection con2 = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Faz\Desktop\sem6\App_Data\medicare.mdf;Integrated Security=True;User Instance=True");
            string str;
            str = "Insert into Hospital values('" + tbhospitaname.Text + "'," + tbmobile.Text + ",'" + tbaddress.Text + "','" + tbdescription.Text + "','" + cmb_city.Text + "','" + cmb_area.SelectedItem.Text + "','" + maxval + ext + "' )";


            SqlCommand cmd = new SqlCommand(str, con2);
            con2.Open();

            cmd.ExecuteNonQuery();
            //  MessageBox.Show("insert Successfully");

            //  erorr_msg .Text  = "Registration Successfully";
            // ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script  language='javascript'>alert('Registration Successfully')</script>");
        }
        Session["Hospital_Name"] = tbhospitaname.Text;
        Session["Mobile"] = tbmobile.Text;
        Session["Address"] = tbaddress.Text;
        Session["Description"] = tbdescription.Text;
        Session["Area"] = cmb_area.SelectedItem.Text;

        Session["Ctiy"] = cmb_city.Text;


        //   MessageBox.Show("Insert Successfully");

        //   erorr_msg .Text  = "Insert Successfully";
        ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script  language='javascript'>alert('Insert Successfully')</script>");
        //msgbox.show();

        //  Response.Redirect("Admin_Login.aspx");

    }




    protected void cmb_area_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}


