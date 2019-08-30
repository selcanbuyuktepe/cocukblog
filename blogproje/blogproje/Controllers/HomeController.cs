using blogproje.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;

namespace blogproje.Controllers
{
    public class HomeController : Controller

    {private projeEntities1 db = new projeEntities1();
        // GET: Home
        public ActionResult Index()
        {
           List<kategori> kategori1 = db.kategori.ToList();
                 return View(kategori1);  
        }
        public ActionResult hakkimizda()
        {
            return View();
        }
        public ActionResult iletisim()
        {
            return View();
        }

        public ActionResult KategoriListele(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }

            kategori kategori = db.kategori.Find(id);

            if (kategori == null)
            {
                return HttpNotFound();
            }

            var konular = db.makale.Where(k => k.kategoriId == kategori.Id).ToList();
            ViewBag.konu = konular; 

            return View();
        }

        public ActionResult MakaleTarihListeleme(int yil, int ay)
        {
            var makaleler = db.makale.Where(h => h.tarih.Value.Year == yil && h.tarih.Value.Month == ay).ToList();
            return View(makaleler);
        }
        public ActionResult OkulOncesiEtkinlik()
        {
            return View();
        }
        public ActionResult AyakkabilarıBaglayalim()
        {
            return View();
        }
        public ActionResult TahtaCercevemiz()
        {
            return View();
        }
        public ActionResult BalonTrafikİsiklari()
        {
            return View();
        }
        public ActionResult Cimİnsanlarimiz()
        {
            return View();
        }
        public ActionResult MakarnadanYaprak()
        {
            return View();
        }
       
        public ActionResult Gelisim()
        {
            return View();
        }
        public ActionResult CocuklaraSebzeYemegiSevdirecekİpuclari()
        {
            return View();
        }
        public ActionResult OyunTerapisi()
        {
            return View();
        }
        public ActionResult CocuklardaKodlamaEgitimi()
        {
            return View();
        }
        public ActionResult CocuklardaSpor()
        {
            return View();
        }
        public ActionResult Psikoloji()
        {
            return View();
        }
        public ActionResult SiddetGorenCocuklarSiddetUyguluyor()
        {
            return View();
        }
        public ActionResult KardesCatismalariniEngelleyecekYontemler()
        {
            return View();
        }
        public ActionResult MakaleDetay(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            makale makaleler = db.makale.Find(id);
            if (makaleler == null)
            {
                return HttpNotFound();
            }

            return View(makaleler);
        }
        public ActionResult EĞİTİM()
        {
            return View();
        }
        public ActionResult KİTAP()
        {
            return View();
        }
        public ActionResult KÜLTÜRSANAT()
        {
            return View();
        }
        public ActionResult SPORSAĞLIK()
        {
            return View();
        }
        public ActionResult TEKNOLOJİ()
        {
            return View();
        }
        public ActionResult BESLENME()
        {
            return View();
        }
    }
}