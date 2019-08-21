using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Threading.Tasks;
using System.Web.Mvc;
using Peintur.Models;

namespace Peintur.Controllers
{
    public class ParametresController : Controller
    {
        private PeinturContext db = new PeinturContext();

        //https://stackoverflow.com/questions/38372618/multiple-tables-with-same-structure-entity-framework
        //https://weblogs.asp.net/manavi/inheritance-mapping-strategies-with-entity-framework-code-first-ctp5-part-3-table-per-concrete-type-tpc-and-choosing-strategy-guidelines

        //https://stackoverflow.com/questions/27022167/generic-crud-controllers-and-views
        //https://forums.asp.net/t/2141236.aspx?Is+it+okay+to+create+generic+base+controller+to+get+rid+of+CRUD+boilerplate+logic+

        protected override void OnActionExecuting(ActionExecutingContext context)
        {
            var type = context.RouteData.Values["type"].ToString().ToLower();
            type = type.Substring(0, type.Length - 1);
            ViewBag.ParametreType = type;

            base.OnActionExecuting(context);
        }
        // GET: Parametres
        public async Task<ActionResult> Index()
        {
            var model = db.Techniques
                          .OrderBy(p => p.Nom)
                          .MapTo<ParametreIndex>();

            return View(await model.ToListAsync());
        }

        // GET: Parametres/Type/Details/5
        public async Task<ActionResult> Details(int? id)
        {
            if (id == null)
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);

            var model = await db.Techniques.FindAsync(id);
            if (model == null) return HttpNotFound();

            return View(model);
        }

        // GET: Parametres/Type/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Parametres/Type/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Create([Bind(Include = "ID,Nom,Valeur")] Technique model)
        {
            if (ModelState.IsValid)
            {
                db.Techniques.Add(model);
                await db.SaveChangesAsync();

                return RedirectToAction("Index");
            }

            return View(model);
        }

        // GET: Parametres/Type/Edit/5
        public async Task<ActionResult> Edit(int? id)
        {
            if (id == null)
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);

            var model = await db.Techniques.FindAsync(id);
            if (model == null) return HttpNotFound();

            return View(model);
        }

        // POST: Parametres/Type/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Edit([Bind(Include = "ID,Nom,Valeur")] Technique model)
        {
            if (ModelState.IsValid)
            {
                db.Entry(model).State = EntityState.Modified;
                await db.SaveChangesAsync();

                return RedirectToAction("Index");
            }
            return View(model);
        }

        // GET: Parametres/Type/Delete/5
        public async Task<ActionResult> Delete(int? id)
        {
            if (id == null)
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);

            var model = await db.Techniques.FindAsync(id);
            if (model == null) return HttpNotFound();

            return View(model);
        }

        // POST: Parametres/Type/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> DeleteConfirmed(int id)
        {
            var model = await db.Techniques.FindAsync(id);
            db.Techniques.Remove(model);
            await db.SaveChangesAsync();

            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
                db.Dispose();

            var c = base.ControllerContext.RouteData.Values;// ["controller"].ToString();
            

            base.Dispose(disposing);
        }
    }
}
