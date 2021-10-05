using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;

namespace trna8a_3._2
{
    class KKFileIr
    {
        public int[] szamok;

        public KKFileIr(int szamDarab)
        {
            this.szamok = new int[szamDarab];
            for (int i = 0; i < this.szamok.Length; i++)
            {
                Console.Write($"{i}. adat = ");
                this.szamok[i] = int.Parse(Console.ReadLine());
            }
        }
        public void Kiir(string File)
        {
            Console.WriteLine($"Adatok kiirasa a {File} allomanyba.");
            FileStream fs = new FileStream(File, FileMode.Create, FileAccess.Write);
            StreamWriter sw = new StreamWriter(fs);

            for (int i = 0; i < this.szamok.Length; i++)
            {
                sw.WriteLine(this.szamok[i]);
            }

            Console.WriteLine("Kiiras sikeres!");

            sw.Close();
            fs.Close();
        }

        public void Megjelenit()
        {
            for (int i = 0; i < this.szamok.Length; i++)
            {
                Console.WriteLine($"{i}. adat = {this.szamok[i]}");
            }
        }
    }
}
