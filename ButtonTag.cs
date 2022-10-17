using System;
using System.Collections.Generic;
using System.Text;

namespace CienAppWF
{
    class ButtonTag
    {
        private bool _hide = true;
        private string _number;
        private string _answer;

        public bool Hide
        {
            get { return _hide; }
            set { _hide = value; }
        }

        public string Number
        {
            get { return _number; }
            set { _number = value; }
        }

        public string Answer
        {
            get { return _answer; }
            set { _answer = value; }
        }

        public ButtonTag(string number, string answer)
        {
            this._number = number;
            this._answer = answer;
        }
    }
}
