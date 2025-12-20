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
    margin: 0 auto;
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
}
</style>

<div class="homepage-hero">
    {{ avatar(path="avartar.png", alt="Yanwen Xu", width=600) }}
    <h1 class="homepage-hero-title">Yanwen Xu</h1>
    <p class="homepage-hero-subtitle">Ph.D. Candidate in CSE @ UC Santa Cruz && GPU Engineer @ Samsung</p>
</div>

---

# 👋 Hi

I am a final-year **Ph.D. candidate** in the Department of _Computer Science & Engineering_ at the University of California, Santa Cruz ([**UCSC**](https://www.ucsc.edu/)), supervised by Professor [**Tyler Sorensen**](https://users.soe.ucsc.edu/~tsorensen/). I recently joined Samsung as a GPU Engineer.

**My research interests** include:

- `heterogeneous computing`
- `programming languages`
- `compilers`

I am particularly interested in accelerating workloads on tightly coupled CPU-accelerator (e.g., GPU/FPGA) systems, with the aim of realizing the full potential of these architectures. I also believe that programmers deserve better tools for developing heterogeneous applications; this fuels my exploration of novel compiler techniques and programming language features. You can find more details in my [research projects](projects) and [publications](publications).

```c++
struct Research {
    // Tightly-coupled CPU + {GPU, FPGA, TPU}
    using Architecture = Heterogeneous<UnifiedMemory>;

    void optimize() {
        Compiler::bridge(HighLevelPL, PeakPerformance);
    }

    auto goal = "Unleash full hardware potential";
};
```

<!-- Before starting my Ph.D., I was an `indie game developer`, and many of the game projects are shown in my [portfolio](games). Aside from academics, I am a competitive `fencing` (🤺) athlete and a certified fencing `coach` by *U.S. Institutions of Higher Education*. I earned my diploma of *Instructor at Arms in Foil* in the year 2022, and *Provost at Arms* in year 2025. -->

Before starting my Ph.D., I was an `indie game developer`, and many of my game projects are featured in my [portfolio](games). Aside from academia, I am a competitive `fencing` (🤺) athlete and a certified coach. I earned my _Instructor at Arms in Foil_ diploma in 2022 and _Provost at Arms_ in 2024.

**BTW:** My favorite Linux distro is _Fedora_, my favorite DE is _XFCE4_, and my favorite processor is _AMD EPYC_.

---

# 📣 Latest News

- **Oct 2025** — I presented **BetterTogether** at **IISWC'25**. Our work received the **Best Paper Award**! 🏆
- **Sep 2025** — I joined the **Samsung Advanced Computing Lab** full-time!
- **Aug 2025** — Our work **BetterTogether** was accepted for publication at **IISWC'25**.
- **Apr 2024** — I started a research internship at **Mercedes-Benz R&D North America**.
- **May 2023** — Successfully advanced to **Ph.D. Candidacy**! ✅
- **Jun 2023** — I gave a virtual talk on **Redwood** at OSCAR’23.
- **Apr 2023** — I presented **Redwood** at **ISPASS’23**.
