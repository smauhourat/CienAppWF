using System;
using System.Data;
using System.Windows.Forms;
using Microsoft.Data.SqlClient;
using MetroSet_UI.Controls;

namespace CienAppWF
{
    public partial class QuestionsMetro : BaseForm
    {
        //private readonly string CONN_STR = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=E:\\Personales\\CienAppWF\\Database1.mdf;Integrated Security=True";
        private SqlConnection dbConnection;

        private int _idSurvey;
        private string _surveyName;

        public QuestionsMetro(int idSurvey, string surveyName)
        {
            InitializeComponent();
            AddAnswerHandler();
            _idSurvey = idSurvey;
            _surveyName = surveyName;
        }

        private void AddAnswerHandler()
        {
            btnRespuesta_1_1.Click += new EventHandler(btnRespuestaClick);
            btnRespuesta_1_2.Click += new EventHandler(btnRespuestaClick);
            btnRespuesta_1_3.Click += new EventHandler(btnRespuestaClick);
            btnRespuesta_1_4.Click += new EventHandler(btnRespuestaClick);
            btnRespuesta_1_5.Click += new EventHandler(btnRespuestaClick);

            btnRespuesta_2_1.Click += new EventHandler(btnRespuestaClick);
            btnRespuesta_2_2.Click += new EventHandler(btnRespuestaClick);
            btnRespuesta_2_3.Click += new EventHandler(btnRespuestaClick);
            btnRespuesta_2_4.Click += new EventHandler(btnRespuestaClick);
            btnRespuesta_2_5.Click += new EventHandler(btnRespuestaClick);

            btnRespuesta_3_1.Click += new EventHandler(btnRespuestaClick);
            btnRespuesta_3_2.Click += new EventHandler(btnRespuestaClick);
            btnRespuesta_3_3.Click += new EventHandler(btnRespuestaClick);
            btnRespuesta_3_4.Click += new EventHandler(btnRespuestaClick);
            btnRespuesta_3_5.Click += new EventHandler(btnRespuestaClick);

            btnRespuesta_4_1.Click += new EventHandler(btnRespuestaClick);
            btnRespuesta_4_2.Click += new EventHandler(btnRespuestaClick);
            btnRespuesta_4_3.Click += new EventHandler(btnRespuestaClick);
            btnRespuesta_4_4.Click += new EventHandler(btnRespuestaClick);
            btnRespuesta_4_5.Click += new EventHandler(btnRespuestaClick);

            btnRespuesta_5_1.Click += new EventHandler(btnRespuestaClick);
            btnRespuesta_5_2.Click += new EventHandler(btnRespuestaClick);
            btnRespuesta_5_3.Click += new EventHandler(btnRespuestaClick);
            btnRespuesta_5_4.Click += new EventHandler(btnRespuestaClick);
            btnRespuesta_5_5.Click += new EventHandler(btnRespuestaClick);

            btnRespuesta_6_1.Click += new EventHandler(btnRespuestaClick);
            btnRespuesta_6_2.Click += new EventHandler(btnRespuestaClick);
            btnRespuesta_6_3.Click += new EventHandler(btnRespuestaClick);
            btnRespuesta_6_4.Click += new EventHandler(btnRespuestaClick);
            btnRespuesta_6_5.Click += new EventHandler(btnRespuestaClick);

            btnRespuesta_7_1.Click += new EventHandler(btnRespuestaClick);
            btnRespuesta_7_2.Click += new EventHandler(btnRespuestaClick);
            btnRespuesta_7_3.Click += new EventHandler(btnRespuestaClick);
            btnRespuesta_7_4.Click += new EventHandler(btnRespuestaClick);
            btnRespuesta_7_5.Click += new EventHandler(btnRespuestaClick);

            btnRespuesta_8_1.Click += new EventHandler(btnRespuestaClick);
            btnRespuesta_8_2.Click += new EventHandler(btnRespuestaClick);
            btnRespuesta_8_3.Click += new EventHandler(btnRespuestaClick);
            btnRespuesta_8_4.Click += new EventHandler(btnRespuestaClick);
            btnRespuesta_8_5.Click += new EventHandler(btnRespuestaClick);

            btnRespuesta_9_1.Click += new EventHandler(btnRespuestaClick);
            btnRespuesta_9_2.Click += new EventHandler(btnRespuestaClick);
            btnRespuesta_9_3.Click += new EventHandler(btnRespuestaClick);
            btnRespuesta_9_4.Click += new EventHandler(btnRespuestaClick);
            btnRespuesta_9_5.Click += new EventHandler(btnRespuestaClick);

            btnRespuesta_10_1.Click += new EventHandler(btnRespuestaClick);
            btnRespuesta_10_2.Click += new EventHandler(btnRespuestaClick);
            btnRespuesta_10_3.Click += new EventHandler(btnRespuestaClick);
            btnRespuesta_10_4.Click += new EventHandler(btnRespuestaClick);
            btnRespuesta_10_5.Click += new EventHandler(btnRespuestaClick);

            lblPregunta_1.Width = 868;
            lblPregunta_2.Width = 868;
            lblPregunta_3.Width = 868;
            lblPregunta_4.Width = 868;
            lblPregunta_5.Width = 868;
            lblPregunta_6.Width = 868; 
            lblPregunta_7.Width = 868;
            lblPregunta_8.Width = 868;
            lblPregunta_9.Width = 868;
            lblPregunta_10.Width = 868;

            lblPregunta_1.Font = new System.Drawing.Font("Microsoft Sans Serif", 12);
            lblPregunta_2.Font = new System.Drawing.Font("Microsoft Sans Serif", 12);
            lblPregunta_3.Font = new System.Drawing.Font("Microsoft Sans Serif", 12);
            lblPregunta_4.Font = new System.Drawing.Font("Microsoft Sans Serif", 12);
            lblPregunta_5.Font = new System.Drawing.Font("Microsoft Sans Serif", 12);
            lblPregunta_6.Font = new System.Drawing.Font("Microsoft Sans Serif", 12);
            lblPregunta_7.Font = new System.Drawing.Font("Microsoft Sans Serif", 12);
            lblPregunta_8.Font = new System.Drawing.Font("Microsoft Sans Serif", 12);
            lblPregunta_9.Font = new System.Drawing.Font("Microsoft Sans Serif", 12);
            lblPregunta_10.Font = new System.Drawing.Font("Microsoft Sans Serif", 12);

            btnRespuesta_1_1.Font = new System.Drawing.Font("Microsoft Sans Serif", 16);
            btnRespuesta_1_2.Font = new System.Drawing.Font("Microsoft Sans Serif", 16);
            btnRespuesta_1_3.Font = new System.Drawing.Font("Microsoft Sans Serif", 16);
            btnRespuesta_1_4.Font = new System.Drawing.Font("Microsoft Sans Serif", 16);
            btnRespuesta_1_5.Font = new System.Drawing.Font("Microsoft Sans Serif", 16);

            btnRespuesta_2_1.Font = new System.Drawing.Font("Microsoft Sans Serif", 16);
            btnRespuesta_2_2.Font = new System.Drawing.Font("Microsoft Sans Serif", 16);
            btnRespuesta_2_3.Font = new System.Drawing.Font("Microsoft Sans Serif", 16);
            btnRespuesta_2_4.Font = new System.Drawing.Font("Microsoft Sans Serif", 16);
            btnRespuesta_2_5.Font = new System.Drawing.Font("Microsoft Sans Serif", 16);

            btnRespuesta_3_1.Font = new System.Drawing.Font("Microsoft Sans Serif", 16);
            btnRespuesta_3_2.Font = new System.Drawing.Font("Microsoft Sans Serif", 16);
            btnRespuesta_3_3.Font = new System.Drawing.Font("Microsoft Sans Serif", 16);
            btnRespuesta_3_4.Font = new System.Drawing.Font("Microsoft Sans Serif", 16);
            btnRespuesta_3_5.Font = new System.Drawing.Font("Microsoft Sans Serif", 16);

            btnRespuesta_4_1.Font = new System.Drawing.Font("Microsoft Sans Serif", 16);
            btnRespuesta_4_2.Font = new System.Drawing.Font("Microsoft Sans Serif", 16);
            btnRespuesta_4_3.Font = new System.Drawing.Font("Microsoft Sans Serif", 16);
            btnRespuesta_4_4.Font = new System.Drawing.Font("Microsoft Sans Serif", 16);
            btnRespuesta_4_5.Font = new System.Drawing.Font("Microsoft Sans Serif", 16);

            btnRespuesta_5_1.Font = new System.Drawing.Font("Microsoft Sans Serif", 16);
            btnRespuesta_5_2.Font = new System.Drawing.Font("Microsoft Sans Serif", 16);
            btnRespuesta_5_3.Font = new System.Drawing.Font("Microsoft Sans Serif", 16);
            btnRespuesta_5_4.Font = new System.Drawing.Font("Microsoft Sans Serif", 16);
            btnRespuesta_5_5.Font = new System.Drawing.Font("Microsoft Sans Serif", 16);

            btnRespuesta_6_1.Font = new System.Drawing.Font("Microsoft Sans Serif", 16);
            btnRespuesta_6_2.Font = new System.Drawing.Font("Microsoft Sans Serif", 16);
            btnRespuesta_6_3.Font = new System.Drawing.Font("Microsoft Sans Serif", 16);
            btnRespuesta_6_4.Font = new System.Drawing.Font("Microsoft Sans Serif", 16);
            btnRespuesta_6_5.Font = new System.Drawing.Font("Microsoft Sans Serif", 16);

            btnRespuesta_7_1.Font = new System.Drawing.Font("Microsoft Sans Serif", 16);
            btnRespuesta_7_2.Font = new System.Drawing.Font("Microsoft Sans Serif", 16);
            btnRespuesta_7_3.Font = new System.Drawing.Font("Microsoft Sans Serif", 16);
            btnRespuesta_7_4.Font = new System.Drawing.Font("Microsoft Sans Serif", 16);
            btnRespuesta_7_5.Font = new System.Drawing.Font("Microsoft Sans Serif", 16);

            btnRespuesta_8_1.Font = new System.Drawing.Font("Microsoft Sans Serif", 16);
            btnRespuesta_8_2.Font = new System.Drawing.Font("Microsoft Sans Serif", 16);
            btnRespuesta_8_3.Font = new System.Drawing.Font("Microsoft Sans Serif", 16);
            btnRespuesta_8_4.Font = new System.Drawing.Font("Microsoft Sans Serif", 16);
            btnRespuesta_8_5.Font = new System.Drawing.Font("Microsoft Sans Serif", 16);

            btnRespuesta_9_1.Font = new System.Drawing.Font("Microsoft Sans Serif", 16);
            btnRespuesta_9_2.Font = new System.Drawing.Font("Microsoft Sans Serif", 16);
            btnRespuesta_9_3.Font = new System.Drawing.Font("Microsoft Sans Serif", 16);
            btnRespuesta_9_4.Font = new System.Drawing.Font("Microsoft Sans Serif", 16);
            btnRespuesta_9_5.Font = new System.Drawing.Font("Microsoft Sans Serif", 16);

            btnRespuesta_10_1.Font = new System.Drawing.Font("Microsoft Sans Serif", 16);
            btnRespuesta_10_2.Font = new System.Drawing.Font("Microsoft Sans Serif", 16);
            btnRespuesta_10_3.Font = new System.Drawing.Font("Microsoft Sans Serif", 16);
            btnRespuesta_10_4.Font = new System.Drawing.Font("Microsoft Sans Serif", 16);
            btnRespuesta_10_5.Font = new System.Drawing.Font("Microsoft Sans Serif", 16);
        }

        private void btnRespuestaClick(object sender, EventArgs e)
        {
            ButtonTag tag = (ButtonTag)((MetroSetButton)sender).Tag;
            if (tag.Hide)
            {
                tag.Hide = false;
                ((MetroSetButton)sender).Text = tag.Answer;
                ((MetroSetButton)sender).NormalColor = System.Drawing.Color.ForestGreen;
            }
            else
            {
                tag.Hide = true;
                ((MetroSetButton)sender).Text = tag.Number;
                ((MetroSetButton)sender).NormalColor = System.Drawing.Color.FromArgb(((int)(((byte)(65)))), ((int)(((byte)(177)))), ((int)(((byte)(225)))));
            }
        }

        private void QuestionsMetro_Load(object sender, EventArgs e)
        {
            this.Text += " " + this._surveyName;
            dbConnection = new SqlConnection(base._connStr);
            dbConnection.Open();

            GetAllQuestions(this._idSurvey);
        }

        private void GetAllQuestions(int idSurvey)
        {
            SqlCommand dbCommand = new SqlCommand("SELECT TOP 10 Id, Pregunta FROM Question WHERE IdSurvey = " + idSurvey.ToString(), dbConnection);
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
                    ctrl.Text = indice_2.ToString();
                    ctrl.Tag = new ButtonTag(indice_2.ToString(), e["Respuesta"].ToString() + " - " + "#" + e["Puntaje"].ToString());
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

        private void metroSetTabControl1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

    }
}
