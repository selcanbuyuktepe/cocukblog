using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using blogproje.DAL;

namespace blogproje.Controllers
{
    public class makaleYonetimiController : Controller
    {
        private projeEntities1 db = new projeEntities1();

        // GET: makaleYonetimi
        public ActionResult Index()
        {
            var makale = db.makale.Include(m => m.kategori);
            return View(makale.ToList());
        }

        // GET: makaleYonetimi/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            makale makale = db.makale.Find(id);
            if (makale == null)
            {
                return HttpNotFound();
            }
            return View(makale);
        }

        // GET: makaleYonetimi/Create
        public ActionResult Create()
        {
            ViewBag.kategoriId = new SelectList(db.kategori, "Id", "Kategori1");
            return View();
        }

        // POST: makaleYonetimi/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,makale1,baslik,makaledetay,resim,tarih,kategoriId")] makale makale)
        {
            if (ModelState.IsValid)
            {
                db.makale.Add(makale);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.kategoriId = new SelectList(db.kategori, "Id", "Kategori1", makale.kategoriId);
            return View(makale);
        }

        // GET: makaleYonetimi/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            makale makale = db.makale.Find(id);
            if (makale == null)
            {
                return HttpNotFound();
            }
            ViewBag.kategoriId = new SelectList(db.kategori, "Id", "Kategori1", makale.kategoriId);
            return View(makale);
        }

        // POST: makaleYonetimi/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,makale1,baslik,makaledetay,resim,tarih,kategoriId")] makale makale)
        {
            if (ModelState.IsValid)
            {
                db.Entry(makale).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.kategoriId = new SelectList(db.kategori, "Id", "Kategori1", makale.kategoriId);
            return View(makale);
        }

        // GET: makaleYonetimi/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            makale makale = db.makale.Find(id);
            if (makale == null)
            {
                return HttpNotFound();
            }
            return View(makale);
        }

        // POST: makaleYonetimi/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            makale makale = db.makale.Find(id);
            db.makale.Remove(makale);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);

        }
        
    }

}
