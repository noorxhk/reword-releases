// Shared by every page: direct DMG links, the nav's glass on scroll, and copy buttons.

// Download buttons (a.dl) get the latest DMG straight from GitHub; without the API they keep the releases page.
fetch("https://api.github.com/repos/noorxhk/reword-releases/releases/latest")
  .then((r) => r.json())
  .then((rel) => {
    const dmg = rel.assets.find((a) => a.name.endsWith(".dmg"));
    if (!dmg) return;
    const v = rel.tag_name.replace(/^v/, "");
    document.querySelectorAll("a.dl").forEach((a) => (a.href = dmg.browser_download_url));
    document.querySelectorAll("[data-version]").forEach((el) => (el.textContent = el.dataset.version.replace("{v}", v)));
  })
  .catch(() => {});

const nav = document.querySelector("nav");
addEventListener("scroll", () => nav.classList.toggle("solid", scrollY > 20), { passive: true });

// <button data-copy="#id"> copies that element's text.
document.querySelectorAll("[data-copy]").forEach((b) =>
  b.addEventListener("click", async () => {
    const src = document.querySelector(b.dataset.copy), label = b.textContent;
    try { await navigator.clipboard.writeText(src.textContent); b.textContent = "Copied ✓"; }
    catch { getSelection().selectAllChildren(src); b.textContent = "Press ⌘C"; }
    setTimeout(() => (b.textContent = label), 2000);
  }));
