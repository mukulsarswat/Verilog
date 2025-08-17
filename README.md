# This is Verilog Repo. to upload my projects based on Verilog
import os

# Path to your repo (".": current directory)
repo_path = "."

# Folders you want to skip
ignore = {".git", ".github", "__pycache__"}

# Scan subdirectories
projects = [f for f in os.listdir(repo_path) if os.path.isdir(f) and f not in ignore]

# Sort alphabetically
projects.sort()

readme_content = """# Verilog Projects

Verilog is a hardware description language (HDL) used to model digital systems such as processors, memory, and FPGAs.  
It allows designers to describe circuits at both behavioral and structural levels, making it widely used in chip design and verification.  
This repository contains various Verilog-based projects with organized documentation and source code.  

---

## 📑 Index of Projects
"""

# Add project links
for proj in projects:
    readme_content += f"- [{proj}](./{proj})\n"

readme_content += """

---
