using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Threading.Tasks;
using System.Web.Mvc;
using Peintur.Models;

namespace Peintur.Controllers
{
    public class TableauxController : Controller
    {
        private PeinturContext db = new PeinturContext();

        // GET: Tableaux
        public async Task<ActionResult> Index()
        {
            var model = db.Tableaux
                          .OrderBy(t => t.Nom)
                          .ThenBy(t => t.Tableau_ID)
                          .MapTo<TableauIndex>();

            return View(await model.ToListAsync());
        }

        // GET: Tableaux/Details/5
        public async Task<ActionResult> Details(int? id)
        {
            if (id == null)
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);

            var tableau = await db.Tableaux.FindAsync(id);
            if (tableau == null) return HttpNotFound();

            return View(tableau);
        }

        // GET: Tableaux/Next/5
        public async Task<ActionResult> Next(int? id)
        {
            if (id == null)
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);

            var tableau = await db.Tableaux.FindAsync(id);
            if (tableau == null) return HttpNotFound();

            var nom = tableau.Nom;
            id = await db.Tableaux.OrderBy(t => t.Nom).Where(t => string.Compare(t.Nom, nom) > 0).Select(t => t.Tableau_ID).FirstOrDefaultAsync();
            if (id == 0)
                id = await db.Tableaux.OrderBy(t => t.Nom).Select(t => t.Tableau_ID).FirstOrDefaultAsync();

            return RedirectToAction("Details", new { id });
        }

        // GET: Tableaux/Previous/5
        public async Task<ActionResult> Previous(int? id)
        {
            if (id == null)
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);

            var tableau = await db.Tableaux.FindAsync(id);
            if (tableau == null) return HttpNotFound();

            var nom = tableau.Nom;
            id = await db.Tableaux.OrderByDescending(t => t.Nom).Where(t => string.Compare(t.Nom, nom) < 0).Select(t => t.Tableau_ID).FirstOrDefaultAsync();
            if (id == 0)
                id = await db.Tableaux.OrderByDescending(t => t.Nom).Select(t => t.Tableau_ID).FirstOrDefaultAsync();

            return RedirectToAction("Details", new { id });
        }

        // GET: Tableaux/Create
        public ActionResult Create()    
        {
            LoadOptions();
            return View();
        }

        // POST: Tableaux/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Create([Bind(Include = "Tableau_ID,Nom,Annee,Technique,Sujet,Support,Cadre,Stockage,Taille,Points,Poids,Commentaires")] Tableau tableau)
        {
            if (ModelState.IsValid)
            {
                var taille = await db.Tailles.FirstOrDefaultAsync(x => x.Nom == tableau.Taille);
                if (taille != null)
                    tableau.Points = taille.Valeur.Value;
                db.Tableaux.Add(tableau);
                await db.SaveChangesAsync();

                return RedirectToAction("Index");
            }

            LoadOptions();
            return View(tableau);
        }

        // GET: Tableaux/Edit/5
        public async Task<ActionResult> Edit(int? id)
        {
            if (id == null)
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);

            var tableau = await db.Tableaux.FindAsync(id);
            if (tableau == null) return HttpNotFound();

            LoadOptions(tableau);
            return View(tableau);
        }

        // POST: Tableaux/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Edit([Bind(Include = "Tableau_ID,Nom,Annee,Technique,Sujet,Support,Cadre,Stockage,Taille,Points,Poids,Commentaires")] Tableau tableau)
        {
            if (ModelState.IsValid)
            {
                db.Entry(tableau).State = EntityState.Modified;
                var taille = await db.Tailles.FirstOrDefaultAsync(x => x.Nom == tableau.Taille);
                if (taille != null)
                    tableau.Points = taille.Valeur.Value;
                await db.SaveChangesAsync();

                return RedirectToAction("Index");
            }

            LoadOptions(tableau);
            return View(tableau);
        }

        // GET: Tableaux/Delete/5
        public async Task<ActionResult> Delete(int? id)
        {
            if (id == null)
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);

            var tableau = await db.Tableaux.FindAsync(id);
            if (tableau == null) return HttpNotFound();

            return View(tableau);
        }

        // POST: Tableaux/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> DeleteConfirmed(int id)
        {
            var tableau = await db.Tableaux.FindAsync(id);
            db.Tableaux.Remove(tableau);
            await db.SaveChangesAsync();

            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
                db.Dispose();

            base.Dispose(disposing);
        }

        private void LoadOptions(Tableau model = null)
        {
            ViewBag.Techniques = SelectOptions(db.Techniques.Select(x => x.Nom), model?.Technique);
            ViewBag.Sujets = SelectOptions(db.Sujets.Select(x => x.Nom), model?.Sujet);
            ViewBag.Supports = SelectOptions(db.Supports.Select(x => x.Nom), model?.Support);
            ViewBag.Cadres = SelectOptions(db.Cadres.Select(x => x.Nom), model?.Cadre);
            ViewBag.Stockages = SelectOptions(db.Stokages.Select(x => x.Nom), model?.Stockage);
            ViewBag.Tailles = SelectOptions(db.Tailles.Select(x => x.Nom), model?.Taille);
        }

        private SelectList SelectOptions(IQueryable<string> list, string Nom)
        {
            var data = list.OrderBy(x => x).ToList();
            data.Add("(autre)");
            if (!data.Contains(Nom)) data.Insert(0, Nom);
            return new SelectList(data.Select(p => new { Id = p, Caption = p }), "Id", "Caption", Nom);
        }
    }
}
