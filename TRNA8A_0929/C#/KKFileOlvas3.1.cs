using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;

namespace trna8a_3._1
{
    class KKFileOlvas
    {
        public List<int> szamok = new List<int>();
        public KKFileOlvas(string File)
        {
            FileStream fs = new FileStream(File, FileMode.Open, FileAccess.Read);
            StreamReader sr = new StreamReader(fs);

            while (!sr.EndOfStream)
            {
                szamok.Add(int.Parse(sr.ReadLine()));
            }

            sr.Close();
            fs.Close();
        }

        public int DarabSzam()
        {
            return this.szamok.Count;
        }
        public int OsszeAd()
        {
            int osszeg = 0;
            foreach (var item in this.szamok)
            {
                osszeg += item;
            }
            return osszeg;
        }
        public string ToString()
        {
            string x = "";
            int i = 0;
            foreach (var item in this.szamok)
            {
                x += $"\n{i}. adat = {item}";
            }
            return $"Adatok szama = {this.DarabSzam()}{x}";
        }
    }
}
