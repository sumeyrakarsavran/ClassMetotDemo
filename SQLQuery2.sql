--Select= datayı seç, * = tüm kolonları demek, from=nerden demek, customers= customers tablosundan demek
--Select*from Customers
--Select ContactName,CompanyName,City from Customers 
Select ContactName Adi,CompanyName SirketAdi,City Sehir from Customers --boyle yazarsan isimlerini değiştirebilirsin
--metinler ANSII standartlarında tek tırnakla yazılır.

Select * from Customers where City = 'London'


--case sensitive, burda küçük büyük harf önemsiz.
select * from Products where categoryId=1 or categoryId=3
select * from Products where categoryId=1 and UnitPrice>=10

--order by sırala demek, ürün ismine göre sırala dedim asagıda
select * from Products order by ProductName
select * from Products order by CategoryID,ProductName
select * from Products order by UnitPrice asc
--asc artan demek en azdan artan olarak sırala (ascending)/ desc azalan demek,descending
select * from Products where categoryId=1 order by UnitPrice desc

Select count(*) from Products --product tablosundaki sütunların sayısını ver yani kaç tane ürün var söyle demek
select count(*) from Products where CategoryID=2

select categoryID from products group by CategoryID --bütün kategorileri tekrar etmeyecek şekilde listele demek.
select categoryID,count(*) from products group by CategoryID --hangi kategoride kaç tane ürün var listele
select categoryID,count(*) from products group by CategoryID having count(*)<10 --içerisinde 10dan daha az ürün kalan kategorileri listele demek
select categoryID,count(*) from products where UnitPrice>20
group by CategoryID having count(*)<10 --fiyatı 20den fazla olan 10dan daha az adet kalmış ürünleri listele.

select Products.ProductID, Products.ProductName, Products.UnitPrice, Categories.CategoryName 
from Products inner join Categories
on Products.CategoryID = Categories.CategoryID
--where Products.UnitPrice<10 bunu da ekleyebilirsin

--bu alanlarda seç
-- ürünle kategorinin birleşiminden
--ikisinin de ıd lerinin eşit olanları 

--biz c#da ilerleyen zamanlarda buna DTO diyeceğiz. Data Transformation Object, hepsi için ayrı class yapıyoruz ya onların joınli hali bu

select * from Products p inner join [Order Details] od
on p.ProductID = od.ProductID

select * from Products p left join [Order Details] od
on p.ProductID = od.ProductID
-- bunun anlamı şu yazıma göre solda olup sağda olmayanları getir, yani ürünler tablosunda var ama hiç satısı yok olanları listele
--bu listeye göre hiç satılmayan yokmuş
--p ya da o diye yazdıklarım kısaltma, kısaltıp oyle kullanabilriz

select * from Customers c left join Orders o
on c.CustomerID = o.CustomerID
where o.CustomerID is null
--kayıt olmuş ama hiç ürün almamışları listele

select * from Customers c right join Orders o
on c.CustomerID = o.CustomerID
where o.CustomerID is null
--sağda olup solda olmayanlar,müşterilerde olup siparişerde olmayanları listele,öyle bir şey olmayacağı için cevap gelmez.

select * from Products p inner join [Order Details] od
on p.ProductID = od.ProductID
inner join Orders o
on o.OrderID = od.OrderID

