using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Threading.Tasks;
using System.Web.Mvc;
using Peintur.Models;

namespace Peintur.Controllers
{
    public class ParametresController<T> : Controller where T : Parametre, new()
    {
        private PeinturContext db = new PeinturContext();

        protected override void OnActionExecuting(ActionExecutingContext context)
        {
            var type = context.RouteData.Values["controller"].ToString().ToLower();
            type = type.Substring(0, type.Length - 1);
            ViewBag.ParametreType = type;

            base.OnActionExecuting(context);
        }

        // GET: Parametres
        public async Task<ActionResult> Index()
        {
            var model = db.Set<T>()
                          .OrderBy(p => p.Nom)
                          .MapTo<ParametreIndex>();

            return ViewAction(await model.ToListAsync());
        }

        // GET: Parametres/Type/Details/5
        public async Task<ActionResult> Details(int? id)
        {
            if (id == null)
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);

            var model = await db.Set<T>().FindAsync(id);
            if (model == null) return HttpNotFound();

            return ViewAction( model);
        }

        // GET: Parametres/Type/Create
        public ActionResult Create()
        {
            return ViewAction();
        }

        // POST: Parametres/Type/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Create([Bind(Include = "Nom,Valeur")] T model)
        {
            if (ModelState.IsValid)
            {
                db.Set<T>().Add(model);
                await db.SaveChangesAsync();

                return RedirectToAction("Index");
            }

            return ViewAction(model);
        }

        // GET: Parametres/Type/Edit/5
        public async Task<ActionResult> Edit(int? id)
        {
            if (id == null)
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);

            var model = await db.Set<T>().FindAsync(id);
            if (model == null) return HttpNotFound();

            return ViewAction(model);
        }

        // POST: Parametres/Type/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Edit([Bind(Include = "ID,Nom,Valeur")] T model)
        {
            if (ModelState.IsValid)
            {
                db.Entry(model).State = EntityState.Modified;
                await db.SaveChangesAsync();

                return RedirectToAction("Index");
            }

            return ViewAction(model);
        }

        // GET: Parametres/Type/Delete/5
        public async Task<ActionResult> Delete(int? id)
        {
            if (id == null)
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);

            var model = await db.Set<T>().FindAsync(id);
            if (model == null) return HttpNotFound();

            return ViewAction(model);
        }

        // POST: Parametres/Type/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> DeleteConfirmed(int id)
        {
            var model = await db.Set<T>().FindAsync(id);
            db.Set<T>().Remove(model);
            await db.SaveChangesAsync();

            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
                db.Dispose();

            base.Dispose(disposing);
        }

        private ViewResult ViewAction(object model = null)
        {
            var action = base.RouteData.Values["action"].ToString();
            var view = "~/Views/Parametres/" + action + ".cshtml";

            return base.View(view, model);
        }
    }

    public class TechniquesController : ParametresController<Technique> { }
    public class SujetsController : ParametresController<Sujet> { }
    public class SupportsController : ParametresController<Support> { }
    public class CadresController : ParametresController<Cadre> { }
    public class StockagesController : ParametresController<Stockage> { }
    public class TaillesController : ParametresController<Taille> { }
    public class CotesController : ParametresController<Cote> { }
}
