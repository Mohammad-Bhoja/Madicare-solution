using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class madicare_Admin_ProductInfo : System.Web.UI.Page
{

    public DatabaseLayer x = new DatabaseLayer();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btCreate_Click(object sender, EventArgs e)
    {

        //SqlConnection con1 = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Faz\Desktop\sem6\App_Data\medicare.mdf;Integrated Security=True;User Instance=True");
        //string str1;
        //str1 = "Select Count(*) from UserReg where Email='" + tbEmail.Text + "'";

        //SqlCommand cmd1 = new SqlCommand(str1, con1);

        //con1.Open();
        //string Gender;
        ////if (rbmale.Checked == true)
        ////{
        ////    Gender = "male";
        ////}
        ////else
        ////{
        ////    Gender = "female";
        ////}

        //string country, area, city;
        ////  country = cmb_country.SelectedItem.Text;
        ////  area = cmb_area.SelectedItem .Text  ;



        ////   city = cmb_city.SelectedItem .Text;











        //int i;
        //i = Convert.ToInt16(cmd1.ExecuteScalar());
        //if (i == 1)
        //{

        //    //clientscript.RegisterStartupScript(Page.GetType(), "validation", "<script  language='javascript'>alert('Username is Already Exist')</script>"); ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script  language='javascript'>alert('Username is Already Exist')</script>");
        //    //  erorr_msg .Text  = "Username is Already Exist";
        //    MessageBox.Show("Hospital  is Already Exist");

        //    return;
        //}
        int maxval = x.GetMaxVal("Medicine_Id", "Medicine");
        int maxval1 = x.GetMaxVal("Medicine_Id+100", "Medicine");
        if (FilePhoto.HasFile & FileUpload1.HasFile)
        {
            String path, ext, ext1;
            path = Server.MapPath("Product_Img");
            ext = System.IO.Path.GetExtension(FilePhoto.FileName);
            ext1 = System.IO.Path.GetExtension(FilePhoto.FileName);
            FilePhoto.SaveAs(path + @"\" + maxval + ext);
            FileUpload1.SaveAs(path + @"\" + maxval1 + ext1);
            SqlConnection con2 = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Faz\Desktop\sem6\App_Data\medicare.mdf;Integrated Security=True;User Instance=True");
            string str;
            str = "Insert into Product_Info values('" +tbproductname .Text  + "','" + tbdescription.Text + "','" + maxval + ext + "','" + maxval1 + ext1 + "' )";


            SqlCommand cmd = new SqlCommand(str, con2);
            con2.Open();

            cmd.ExecuteNonQuery();
            //  MessageBox.Show("insert Successfully");

            //  erorr_msg .Text  = "Registration Successfully";
            // ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script  language='javascript'>alert('Registration Successfully')</script>");
        }
        Session["Product_Name"] = tbproductname.Text;
        //Session["Email"] = tbEmail.Text;
        //Session["Mobile"] = tbmobile.Text;
        //Session["Address"] = tbaddress.Text;
        Session["Description"] = tbdescription.Text;
        //Session["Area"] = cmb_area.SelectedItem.Text;

        //Session["Ctiy"] = cmb_city.Text;


      //  MessageBox.Show("Insert Successfully");

        //   erorr_msg .Text  = "Insert Successfully";
        ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script  language='javascript'>alert('Insert Successfully')</script>");
        //msgbox.show();

        //  Response.Redirect("Admin_Login.aspx");

    }
    protected void tbproductname_TextChanged(object sender, EventArgs e)
    {

    }
}