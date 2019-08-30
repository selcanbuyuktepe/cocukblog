USE [master]
GO
/****** Object:  Database [proje]    Script Date: 8.01.2019 10:42:37 ******/
CREATE DATABASE [proje]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'proje', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\proje.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'proje_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\proje_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [proje] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [proje].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [proje] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [proje] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [proje] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [proje] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [proje] SET ARITHABORT OFF 
GO
ALTER DATABASE [proje] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [proje] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [proje] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [proje] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [proje] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [proje] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [proje] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [proje] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [proje] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [proje] SET  DISABLE_BROKER 
GO
ALTER DATABASE [proje] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [proje] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [proje] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [proje] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [proje] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [proje] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [proje] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [proje] SET RECOVERY FULL 
GO
ALTER DATABASE [proje] SET  MULTI_USER 
GO
ALTER DATABASE [proje] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [proje] SET DB_CHAINING OFF 
GO
ALTER DATABASE [proje] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [proje] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [proje]
GO
/****** Object:  Table [dbo].[kategori]    Script Date: 8.01.2019 10:42:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kategori](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Kategori] [nvarchar](max) NULL,
 CONSTRAINT [PK_kategori] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[makale]    Script Date: 8.01.2019 10:42:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[makale](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[makale] [nvarchar](max) NULL,
	[baslik] [nvarchar](max) NULL,
	[makaledetay] [nvarchar](max) NULL,
	[resim] [nvarchar](max) NULL,
	[tarih] [datetime] NULL,
	[kategoriId] [int] NULL,
 CONSTRAINT [PK_makale] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[kategori] ON 

INSERT [dbo].[kategori] ([Id], [Kategori]) VALUES (1, N'EĞİTİM')
INSERT [dbo].[kategori] ([Id], [Kategori]) VALUES (2, N'KİTAP')
INSERT [dbo].[kategori] ([Id], [Kategori]) VALUES (3, N'KÜLTÜR & SANAT')
INSERT [dbo].[kategori] ([Id], [Kategori]) VALUES (4, N'SPOR & SAĞLIK')
INSERT [dbo].[kategori] ([Id], [Kategori]) VALUES (5, N'TEKNOLOJİ')
INSERT [dbo].[kategori] ([Id], [Kategori]) VALUES (6, N'BESLENME')
SET IDENTITY_INSERT [dbo].[kategori] OFF
SET IDENTITY_INSERT [dbo].[makale] ON 

INSERT [dbo].[makale] ([Id], [makale], [baslik], [makaledetay], [resim], [tarih], [kategoriId]) VALUES (4, N'Çocukların sağlıklı bir gelişim süreci yaşaması için doğduğu andan itibaren görsel ve işitsel sanatlarla ilişki içerisinde olması gerekmektedir.', N'BEDEN SAĞLIĞI KADAR RUH SAĞLIĞI DA ÖNEMLİ', N' Beden sağlığı en iyi şekilde takip edilen, zihinsel ve motor becerilerini geliştirmek için yoğun çaba harcanan çocukların sağlıklı ruhsal yapıya sahip bireyler olması açısından, sanat eğitiminin önemi her geçen gün daha da artmaktadır', NULL, CAST(N'2018-05-02T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[makale] ([Id], [makale], [baslik], [makaledetay], [resim], [tarih], [kategoriId]) VALUES (5, N'Müzik aleti çalan çocukların psikomotor gelişim ve koordinasyon yetileri daha fazla ilerlemektedir. Müzik eğitiminin konsantrasyonu arttırması, farklı sembollerin, karışık müzik cümlelerinin doğru olarak algılanması ve ayırt edilmesi çocuk gelişim evreleri ile paralellik göstermektedir ve çocuk gelişiminin vazgeçilmez bir parçası olarak ortaya çıkmaktadır.', N'MÜZİKLE BÜYÜYEN ÇOCUĞUN GELİŞİMİ DAHA FARKLI OLUYOR', N' Müzik ve sanat çocuk için çoğunlukla bir oyundur. Oyunu hayatın önemli parçalarından biri olarak gören çocuk, sanatsal etkinlikleri de bir oyun olarak kabul eder ve keyif alarak çalışır. Çocukların oyun ihtiyacını karşılayacak en iyi sanat yöntemlerinden birisi dramadır.', NULL, CAST(N'2018-08-05T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[makale] ([Id], [makale], [baslik], [makaledetay], [resim], [tarih], [kategoriId]) VALUES (6, N'Kalbindeki Cevap Canev Tatar kaleme aldığı ilk kitabı Kalbindeki Cevap ile çocukların kalbine dokunuyor ve kendilerini keşif yolunda minik okurlarını yüreklendiriyor.

Bir çocuğun kendini ve dünyayı keşfetme öyküsü. Sıcak, samimi ve cesur…', N'Yaz Tatili İçin Çocuklara Kitap Önerileri', N'-Kalbinin sesini dinleyip gösterdiği yoldan gidenler bu yolun sonunda çok değerli bir şey keşfederler. Bu yolculuğa çıkacağında yanına cesaretini de al, çünkü cesareti olmayan insanlar kalplerinin yolundan gitmenin zor olduğunu düşünürler. Oysa en zoru, kalbinin sesini dinlemeden yürüdüğün yoldur.

-Peki, kalbinin peşinden ne keşfeder?

-Elbette kendini…

Yazar: Canev Tatar
Ressam: Canev Tatar 
Sayfa Sayısı:48
Fiyatı: 16.00 TL
Yaşı: 7-9 Yaş', NULL, CAST(N'2019-01-07T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[makale] ([Id], [makale], [baslik], [makaledetay], [resim], [tarih], [kategoriId]) VALUES (7, N'Yorgancı, Hayal Ağacı ve Kalaycı

Ödüllü yazar Koray Avcı Çakman, çocukları bu yaz tatilinde Titrekkavak’a, Bora’nın babaannesinin kuyruklu dostları ile tanışmaya davet ediyor.

Bora’nın başından geçen birbirinden heyecanlı öyküler arasında unutulmaya yüz tutmuş meslekleri de öğrenen çocuklar, yorgancı ve kalaycıyla tanışacak, acemi şaire çok gülecek, hayal ağacının ve hayalbazın peşine düşecekler.', N'Yaz Tatili İçin Çocuklara Kitap Önerileri', N'Hayal ağacına tırmanan çocuklar o ağaçta, belki Bora’nın bitki doktoru amcasının evden kaçmış maymununu da görürler, kim bilir!

Yazar: Koray Avcı Çakman
Ressam: Dilara Karakaş
Sayfa Sayısı:88
Fiyatı: 10.00 TL
Yaşı: 8 Yaş+', NULL, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[makale] ([Id], [makale], [baslik], [makaledetay], [resim], [tarih], [kategoriId]) VALUES (8, N'Koş Kurtar

Çocukken koşu yarışı yapmak pek keyiflidir! Ama daha da keyiflisi bir amaç uğruna koşmak…

Toprak Işık, “Koş Kurtar” adlı yeni romanıyla çocukları “İyilik Peşinde Koşmaya” davet ediyor.', N'Yaz Tatili İçin Çocuklara Kitap Önerileri', N'Hayat yıkım ekipleriyle yürür üzerine. Tutunduğun dallar hep elinde kalır. Olsun, zorluklar da iyi gelebilir insana. Mücadele etmek yorar belki ama oyunda tutar seni. Umudunu yitirmeyeni hayat taca atamaz. Toprak Işık, “Koş Kurtar” adlı yeni romanıyla yaşamın zorlu sürprizlerine, umuda ve dostluğa dair yepyeni kapılar aralıyor.

Unutmayın, bazen koşmak sadece koşmak değildir!

Yazar: Toprak Işık
Ressam: Ege Karadayı
Sayfa Sayısı:152
Fiyatı: 12.00 TL
Yaşı: 10 Yaş+', NULL, CAST(N'2019-05-06T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[makale] ([Id], [makale], [baslik], [makaledetay], [resim], [tarih], [kategoriId]) VALUES (9, N'Teknoloji en basit anlamıyla teknik bilim, kuramsal bilgileri uygulamaya koyma yöntemidir. Günümüzde Eğitimde teknolojiden yararlanmak kaçınılmaz hale
gelmiştir. Teknolojik gelişmeler eğitimi etkilemiş, ayrılmaz bir parçası haline getirmiştir. Bu durumda teknolojinin eğitimde kullanılması değil,nasıl kullanılacağı araştırma konusu olmuştur.', N'Çocuklar ve Teknoloji', N'Eğitimde başlangıç noktası okul öncesi eğitimidir.
Boşa harcanmaması gereken en önemli zaman olan okul öncesi çağı, teknolojinin
de doğru kullanılmasını gerektirmektedir. Çocuklar teknolojiyle tanıştırılmalı,
ancak doğru kullanılmasına önem verilmelidir. Okul öncesi eğitimde kullanılan
teknoloji, çocukların gelişim özelliklerine uygun olmalıdır', NULL, CAST(N'2019-06-08T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[makale] ([Id], [makale], [baslik], [makaledetay], [resim], [tarih], [kategoriId]) VALUES (10, N'Günümüzde teknolojinin nimetlerinden yararlanmamak, gelişmelerden haberdar olmamak mümkün değil. Aslını sorarsanız kendimizi, hayatı kolaylaştıran ve çağın getirisi olan gerçeklerden mahrum bırakmakta bir bakıma işlevsel değil zaten.  Ancak hassasiyet, günümüz bireylerinin bu ürünleri ne için, ne sıklıkla, kaç yaş itibari ile kullanmakta olmaları ile ilgili. ', N'Teknoloji ve Çocuk', N'Yetişkinler için de birçok risk faktörü bulundurması ile birlikte, burada teknolojinin çocuk ile ilişkisine, teknoloji çağında yetişen çocukların kazanımları, kayıpları ve ebeveynlerin neye, ne zaman, ne kadar müsaade etmelerinin daha uygun olacağına değinmeye çalışacağız.', NULL, CAST(N'2019-06-02T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[makale] ([Id], [makale], [baslik], [makaledetay], [resim], [tarih], [kategoriId]) VALUES (11, N'Çocukların teknolojiye olan ilgileri dendiğinde aklımıza bilgisayar, internet, telefon, televizyon ve diğer elektronik aletler gelmektedir. Teknolojinin olumlu yanları olduğu kadar olumsuz yanları da vardır.', N'Çocuk ve Teknoloji İlişkisi', N'Çocuk ve gençlerin internet, bilgisayar ve televizyon karşısında uzun zaman geçirmeleri sosyal, duygusal ve fiziksel açıdan problemler oluşturmaktadır. Özellikle iletişim kurmalarına engel olması açısından çocukların sosyalleşmesini engellemektedir. Bu sebeple çocukların çok küçük yaştan itibaren bu türlü aletlerle tanışması ve aşırı maruz kalmaları doğru değildir. Özellikle gelişimin hızlı olduğu ilk 2 yaşta çocuklar mümkün olduğu kadarıyla teknolojik aletlerden uzak tutulmalıdır.', NULL, CAST(N'2019-09-10T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[makale] ([Id], [makale], [baslik], [makaledetay], [resim], [tarih], [kategoriId]) VALUES (12, N'Dramada bir organizasyon gereklidir. Bu nedenle çocuklarla drama etkinlikleri yapılırken öncelikle göz önüne alınması gereken bazı koşullar vardır.', N'Eğitimde Drama Uygulamaları', N'Dramada bir organizasyon gereklidir. Bu nedenle çocuklarla drama etkinlikleri yapılırken öncelikle göz önüne alınması gereken bazı koşullar vardır. Daha sonra her tür eğitim etkinliğinde olduğu gibi beklenen sonuçları elde etmek için bu koşullar yerine getirilerek, dramanın uygulama basamakları gerçekleştirilmelidir. Bu bölümde eğitimde drama sürecindeki öğelere, dramanın uygulama basamaklarına ve yararlanılacak kaynaklara yer verilecektir.', NULL, CAST(N'2019-11-09T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[makale] ([Id], [makale], [baslik], [makaledetay], [resim], [tarih], [kategoriId]) VALUES (13, N'irçok ülke için sonbahar yeni eğitim yılının başlangıcını ifade eder. Ama ülkeler arası eğitim farkı oldukça dikkat çekicidir. Y ani ABD’de okula gitmek ile Şili, Rusya veya İzlanda’da okula gitmek birbirinden farklıdır.

Peki, okul süresi en kısa olan ülke hangisi? Okul araç gereçleri için en fazla para harcayan aileler hangi ülkede? Hangi ülkede ortalama eğitim süresi 23 yılı buluyor?', N'Dünyanın farklı ülkelerinde çocuk okutmak ailelere ne kadara mal oluyor?', N'ABD’de okullar açılırken ortalama bir ailenin çocuğu için yaptığı okula dönüş masrafı 685 doları buluyor.

Bu rakam 2005’ten bu yana 250 dolarlık bir artışı ifade ediyor. 2018’de bu ülkede ailelerin yaptığı toplam okula başlama masrafının 27,5 milyar dolar olması bekleniyor.

Üniversite eğitimi de dahil edildiğinde bu rakam 83 milyar dolara ulaşıyor.

Bu masraflar içinde en büyük kalemi, ortalama 299 dolar ile bilgisayar oluşturuyor. Ardından 286 dolar ile üniforma ve giysi, 271 dolar ile tablet ve hesap makinesi gibi elektronik gereçlere yapılan masraflar geliyor.

Defter, kalem, kitap vb. temel malzemeler için yapılan harcama ise ortalama 112 dolar.', NULL, CAST(N'2019-11-11T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[makale] ([Id], [makale], [baslik], [makaledetay], [resim], [tarih], [kategoriId]) VALUES (14, N'Hangi ülkede okula gittiğine bağlı olarak toplam eğitim masrafları arasındaki fark 100 bin doları bulabiliyor.

Okul ücretleri, kitap, ulaşım, konaklama gibi kalemler toplandığında ilkokuldan üniversiteye kadar toplam masraflar bakımından Hong Kong açık arayla en pahalı yer olarak çıkıyor karşımıza.', N'Eğitimin en pahalı olduğu yer Hong Kong', N'Hong Kong’da aileler bir çocuğun eğitimi için burslar dışında ceplerinden ortalama 131 bin dolar harcıyor.

Birleşik Arap Emirlikleri ise 99 bin dolar ile ikinci sırada yer alıyor. Ardından 71 bin dolar ile Singapur, 58 bin dolar ile ABD geliyor.

Amerika’da artan üniversite giderlerine rağmen ailelere düşen masraf oranı yüzde 23. Fransa’da ise ailelerin eğitim süreci boyunca toplam katkısı 16 bin dolar civarında.', NULL, CAST(N'2019-11-12T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[makale] ([Id], [makale], [baslik], [makaledetay], [resim], [tarih], [kategoriId]) VALUES (15, N'Bir noktada eğitimin artık sona ermesi ve hayata atılmak gerekiyor. Ama Yeni Zelanda ve İzlanda gibi ülkelerde eğitimin tamamlanması 20 yılı buluyor. Avustralya ise 22,9 yıl ile başı çekiyor.

Nijer’de yedi yaşında okula başlayan öğrencilerin ortalama eğitim süresi ise sadece 5,3 yıl.', N'Avustralya’da öğrenciler ömrünün dörtte birini okulda geçiriyor', N'Bir noktada eğitimin artık sona ermesi ve hayata atılmak gerekiyor. Ama Yeni Zelanda ve İzlanda gibi ülkelerde eğitimin tamamlanması 20 yılı buluyor. Avustralya ise 22,9 yıl ile başı çekiyor.

Nijer’de yedi yaşında okula başlayan öğrencilerin ortalama eğitim süresi ise sadece 5,3 yıl.', NULL, CAST(N'2019-11-12T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[makale] ([Id], [makale], [baslik], [makaledetay], [resim], [tarih], [kategoriId]) VALUES (16, N'Çocukluk dönemi, bebekliğin bitimi ile pubertenin başlangıcı arasındaki dönemdir. Okul öncesi ve okul dönemini kapsar. Bu dönem ağır ve sakin bir büyüme dönemi olarak da bilinir.

Bebeklik dönemi ile karşılaştırıldığında, fiziksel büyümenin yavaşlamasına karşın, sosyal, bilişsel ve duygusal alanlarda önemli gelişmelerin olduğu bir dönemdir. Bu nedenle optimal beslenme, diğer bir deyişle yeterli ve dengeli beslenme, bebeklik döneminde olduğu gibi, bu dönemde de önemini korumalıdır.', N'Çocukluk Döneminde Sağlıklı Beslenme', N'kul öncesi ve okul çocuklarına uygulanan beslenme programlarının, büyüme-gelişmeyi sağlama yanında, yaşam boyu sağlığı korumayı, hastalık risklerini azaltmayı, hatta önlemeyi de hedeflemesi gerekir. Bu hedefe ulaşmak ise, çocuğun beslenme alışkanlıklarını, ağız tadını, tercihlerini gözardı etmeksizin, yaşına uygun türde ve miktarda besin seçimi ile mümkündür.

Bu dönemdeki çocukların beslenmesi, ailenin diğer bireylerinden ayrı düşünülemez. Sağlıklı beslenme ilkeleri tüm aile için geçerlidir. Ancak, sürekli büyüyen-gelişen çocukların erişkinlerden daha fazla besleyici, fakat daha küçük porsiyonlarda besinlere gereksinimleri vardır.', NULL, CAST(N'2019-11-13T00:00:00.000' AS DateTime), 6)
INSERT [dbo].[makale] ([Id], [makale], [baslik], [makaledetay], [resim], [tarih], [kategoriId]) VALUES (17, N'Tüm aile için geçerli olan sağlıklı beslenme ilkeleri aşağıda özetlemiştir.
• Enerjinin yeterli alınması, boya uyan vücut ağırlığının her dönemde sağlanması ve koruması: Çocukların iştahları pek çok şeyden kolayca etkilenir. Uzun sürekli iştah azalması, kilo kaybına, malnütrisyona ve büyümede aksamalara neden olurken; enerji fazlalığı da şişmanlığa yol açar. Çocukluk dönemindeki şişmanlık, psikolojik sorunlarla seyretmekle kalmaz, erişkinliğe yansır ve birçok kronik hastalık için risk faktörü oluşturur.', N'Çocuklarda Yemek Alışkanlığı Nasıldır ? ', N'• Besinlerde çeşitliliğe özen gösterilmesi: Karbonhidratlar, proteinler, yağlar, vitaminler, mineraller, ve sudan oluşan ve sayıları 50’yi bulan besin öğeleri, vücuda ancak farklı türde besinlerin yenmesi ile alınır. Bu nedenle, günlük beslenmede besinlerin mümkün olduğu kadar farklı grupları temsil edecek şekilde tüketilmesi önerilir.

• Total yağ, doymuş yağ ve kolesterol miktarının azaltılması: Amerika başta olmak üzere, dünyanın birçok ülkesinde ölüm nedenlerinin başında yer alan kalp-damar hastalıklarından korunabilmek için, alınan önlemlerin başında, total yağ, doymuş yağ ve kolesterol tüketiminin azaltılması gelmektedir. Sözü edilen ögeleri azaltabilmek için et, tavuk, yumurta, süt, yoğurt, peynir gibi hayvansal besinlerin az ya da önerilen miktarlarda tüketilmesi ve az yağlı olanlarının tercih edilmesi önerilmektedir.', NULL, CAST(N'2019-11-14T00:00:00.000' AS DateTime), 6)
INSERT [dbo].[makale] ([Id], [makale], [baslik], [makaledetay], [resim], [tarih], [kategoriId]) VALUES (18, N'Miniğinin büyüme ve gelişiminin sorunsuz bir şekilde devam etmesi için sağlıklı ve dengeli beslenmesi çok önemli. Proteinlerin de buradaki payı oldukça büyük. Onu proteine doyuran bir beslenme şekli için nelere dikkat etmen gerekiyor? Anlattık!', N'Protein Ağırlıklı Çocuk Beslenmesi İçin Bilmen Gereken 8 Kural', N'Vücudun temel yapı taşı olan proteinler, kas ve hücre onarımı için gerekli. Anne sütü 1 yaşına kadar bu ihtiyacı karşılıyor. 1 yaşından sonra da günlük alınan proteinin %20’sinin hayvansal, %80’inin bitkisel kaynaklı olması gerekiyor.

Bebek ve çocukların günde kilo başına 2 gram protein alması gerekiyor. 1-3 yaş arasındaki çocukların günlük protein ihtiyacı da 16 gr. 2 kase yoğurt veya 1 tabak peynirli makarna miniğinin günlük protein ihtiyacının tamamını karşılıyor.

Süt, yumurta, et, tavuk, balık gibi besinler tam protein olup vücut için gerekli tüm amino asitleri içeriyorlar. Çocuğunun protein ihtiyacını karşılayabilmek için tahılları, baklagilleri ve sebzeleri birlikte yedirmen gerekiyor.', NULL, CAST(N'2019-11-15T00:00:00.000' AS DateTime), 6)
INSERT [dbo].[makale] ([Id], [makale], [baslik], [makaledetay], [resim], [tarih], [kategoriId]) VALUES (19, N'En basit tanımı ile obezite, vücutta aşırı yağ birikimidir. Vücut yağ yüzdesini belirlemek kolay olmadığı için obezite, aşırı yağdan daha çok aşırı kilo olarak tanımlanmaktadır.', N'Çocuklarda  Obez Olduğu Nasıl Anlaşılır?', N'Uzmanlar, obezitenin çağımız çocuklarında sık görülmesinin en büyük sebebinin, fiziksel aktivite eksikliğinden kaynaklandığını söylüyor. Televizyon izleme süresi uzadıkça, televizyon karşısında atıştırmalıklar yenmeye başlandı. Bilgisayar oyunları asla bitmeyince, çocuklarımızın tek fiziksel aktivitesi mutfağa gidip yemek yemek oldu. Buna kısaca sedanter yaşam da diyebiliriz.

“Çocuğunuza yemek yedirirken televizyon izletmek ya da bilgisayardan çizgi film açmak ileriki yaşları için yararlı bir davranış biçimi değil”', NULL, CAST(N'2019-11-16T00:00:00.000' AS DateTime), 6)
INSERT [dbo].[makale] ([Id], [makale], [baslik], [makaledetay], [resim], [tarih], [kategoriId]) VALUES (20, N'Robotik kodlama, günümüzde çocuklara yönelik eğitim olarak da verilmeye başlanmış ve geleceğin teknolojilerinin üretilmesini sağlayacak olan bir alandır. Çocukların robotik kodlama ile tanışması ile beraber robotik alanda da aktif olmaları sağlanmaktadır. Robotlara yönelik kodlama yapılarak teknoloji üretilmesinin sağlanması, çocukların erken yaşta vizyonlarının ve zihinlerinin bu yönde gelişmesini de sağlamaktadır.', N'Çocuklarda Robotik Kodlama Eğitimi ve Geleceği', N'Günümüzde teknoloji alanında yaşanan gelişmeler, robot dünyasını da etkileyerek önemli adımlar atılmasını sağlamıştır. Robotlara yönelik yapılan bu gelişmeler, robotların ve robotiğin önemini daha belirgin bir şekilde ortaya çıkarmıştır. Kodlama ile beraber çocukların problem çözme becerileri, yeni fikirler üretmeye yönelik becerileri, işlerin ve projelerin planlanması ve takım olarak çalışabilme becerileri ciddi anlamda gelişmektedir. Tüm bu becerilerin gelişmesi sayesinde de çocukların zihinleri, kodlamaya daha aşina olmaktadır ve günümüzün ihtiyaçlarını da yazılıma çevirme konusunda gelişmektedir.', NULL, CAST(N'2019-11-17T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[makale] ([Id], [makale], [baslik], [makaledetay], [resim], [tarih], [kategoriId]) VALUES (21, N'Parmaklarıyla boyama yapan çocuğunuza ne yaptığını sorduğunuzda genellikle omuz silkerek yanıt verebilir. Çünkü siz sözünü edene kadar o bunu hiç düşünmemiş olabilir. Küçük çocuklar, o anı doyasıya yaşamayı, neredeyse unutmuş olan büyüklerden daha iyi becerirler.', N'Çocuklar İçin Süreç Odaklı Sanat Nedir?', N'Çocuğunuzun yaratıcılığını desteklemeniz, onun gelecekte bir Picasso olması için uğraşmanız anlamını taşımaz. Sanat, çocuğunuzun zihinsel, sosyal ve duygusal olarak gelişmesine yardımcı olur. Yaratım süreci, küçük çocukların analiz yapma ve problem çözme yeteneklerini geliştirir. Bir boya fırçasını kullanırken, ince motor becerileri gelişir. Desen ve renkleri sayarak matematiğin temellerini öğrenirler. Çeşitli materyallerle denemeler yapmaları bilime yönlendirir. En önemlisi de, çocukların sanatsal yaratım sürecinde kendilerini iyi hissettikleri ölçüde öz güvenlerinin artmasıdır. Denemekten ve hata yapmaktan çekinmemeyi öğrenenler, büyüdüklerinde yeni düşünce biçimlerini araştırmaktan da çekinmezler.', NULL, CAST(N'2019-11-19T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[makale] ([Id], [makale], [baslik], [makaledetay], [resim], [tarih], [kategoriId]) VALUES (22, N'Evinizde de çocuğunuzun denemeler yapabileceği küçük bir sanat alanı oluşturabilirsiniz. Mutfak masanızın üstüne veya yere bir örtü ya da eski gazeteler koyun.
Yönlendirmekten kaçının ve çocuğunuza ne yapacağını söyleyerek onu kısıtlamayın. Ancak bu, temel bilgiler verilmemesi anlamını taşımaz.', N'Çocuklarda Süreç Odaklı Sanatsal Etkinlik', N'Sanat ve sanat malzemeleri hakkında konuşun. Çocuğunuzun yaptıklarını yorumlarken, hem anlamaya hem de açık ve kesin olmaya çalışın. Örneğin, yalnızca alkışlayıp aferin demek yerine, "Daha çok kırmızı ve mor boyaları kullandığını görüyorum. Bu renkleri neden seçtin?" diyerek onunla birlikte yaratım sürecinin keşfine çıkabilirsiniz.
Çocukları sanat üzerine konuşmaya teşvik etmenin en iyi yollarından biri de, "Bana nasıl yaptığını anlatsana" yaklaşımıdır.
Çocuğunuzla birlikte çizip boyamaya girişmeyin. Ebeveynlerin, çocukları çizim yaparken kalemi fırçayı ellerine alıp işe karışmaları çocukları hayal kırıklığına uğratır.
Çocuğunuzun yanında olmanız, onun sanat üretimine ilgi duyduğunuzu ve desteklediğinizi bilmesi önemlidir', NULL, CAST(N'2019-11-20T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[makale] ([Id], [makale], [baslik], [makaledetay], [resim], [tarih], [kategoriId]) VALUES (23, N'Okullar açılalı yaklaşık bir ay oldu. Siz de okul başlayınca çocuğunun neşeyle okula gitmesini, okuldan döner dönmez üstünü değiştirip ödevlerinin başına oturmasını bekleyen birçok anne baba gibi hayal kırıklığı mı yaşıyorsunuz? Beklentileriniz gerçekleşmediyse öncelikle bilin ki yalnız değilsiniz. Çoğu anne baba çocuğunun okul yaşamında öyle ya da böyle hayal kırıklıkları yaşıyor.', N'Çocuğun Okula Uyum Sürecinde Bilmeniz Gerekenler', N'ocukların okula uyum sağlayabilmeleri ve etkin bir şekilde öğrenebilmeleri için, öncelikle fiziksel olarak rahat olmaları; uykusuz, aç ya da hasta olmamaları gerekir.

Gece geç saatlere kadar televizyon seyredip, uykusunu alamadan okula gelen bir çocuğun okulda huzurlu, mutlu ve verimli olması beklenemez. Unutmayın doktorlar okul çağı çocuklarının (6-12 yaş) günde ortalama 9 ila 12 saat uyumaları gerektiğini söylüyorlar. Akşamları on beş dakika erken yatıp, sabahları da on beş dakika erken kalkarak sakin ve rahat hazırlanabileceği bir rutin oluşturabilirsiniz. Her sabah çocuğunuzu uyandırdığınızda birkaç dakika ona sarılarak aranızdaki bağı tazelemek bütün günün çok daha keyifli geçmesini sağlayacak bir sihirli değnek olabilir.', NULL, CAST(N'2019-12-01T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[makale] ([Id], [makale], [baslik], [makaledetay], [resim], [tarih], [kategoriId]) VALUES (24, N'Sporun, çocuk gelişimine olan katkısı tartışılmaz! Farklı spor dallarının faydalarından bahsetmek mümkündür. Jimnastik sporu da çocukların fiziksel ve sosyal anlamda olumlu gelişmeleri için yapılabilecek sporlar arasında yer almaktadır.', N'Jimnastik Sporunun Çocuk Gelişimine Faydaları', N'Günümüzde akıllı cihazların, bilgisayarların ve televizyonların kullanımının artması sebebiyle evlerinde hareketsizliğe mahkûm olan çocuklar için yapılabilecek en doğru hareketlerden bir tanesi, bir spora yöneltmektir. Jimnastik sporu da çocukları bu durumdan kurtaracak, bunun yanında sosyal ve fiziksel olarak da birçok yarar sağlayacak bir spordur.

Jimnastik sporu, çocukların fiziki gelişimini destekleyerek estetik bir görünüme sahip olmalarını sağlamaktadır. Ayrıca boy, kilo ve vücut kas kitleleri gibi değerlerin dengeli olmasını etkileyecek bir spordur.', NULL, CAST(N'2019-01-05T00:00:00.000' AS DateTime), 4)
SET IDENTITY_INSERT [dbo].[makale] OFF
ALTER TABLE [dbo].[makale]  WITH CHECK ADD  CONSTRAINT [FK_makale_kategori] FOREIGN KEY([kategoriId])
REFERENCES [dbo].[kategori] ([Id])
GO
ALTER TABLE [dbo].[makale] CHECK CONSTRAINT [FK_makale_kategori]
GO
USE [master]
GO
ALTER DATABASE [proje] SET  READ_WRITE 
GO
