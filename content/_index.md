+++
template = "homepage.html"
+++

<style>
.homepage-hero {
    text-align: center;
    padding: 2rem 0;
}

.homepage-hero-avatar {
    border-radius: 50%;
    width: 300px;
    height: auto;
    object-fit: cover;
    margin: 0 auto 0;
    display: block;
}

.homepage-hero-title {
    font-size: 3rem;
    margin-top: 0.5rem;
    margin-bottom: 1rem;
}

.homepage-hero-subtitle {
    font-size: 1.25rem;
    margin-bottom: 1rem;

</style>

<div class="homepage-hero">
    <img src="avartar.png" alt="Yanwen Xu" class="homepage-hero-avatar" />
    <h1 class="homepage-hero-title">Yanwen Xu</h1>
    <p class="homepage-hero-subtitle">Ph.D. Candidate in CSE @ UC Santa Cruz && GPU Engineer @ Samsung</p>
</div>

# 👋 Hi

I am a final year **Ph.D. candidate** in the Department of *Computer Science & Engineering* at University of California Santa Cruz ([**UCSC**](https://www.ucsc.edu/)), supervised by [**Tyler Sorensen**](https://users.soe.ucsc.edu/~tsorensen/).

**My research interests** are in `heterogeneous computing`, `programming languages`, and `compilers`. I am especially interested in accelerating workloads on tightly-coupled CPU-accelerator (e.g., GPU/FPGA) systems, with the aim to enable the full potential of these types of systems. I also think programmers deserve better tools for developing heterogeneous applications; this fuels my exploration in developing novel compiler techniques and programming language features.

<!-- ```c++
struct Research {
    // Tightly-coupled CPU + {GPU, FPGA, TPU}
    using Architecture = Heterogeneous<UnifiedMemory>;

    void optimize() {
        Compiler::bridge(HighLevelPL, PeakPerformance);
    }

    bool goal = "Unleash full hardware potential";
};
``` -->

**Before starting my Ph.D**., I was an `indie game developer`, and many of the game projects are shown in my [portfolio](projects). Aside from academics, I am a competitive `fencing` (🤺) athlete and a certified fencing `coach` by *U.S. Institutions of Higher Education*. I earned my diploma of *Instructor at Arms in Foil* in the year 2022, and *Provost at Arms* in year 2025.

<!-- # 📣 Latest News

**2025**
* **Oct** —  **Best Paper Award** @ **IISWC'25** for *BetterTogether*.
* **Sep** —  Joined **Samsung Advanced Computing Lab** (Full-time).
* **Aug** —  *BetterTogether* accepted for publication at **IISWC'25**.

**2024**
* **Apr** — Started Research Internship at **Mercedes-Benz R&D North America**.

**2023**
* **Jun** — Invited Talk: *Redwood* at **OSCAR’23**.
* **May** — Advanced to **Ph.D. Candidacy**.
* **Apr** — Conference Presentation: *Redwood* at **ISPASS’23**. -->

<!-- # Latest News -->
# 📣 Latest News


* **Oct, 2025** - I presented **BetterTogether** at **IISWC'25**. Our work received the **Best Paper Award**! Nicely done team! 🏆
* **Sep, 2025** - I joined **Samsung Advanced Computing Lab** full-time!
* **Aug, 2025** - Our work **BetterTogether** was accepted to **IISWC'25**. Nice job team!
* **Apr, 2024** - I started an internship at **Mercedes-Benz R&D North America**!
* **May, 2023** - Successfully advanced to **Ph.D. Candidacy**! ✅
* **Jun, 2023** - I gave a virtual talk on **Redwood** at OSCAR’23.
* **Apr, 2023** - I presented **Redwood** at **ISPASS’23**!
<!-- * **Feb 28, 2023:** Our paper on **Redwood** (heterogeneous tree traversal) is accepted to **ISPASS’23**! Thanks to Ang and Tyler! -->
<!-- * **Oct 10, 2022:** I presented **Redwood** at the ACM Student Research Competition (SRC) for **PACT 2022**. -->
<!-- * **Oct 05, 2025:** Our work **BetterTogether** received a Best Paper Nomination. -->

# Publications

* **BetterTogether: An Interference-Aware Framework for Fine-grained Software Pipelining on Heterogeneous SoCs.**
    * **Yanwen Xu**, R. Sharma, Z. Chen, S. Mistry, T. Sorensen
    * *IEEE International Symposium on Workload Characterization ([IISWC](https://iiswc.org/iiswc2025/))*, 2025 **[Best Paper Award]**
    * [[pdf](https://ieeexplore.ieee.org/stamp/stamp.jsp?tp=&arnumber=11242071)] [[slides](#)] [[code](https://github.com/ucsc-redwood/better-together)] [[DOI](https://ieeexplore.ieee.org/document/11242071)]

* **Redwood: Flexible and Portable Heterogeneous Tree Traversal Workloads.**
    * **Yanwen Xu**, A. Li, T. Sorensen
    * *IEEE International Symposium on Performance Analysis of Systems and Software ([ISPASS](https://ispass.org/ispass2023/))*, 2023
    * [[pdf](https://ieeexplore.ieee.org/stamp/stamp.jsp?tp=&arnumber=10158162)] [[slides](#)] [[code](https://github.com/ucsc-redwood/redwood-aio)] [[DOI](https://ieeexplore.ieee.org/document/10158162)]

* **Evaluating Shared Memory Heterogeneous Systems Using Traverse-Compute Workloads.**
    * **Yanwen Xu**, A. Li, T. Sorensen
    * *Open-Source Computer Architecture Research ([OSCAR](https://oscar-workshop.github.io/Home_2023.html)) Workshop*, 2023
    * [[slides](https://oscar-workshop.github.io/files/03_OSCAR2023-yanwenxu.pdf)] [[video](https://youtu.be/Ebvd9IFk1g8)] 

* **REDwood: Heterogeneous Implementation of Tree Applications with Accelerated REDuctions.**
    * **Yanwen Xu**, T. Sorensen
    * *Parallel Architectures and Compilation Techniques ([PACT](https://pact22.cs.illinois.edu/)), ACM Student Research Competition*, 2022
    * [[poster](#)] 

* **A modular architecture for procedural generation of towns, intersections and scenarios for testing autonomous vehicles.**
    * I. Paranjape, A. Jawad, **Yanwen Xu**, A. Song, J. Whitehead
    * *IEEE Intelligent Vehicles Symposium ([IV](https://ieee-iv.org/2020/))*, 2020
    * [[pdf](https://ieeexplore.ieee.org/stamp/stamp.jsp?tp=&arnumber=9304625)] [[code](https://github.com/AugmentedDesignLab/Sumo2Unreal)] [[DOI](https://ieeexplore.ieee.org/document/9304625)]

