using System;
using System.Collections.Generic;
using System.Text;
using MetroSet_UI.Forms;
using System.IO;

namespace CienAppWF
{
    public partial class BaseForm : MetroSetForm
    {
        protected string _connStr = "";

        public BaseForm()
        {
            var database = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Database1.mdf");
            _connStr = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename="+database+";Integrated Security=True";
        }

    }
}
