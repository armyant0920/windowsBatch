using System.Diagnostics;
using System.Text;

namespace CreateScript
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            Process process = new Process();
            process.StartInfo.FileName = "cmd.exe";
            process.StartInfo.Arguments = @"/c echo %date% %time% >> D:\temp\record.text";
            process.StartInfo.CreateNoWindow = true;
            process.StartInfo.UseShellExecute = false;
            process.Start();
            process.WaitForExit();

            MessageBox.Show("END");
        }

        private void button2_Click(object sender, EventArgs e)
        {

            Guid uuid = Guid.NewGuid();
            string path = string.Format(@"D:\temp\{0}.bat",uuid);
            string create_time = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
            //false,Encoding.ASCII
            using (StreamWriter sw = new StreamWriter(path)) {
                sw.WriteLine(@"@echo off");
                sw.WriteLine(@"chcp 65001");
                sw.WriteLine(@"echo temp file create time(文件產生) :{0} bat execute time(批次執行):%date% %time% >> D:\temp\{1}.txt",create_time,uuid);
                sw.WriteLine("exit");
                sw.Close();
            }
           
            Process process = new Process();
            process.StartInfo.FileName = path;
            process.Start();
            process.WaitForExit();

            File.Delete(path);
            MessageBox.Show("TEST2 END");


        }
    }
}