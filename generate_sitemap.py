import os

def generate_sitemap(base_path="docs", indent=0):
    lines = []
    for entry in sorted(os.listdir(base_path)):
        full_path = os.path.join(base_path, entry)
        if entry.startswith(".") or entry == "__pycache__":
            continue
        if os.path.isdir(full_path):
            lines.append("  " * indent + f"- **{entry}/**")
            lines.extend(generate_sitemap(full_path, indent + 1))
        elif entry.endswith(".md"):
            title = entry.replace(".md", "")
            lines.append("  " * indent + f"- {title} ({entry})")
    return lines

if __name__ == "__main__":
    sitemap_lines = generate_sitemap()
    output_file = "sitemap.md"
    with open(output_file, "w") as f:
        f.write("# Site Map\n\n")
        f.write("\n".join(sitemap_lines))
    print(f"Site map generated in {output_file}")
