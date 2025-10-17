# ✅ MkDocs & GitHub Pages Setup Audit
**Repositories:**  
- `bnr-refit`  
- `caribdata-outputs`  

---

## 🔹 Step 1: Created and Managed Project Structure
You started with a working MkDocs site (`site1` / `bnr-refit`) built globally, and decided to:

- Create isolated **Python virtual environments** for each site.
- Duplicate the first site to start a second (`caribdata-outputs`).

### Actions:
- Renamed environments for clarity: e.g., `venv-bnr-refit`, `venv-caribdata`.
- Activated each venv before installing packages or deploying.

---

## 🔹 Step 2: Isolated Environments with `venv`

For both `site1` and `site2`:
```bash
python -m venv venv-name
.\venv-name\Scripts\activate
pip install -r requirements.txt
```

- Installed `mkdocs`, `mkdocs-material`, and useful plugins.
- Saved dependencies with `pip freeze > requirements.txt`.

---

## 🔹 Step 3: Git Branch Structure Decisions

### For `bnr-refit`:
- Originally had only a `gh-pages` branch.
- You created a `main` branch temporarily:
  ```bash
  git checkout --orphan main
  git add .
  git commit -m "Initial commit of MkDocs source files"
  git push origin main
  ```
- Then realized a `master` branch already existed.
- ✅ Chose to keep `master` for source files and delete `main`:
  ```bash
  git branch -D main
  git push origin --delete main
  ```

### For `caribdata-outputs`:
- Started from a clean copy of `bnr-refit`.
- Had both `main` and `gh-pages` from the start.
- Kept this dual-branch structure intentionally.

---

## 🔹 Step 4: GitHub Repo Cleanup & Consistency

For each repo:
- Verified only one working source branch (`master` or `main`), and one deployment branch (`gh-pages`).
- Ensured `mkdocs.yml` and `docs/` are tracked in `master`/`main`.

---

## 🔹 Step 5: Deploying to GitHub Pages

You deployed the sites using:

```bash
.\venv-name\Scripts\activate
mkdocs gh-deploy --clean
```

This:
- Built your site into HTML
- Committed it to the `gh-pages` branch
- Pushed to GitHub, updating the live site

---

## 🔹 Step 6: GitHub Pages Configuration

For both `bnr-refit` and `caribdata-outputs`, on GitHub:

- Went to **Settings → Pages**
- Set:
  - **Source**: `gh-pages`
  - **Folder**: `/ (root)`

Your websites are now live at:
- https://ianhambleton.github.io/bnr-refit/
- https://ianhambleton.github.io/caribdata-outputs/

---

## 📌 Notes for Future Maintenance

- Keep your virtual environments named clearly per project.
- Always activate the right venv before installing or deploying.
- Use `mkdocs gh-deploy --clean` to push changes.
- Track your source files in `main` or `master`.
- The `gh-pages` branch should never be edited manually.
