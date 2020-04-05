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

namespace @class
{
    public partial class Form1 : Form
    {
        public StreamReader str;
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            str = new StreamReader(textBox1.Text , System.Text.Encoding.Default);
            while (str.Peek() > -1)
            {
                listBox1.Items.Add(str.ReadLine());
            }
            str.Close();
            textBox1.Enabled = false;
            textBox2.Enabled = true;
            button2.Enabled = true;
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {
            
        }

        private void button2_Click(object sender, EventArgs e)
        {
            str = new StreamReader(textBox1.Text , System.Text.Encoding.Default);
            string find = textBox2.Text;
            while (str.Peek() > -1)
            {
                if (str.ReadLine().IndexOf(find) > -1)
                    listBox2.Items.Add(str.ReadLine());
            }
            str.Close();

        }
    }
}
