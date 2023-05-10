using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class madicare_Admin_Medicine : System.Web.UI.Page
{

    public DatabaseLayer x = new DatabaseLayer();
    protected void Page_Load(object sender, EventArgs e)
    {
       

    }
  

    protected void btCreate_Click(object sender, EventArgs e)
    {

        //FilePhoto.SaveAs(Server.MapPath(".") + @"/../Medicine_Img/" + FilePhoto.FileName);
        //string img1;
        //img1 = "../Medicine_Img/" + FilePhoto.FileName;
        int maxval = x.GetMaxVal("Medicine_Id", "Medicine");

        int maxval1 = x.GetMaxVal("Medicine_Id+100", "Medicine");
        if (FilePhoto.HasFile & FileUpload1.HasFile)
        {
            String path, ext, ext1;
          path = Server .MapPath ("Medicine_Img");

           path = Server .MapPath ("Medicine_Img");
            ext = System.IO.Path.GetExtension(FilePhoto.FileName);
            ext1 = System.IO.Path.GetExtension(FilePhoto.FileName);
          // FilePhoto.SaveAs(path + maxval + ext);
           

            FileUpload1.SaveAs(path  + maxval1 + ext1);
            SqlConnection con2 = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Faz\Desktop\sem6\App_Data\medicare.mdf;Integrated Security=True;User Instance=True");
            string str;
            str = "Insert into Medicine values('" + tbmedicinename.Text + "','" + TextBox1.Text + "','"+ maxval +ext  +" ','" +  maxval1 + ext1 + "')";


            SqlCommand cmd = new SqlCommand(str, con2);
            con2.Open();

            cmd.ExecuteNonQuery();
            //  MessageBox.Show("insert Successfully");

            //  erorr_msg .Text  = "Registration Successfully";
            // ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script  language='javascript'>alert('Registration Successfully')</script>");
        }
        Session["Hospital_Name"] = tbmedicinename.Text;
        //Session["Email"] = tbEmail.Text;
        //Session["Mobile"] = tbmobile.Text;
        //Session["Address"] = tbaddress.Text;
        Session["Description"] = TextBox1 .Text ;
        //Session["Area"] = cmb_area.SelectedItem.Text;

        //Session["Ctiy"] = cmb_city.Text;


      //  MessageBox.Show("Insert Successfully");

        //   erorr_msg .Text  = "Insert Successfully";
        ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script  language='javascript'>alert('Insert Successfully')</script>");
        //msgbox.show();

        //  Response.Redirect("Admin_Login.aspx");

    }
    protected void btCancel2_Click(object sender, EventArgs e)
    {

    }
}