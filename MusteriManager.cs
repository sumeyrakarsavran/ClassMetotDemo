using System;
using System.Collections.Generic;
using System.Text;

namespace ClassMetotDemo
{
    class MusteriManager
    {
        public void MusteriEkle(Musteri musteri)
        {
            Console.WriteLine(musteri.Ad + " " + musteri.Soyad + " Kişisi Eklendi");
        }

        public void MusteriSil(Musteri musteri)
        {
            Console.WriteLine(musteri.Ad + " " + musteri.Soyad + " Kişisi silindi");
        }

        public void MusteriListele(Musteri[] musteri)
        {
            foreach (var item in musteri)
            {
                Console.WriteLine(item.Id + " " + item.Ad + " " + item.Soyad + " ");
            }
        }
    }
}
