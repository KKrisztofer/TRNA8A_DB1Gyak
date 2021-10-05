using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace trna8a_3._2
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.Write("Adatok szama = ");
            KKFileIr x = new KKFileIr(int.Parse(Console.ReadLine()));
            x.Kiir("vezeteknev.txt");
            x.Megjelenit();
        }
    }
}
