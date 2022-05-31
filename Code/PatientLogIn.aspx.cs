using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SE_Project.DAL;

namespace SE_Project
{
    public partial class PatientLogIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["idoriginal"] = "";
        }

        protected void loginFunct(object sender, EventArgs e)
        {
            string pemail = email.Text;
            string password = pass.Text;

            myDAL objmyDAl = new myDAL();

            int status = 0;
            int id = 0;

            status = objmyDAl.CheckLoginPatient(pemail, password, ref id);  //status tells us whether logged in or errors

            if (status == 0)  //logged in from procedure
            {
                Session["idoriginal"] = id;


                Response.BufferOutput = true;
                Response.Redirect("UserProfile.aspx");
                return;

            }


            else if (status == 1) //
            {
                Label1.Text = ("Sorry This Username doesn't exist");
            }

            else if (status == 2)
            {
                Label2.Text = ("Password is Incorrect");
            }

            else if (status == -1)
            {
                Label2.Text = ("User Cannot Login");
            }
        }
    }
}