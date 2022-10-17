using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using MetroSet_UI.Forms;
using Microsoft.Data.SqlClient;
using MetroSet_UI.Controls;

namespace CienAppWF
{
    public partial class QuestionsMetro : MetroSetForm
    {
        private readonly string CONN_STR = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=D:\\Projects\\cienargentinosapp\\CienAppWF\\Database1.mdf;Integrated Security=True";
        private SqlConnection dbConnection;

        private int _idSurvey;
        private string _surveyName;

        public QuestionsMetro(int idSurvey, string surveyName)
        {
            InitializeComponent();
            _idSurvey = idSurvey;
            _surveyName = surveyName;
        }

        private void QuestionsMetro_Load(object sender, EventArgs e)
        {
            this.Text += " " + this._surveyName;
            dbConnection = new SqlConnection(CONN_STR);
            dbConnection.Open();

            GetAllQuestions(this._idSurvey);
        }

        private void GetAllQuestions(int idSurvey)
        {
            SqlCommand dbCommand = new SqlCommand("SELECT TOP 2 Id, Pregunta FROM Question WHERE IdSurvey = " + idSurvey.ToString(), dbConnection);
            dbCommand.CommandType = CommandType.Text;

            SqlDataAdapter dbAdapter = new SqlDataAdapter(dbCommand);
            DataTable dt = new DataTable();
            dbAdapter.Fill(dt);

            foreach (DataRow e in dt.Rows)
            {
                int indice = int.Parse(e["Id"].ToString()) - (10*(idSurvey-1));
                MetroSetLabel ctrl = (MetroSetLabel)this.Controls.Find("lblPregunta_" + indice.ToString(), true)[0];
                if (ctrl != null)
                {
                    ctrl.Text = e["Pregunta"].ToString();
                    GetAllAnswers(int.Parse(e["Id"].ToString()));
                }
            }
        }

        private void GetAllAnswers(int idQuestion)
        {
            SqlCommand dbCommand = new SqlCommand("SELECT A.Id, B.IdSurvey, A.Respuesta, A.Puntaje FROM Answer A INNER JOIN Question B on A.IdQuestion = B.Id WHERE A.IdQuestion = " + idQuestion.ToString(), dbConnection);
            dbCommand.CommandType = CommandType.Text;

            SqlDataAdapter dbAdapter = new SqlDataAdapter(dbCommand);
            DataTable dt = new DataTable();
            dbAdapter.Fill(dt);

            foreach (DataRow e in dt.Rows)
            {
                int indice_1 = idQuestion - (10 * (int.Parse(e["IdSurvey"].ToString()) - 1));
                int indice_2 = int.Parse(e["Id"].ToString()) - (5 * (idQuestion - 1));
                MetroSetButton ctrl = (MetroSetButton)this.Controls.Find("btnRespuesta_"+ indice_1.ToString()+"_" + indice_2.ToString(), true)[0];
                if (ctrl != null)
                {
                    ctrl.Text = e["Respuesta"].ToString() + " - " + "#" + e["Puntaje"].ToString();
                }
            }
        }

            private void QuestionsMetro_FormClosed(object sender, FormClosedEventArgs e)
        {
            if (dbConnection != null)
            {
                dbConnection.Close();
            }
        }

        private void btnRespuesta_1_Click(object sender, EventArgs e)
        {
            btnRespuesta_1_1.NormalColor = Color.FromName("Green");
            btnRespuesta_1_1.Text = "Usar el celular";
        }

        private void metroSetTabControl1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
