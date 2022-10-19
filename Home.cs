using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using MetroSet_UI.Forms;

namespace CienAppWF
{
    public partial class Home : MetroSetForm
    {
        public Home()
        {
            InitializeComponent();
            this.Text = "Cien Preguntas.....";
            this.ForeColor = Color.Black;
        }

        private void Home_Load(object sender, EventArgs e)
        {
            SurveyMetro frmSurvey = new SurveyMetro();
            // Set the Parent Form of the Child window.
            frmSurvey.MdiParent = this;
            // Display the new form.
            frmSurvey.Show();
        }
    }
}
