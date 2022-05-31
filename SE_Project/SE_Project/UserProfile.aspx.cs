using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SE_Project.DAL;

namespace SE_Project
{
    public partial class UserProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Patientinfoo(sender, e);
        }

        protected void Patientinfoo(object sender, EventArgs e)
        {

            myDAL objmyDAl = new myDAL();

            int uid = (int)Session["idoriginal"];

            string name = "";
            int age = 0;
            string email = "";
            string gender = "";
            float weight = 0;
            float height = 0;
            float weightgoal = 0;
            float watergoal = 0;
            float caloriegoal = 0;

            

            int status = objmyDAl.getUserProfile(uid, ref name,ref age,ref email,ref gender,ref weight,ref height,ref caloriegoal,ref watergoal,ref weightgoal);

            if (status == -1)
            {
                Response.Write("<script>alert('There was some error in retrieving the Profile Info.');</script>");
            }

            else if (status == 0)
            {

                

            }


            return;
        }

        protected void UpdateUserprofile(object sender, EventArgs e)
        {

            myDAL objmyDAl = new myDAL();

            int uid = (int)Session["idoriginal"];

            string name = "";
            int age = 0;
            string email = "";
            string gender = "";
            float weight = 0;
            float height = 0;



            int status = objmyDAl.UpdateUserProfile(uid, ref name, ref age, ref email, ref gender, ref weight, ref height);

            if (status == -1)
            {
                Response.Write("<script>alert('There was some error in retrieving the Profile Info.');</script>");
            }

            else if (status == 0)
            {

                Patientinfoo(sender, e);

            }


            return;
        }

    }
}