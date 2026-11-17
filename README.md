# Shell Lesson Data Repository

This repository contains data and example scripts used in the **Git, R, and Unix for Reproducible Scientific Analysis** tutorial (Day 4).

## 📂 Repository Structure

```
/shell-lesson-data/
├─ rawdata/                # Raw data files (e.g., gapminder dataset)
│   └─ gapminder.csv       # Gapminder data downloaded for the tutorial
├─ alkanes/                # Example PDB files and a Bash script
│   ├─ methane.pdb
│   ├─ ethane.pdb
│   ├─ propane.pdb
│   └─ script.sh
├─ animals/                # Small CSV and text examples
│   └─ animals.csv
├─ creatures/              # Sample binary `.dat` files and a script
│   ├─ basilisk.dat
│   ├─ minotaur.dat
│   └─ unicorn.dat
├─ writing/                # Large text examples (novel, haiku)
│   ├─ LittleWomen.txt
│   └─ haiku.txt
├─ analysis/               # Day‑4 R script and helper Bash script
│   ├─ gapminder_analysis.R
│   └─ run_analysis.sh
├─ results/                # Generated plots (git‑ignored)
├─ gapminder.html          # Interactive Gapminder visualisation (see below)
├─ .gitignore              # Files Git should ignore
└─ README.md               # This file
```


```
/shell-lesson-data/
├─ rawdata/                # Raw data files (e.g., gapminder dataset)
│   └─ gapminder.csv       # Gapminder data downloaded for the tutorial
├─ alkanes/                # Example PDB files and a Bash script
│   ├─ methane.pdb
│   ├─ ethane.pdb
│   ├─ propane.pdb
│   └─ script.sh
├─ animals/                # Small CSV and text examples
│   └─ animals.csv
├─ creatures/              # Sample binary `.dat` files and a script
│   ├─ basilisk.dat
│   ├─ minotaur.dat
│   └─ unicorn.dat
├─ writing/                # Large text examples (novel, haiku)
│   ├─ LittleWomen.txt
│   └─ haiku.txt
├─ .gitignore              # Files/folders to ignore in Git
└─ README.md               # This file
```

## 🎯 Goal of the Tutorial

The Day‑4 lesson walks through how to:
1. **Organise data** for reproducible analysis.
2. **Use Git** to track changes to scripts and data.
3. **Write Bash scripts** that automate data processing steps.
4. **Integrate R** (or other languages) with command‑line workflows.

By the end, you should be comfortable creating a clean project directory, version‑controlling it with Git, and pushing it to a remote GitHub repository.

## 🛠️ Getting Started

1. **Clone the repository** (once it exists on GitHub) to your local machine:

```bash
git clone https://github.com/<YOUR_USERNAME>/shell-lesson-data.git
cd shell-lesson-data
```

2. **Explore the data** – for example, view the first few rows of the Gapminder CSV:

```bash
head rawdata/gapminder.csv
```

3. **Run the example Bash script** (make it executable first):

```bash
chmod +x alkanes/script.sh
./alkanes/script.sh
```

4. **Start your own analysis** – add R, Python, or other scripts that consume the data in `rawdata/`.

## 📤 Pushing to GitHub

If you haven’t created a remote repository yet, follow these steps on GitHub:
1. Sign in to GitHub and click **New repository**.
2. Name it `shell-lesson-data` (or any name you prefer).
3. **Do not** initialize with a README, .gitignore, or license – we already have those locally.
4. Click **Create repository**.
5. Follow the instructions shown to add the remote and push the local commits:

```bash
git remote add origin https://github.com/<YOUR_USERNAME>/shell-lesson-data.git
git branch -M main

git push -u origin main
```

## 📝 License & Credits

This repository is provided **as‑is** for educational purposes. The tutorial material is based on the work by **J. van Leuven** (see the original lesson at https://jtvanleuven.github.io/Git-R-and-Unix-for-Reproducible-Scientific-Analysis/day4.html).

---

*Happy coding and reproducible science!*