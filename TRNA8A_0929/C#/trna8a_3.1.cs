using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace trna8a_3._1
{
    class Program
    {
        static void Main(string[] args)
        {
            KKFileOlvas x = new KKFileOlvas("vezeteknev.txt");
            Console.WriteLine(x.ToString());
            Console.WriteLine($"Osszeg: {x.OsszeAd()}");
        }
    }
}
