using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Runtime.InteropServices;
using Microsoft.Win32;
namespace WindowsFormsApplication1
{
    static class Program
    {
        /// <summary>
        /// 應用程式的主要進入點。
        /// </summary>
        [STAThread]
        static void Main(string[] args)
        {
            if(args.Length > 0)
            {
                AllocConsole();
                Console.WriteLine("九頭蛇萬歲!!!!");
                Console.Read();
                string name = "notepad";
                string path = @"C:\Windows\System32\notepad.exe";
                SetAutoRun(name, path, RegistryView.Registry32);
            }
            else
            {
                Application.EnableVisualStyles();
                Application.SetCompatibleTextRenderingDefault(false);
                Application.Run(new Form1());
            }

        }
        [DllImport("kernel32.dll", SetLastError = true)]
        private static extern bool AllocConsole();

        [DllImport("kernel32.dll", SetLastError = true)]
         private static extern bool FreeConsole();
        private static void SetAutoRun(string name,string path, RegistryView view = RegistryView.Registry32)
        {
            RegistryKey local = RegistryKey.OpenBaseKey(RegistryHive.LocalMachine, view);
            local = local.OpenSubKey("SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Run",true);
            local.SetValue(name, path, RegistryValueKind.String);
        }
        private static void DelAutoRun(string name,string path, RegistryView view = RegistryView.Registry32)
        {
            RegistryKey local = RegistryKey.OpenBaseKey(RegistryHive.LocalMachine, view);
            local = local.OpenSubKey("SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Run",true);
            local.DeleteSubKey(name);
        }
    }
}
