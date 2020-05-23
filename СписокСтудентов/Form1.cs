using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.IO;

namespace WindowsFormsApp1
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void Button4_Click(object sender, EventArgs e)
        {
            string temp1 = Rich.Text + "\n";

            StreamWriter f = new StreamWriter(@"C:\Users\Yaroslav\Desktop\m.txt", true, System.Text.Encoding.Default);
            f.Write(temp1);

            f.Close();
        }

        private void Button2_Click(object sender, EventArgs e)
        {
            {
                string labelout = Name.Text + " " + SecondName.Text + " " + Date.Text + "\n";
                string temp = textBox1.Text + " ";
                string temp1 = textBox2.Text + " ";
                string temp2 = textBox3.Text + " ";

                if (Rich.Text == "")
                {
                    Rich.AppendText(labelout);
                    Rich.AppendText(temp);
                    Rich.AppendText(temp1);
                    Rich.AppendText(temp2);
                }
                else
                {
                    Rich.AppendText(temp);
                    Rich.AppendText(temp1);
                    Rich.AppendText(temp2);
                }

                Rich.AppendText("\n");
            }
        }
    }
}