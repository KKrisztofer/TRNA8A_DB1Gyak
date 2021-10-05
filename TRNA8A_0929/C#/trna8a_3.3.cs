using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;

namespace trna8a_3._3
{
    class Program
    {
        static void Main(string[] args)
        {
            List<string> sorok = new List<string>();
            string fileNev = Console.ReadLine();
            string sor;
            do
            {
                sor = Console.ReadLine();
                if (sor != "end")
                {
                    sorok.Add(sor);
                }
            } while (sor!="end");
            FileStream fs = new FileStream(fileNev, FileMode.Create, FileAccess.Write);
            StreamWriter sw = new StreamWriter(fs);
            foreach (var item in sorok)
            {
                sw.WriteLine(item);
            }
            sw.Close();
            fs.Close();

            Console.WriteLine("\nA fajl tartalma: ");

            foreach (var item in File.ReadAllLines(fileNev))
            {
                Console.WriteLine(item.ToUpper());
            }
        }
    }
}
