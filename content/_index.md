+++
template = "homepage.html"
+++

# About

I build systems that make heterogeneous hardware easier to program and better at using the performance it already has. My work sits at the intersection of **GPU computing**, **compilers**, **programming languages**, and **performance modeling**.

I earned my **Ph.D. in Computer Science & Engineering** from the University of California, Santa Cruz, advised by Professor [**Tyler Sorensen**](https://users.soe.ucsc.edu/~tsorensen/). I am currently a **GPU Engineer at Samsung Advanced Computing Lab**, working on GPU systems at a high level.

My research focuses on tightly coupled CPU-accelerator systems, especially GPU/FPGA platforms with shared or unified memory. I am interested in compiler and runtime techniques that let programmers express irregular, performance-sensitive workloads without giving up control over the machine.

```c++
struct ResearchFocus {
    using System = Heterogeneous<CPU, GPU, FPGA>;
    using Tools = Compiler + Runtime + PerformanceModel;

    void goal(Program p, Hardware h) {
        make_expressive(p);
        make_fast(p, h);
    }
};
```

For a deeper view of the work, see my [research projects](projects), [publications](publications), and [CV](pdf-cv.pdf).

## Selected Highlights

- **Best Paper Award at IISWC 2025** for **BetterTogether**, an interference-aware framework for fine-grained software pipelining on heterogeneous SoCs.
- **Redwood** explores flexible and portable acceleration for tree-traversal workloads on shared-memory heterogeneous systems.
- **DECADES** contributed compiler and runtime support for a reconfigurable heterogeneous many-core research platform.
- **CruzWay** and related simulation work connected procedural generation, autonomous-vehicle testing, and large-scale system design.

## Beyond Research

Before my Ph.D., I built independent games and custom RPG Maker engines. Those projects are still part of how I think about systems: real-time interaction, tooling, scripting, performance constraints, and making complex behavior editable by people. A few of these projects are collected in my [game portfolio](games).

Outside computing, I am a competitive fencing athlete and certified coach. I earned my _Instructor at Arms in Foil_ diploma in 2022 and _Provost at Arms_ in 2024.

---

## Latest News

- **Mar 2026** — I successfully defended my dissertation at UC Santa Cruz.
- **Oct 2025** — I presented **BetterTogether** at **IISWC'25**, where the work received the **Best Paper Award**.
- **Sep 2025** — I joined the **Samsung Advanced Computing Lab** full-time!
- **Aug 2025** — Our work **BetterTogether** was accepted for publication at **IISWC'25**.
- **Apr 2024** — I started a research internship at **Mercedes-Benz R&D North America**.
- **Jun 2023** — I gave a virtual talk on **Redwood** at OSCAR’23.
- **May 2023** — I advanced to **Ph.D. candidacy**.
- **Apr 2023** — I presented **Redwood** at **ISPASS’23**.
