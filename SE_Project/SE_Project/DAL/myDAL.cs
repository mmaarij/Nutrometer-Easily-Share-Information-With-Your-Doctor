using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace SE_Project.DAL
{
    public class myDAL
    {
        private static readonly string connString =
System.Configuration.ConfigurationManager.ConnectionStrings["sqlCon2"].ConnectionString;

        //login by checking from table 
        public int CheckLogin(string id1, string Password, ref int id)
        {
            SqlConnection con = new SqlConnection(connString);
            con.Open();

            try
            {

                SqlCommand cmd1 = new SqlCommand("NutritionistLogIn", con);
                cmd1.CommandType = CommandType.StoredProcedure;

                cmd1.Parameters.Add("@Nemail", SqlDbType.VarChar, 50).Value = id1;
                cmd1.Parameters.Add("@password", SqlDbType.VarChar, 20).Value = Password;
                cmd1.Parameters.Add("@status", SqlDbType.Int).Direction = ParameterDirection.Output;
                cmd1.Parameters.Add("@ID", SqlDbType.Int).Direction = ParameterDirection.Output;

                cmd1.ExecuteNonQuery();

                int status = (int)cmd1.Parameters["@status"].Value;
                id = (int)cmd1.Parameters["@ID"].Value;

                return status;
            }

            catch (SqlException ex)
            {
                return -1;
            }

            finally
            {
                con.Close();
            }
        }

        //login by checking from table 
        public int CheckLoginPatient(string id1, string Password, ref int id)
        {
            SqlConnection con = new SqlConnection(connString);
            con.Open();

            try
            {

                SqlCommand cmd1 = new SqlCommand("PatientLogIn", con);
                cmd1.CommandType = CommandType.StoredProcedure;

                cmd1.Parameters.Add("@Pemail", SqlDbType.VarChar, 50).Value = id1;
                cmd1.Parameters.Add("@password", SqlDbType.VarChar, 20).Value = Password;
                cmd1.Parameters.Add("@status", SqlDbType.Int).Direction = ParameterDirection.Output;
                cmd1.Parameters.Add("@ID", SqlDbType.Int).Direction = ParameterDirection.Output;

                cmd1.ExecuteNonQuery();

                int status = (int)cmd1.Parameters["@status"].Value;
                id = (int)cmd1.Parameters["@ID"].Value;

                return status;
            }

            catch (SqlException ex)
            {
                return -1;
            }

            finally
            {
                con.Close();
            }
        }

        public int getUserProfile(int uID, ref string name, ref int age,ref string email, ref string gender,ref float weight,ref float height,ref float cg,ref float watg,ref float wg )
        {
            SqlConnection con = new SqlConnection(connString);
            con.Open();


            try
            {

                SqlCommand cmd1 = new SqlCommand("PatientProfile", con);

                cmd1.CommandType = CommandType.StoredProcedure;


                cmd1.Parameters.Add("@id", SqlDbType.Int).Value = uID;

                cmd1.Parameters.Add("@name", SqlDbType.VarChar, 50).Direction = ParameterDirection.Output;
                cmd1.Parameters.Add("@email", SqlDbType.VarChar, 50).Direction = ParameterDirection.Output;
                cmd1.Parameters.Add("@gender", SqlDbType.VarChar, 50).Direction = ParameterDirection.Output;
                cmd1.Parameters.Add("@age", SqlDbType.Int).Direction = ParameterDirection.Output;
                cmd1.Parameters.Add("@weight", SqlDbType.Float).Direction = ParameterDirection.Output;
                cmd1.Parameters.Add("@height", SqlDbType.Float).Direction = ParameterDirection.Output;
                cmd1.Parameters.Add("@water_goal", SqlDbType.Float).Direction = ParameterDirection.Output;
                cmd1.Parameters.Add("@calories_goal", SqlDbType.Float).Direction = ParameterDirection.Output;
                cmd1.Parameters.Add("@weight_goal", SqlDbType.Float).Direction = ParameterDirection.Output;


                cmd1.ExecuteNonQuery();

                name = (string)cmd1.Parameters["@name"].Value;
                email = (string)cmd1.Parameters["@email"].Value;
                gender = (string)cmd1.Parameters["@gender"].Value;
                age = (int)cmd1.Parameters["@age"].Value;
                weight = (float)((double)cmd1.Parameters["@weight"].Value);
                height = (float)((double)cmd1.Parameters["@height"].Value);
                cg = (float)((double)cmd1.Parameters["@calories_goal"].Value);
                watg = (float)((double)cmd1.Parameters["@water_goal"].Value);
                wg = (float)((double)cmd1.Parameters["@weight_goal"].Value);
                

                return 0;
            }

            catch (SqlException ex)
            {
                return -1;
            }

            finally
            {
                con.Close();
            }
        }

        public int UpdateUserProfile(int uID, ref string name, ref int age, ref string email, ref string gender, ref float weight, ref float height)
        {
            SqlConnection con = new SqlConnection(connString);
            con.Open();


            try
            {

                SqlCommand cmd1 = new SqlCommand("UpdatePatientProfile", con);

                cmd1.CommandType = CommandType.StoredProcedure;


                cmd1.Parameters.Add("@id", SqlDbType.Int).Value = uID;

                cmd1.Parameters.Add("@name", SqlDbType.VarChar, 50).Value = name;
                cmd1.Parameters.Add("@email", SqlDbType.VarChar, 50).Value = email;
                cmd1.Parameters.Add("@gender", SqlDbType.VarChar, 50).Value = gender;
                cmd1.Parameters.Add("@age", SqlDbType.Int).Value = age;
                cmd1.Parameters.Add("@weight", SqlDbType.Float).Value = weight;
                cmd1.Parameters.Add("@height", SqlDbType.Float).Value = height;              

                cmd1.ExecuteNonQuery();

                return 0;
            }

            catch (SqlException ex)
            {
                return -1;
            }

            finally
            {
                con.Close();
            }
        }

    }
}