document.addEventListener("DOMContentLoaded", function () {
  if (typeof mermaid !== "undefined") {
    mermaid.init(undefined, document.querySelectorAll(".mermaid"));
  }
});

if (typeof document$ !== "undefined") {
  // This ensures re-render after instant navigation
  document$.subscribe(() => {
    if (typeof mermaid !== "undefined") {
      mermaid.init(undefined, document.querySelectorAll(".mermaid"));
    }
  });
}
