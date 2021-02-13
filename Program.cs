using System;

namespace ClassMetotDemo
{
    class Program
    {
        static void Main(string[] args)
        {
            Musteri musteri1 = new Musteri();
            musteri1.Id = 1;
            musteri1.Ad = "Sümeyra";
            musteri1.Soyad = "Karsavran";


            Musteri musteri2 = new Musteri();
            musteri2.Ad = "Eren";
            musteri2.Soyad = "Karsavran";
            musteri2.Id = 2;


            Musteri musteri3 = new Musteri();
            musteri3.Id = 3;
            musteri3.Ad = "Şevval";
            musteri3.Soyad = "Aydın";


            Musteri[] musteriler = new Musteri[] { musteri1, musteri2, musteri3 };

            MusteriManager musteriManager = new MusteriManager();

            musteriManager.MusteriEkle(musteri1);
            musteriManager.MusteriEkle(musteri2);
            musteriManager.MusteriEkle(musteri3);

            musteriManager.MusteriSil(musteri1);

            Console.WriteLine("Müşteri Listesi");
            musteriManager.MusteriListele(musteriler);
        }
    }
}
