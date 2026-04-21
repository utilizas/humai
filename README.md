# Memépolis-Lab — Demo

**Análisis computacional de la erosión epistémica en la comunicación política contemporánea (2023–2026)**

> Proyecto Quarto/RStudio generado íntegramente por **Claude Opus 4.7** a partir de un único prompt, como demostración práctica en un curso dirigido a profesorado y estudiantes de Traducción (Universidad de Granada, 2026).

---

## Qué es esto

Este repositorio contiene el esqueleto renderizado de *Memépolis-Lab*: un proyecto de investigación sobre cómo un conjunto de líderes políticos contemporáneos (Trump, Milei, Bukele, Netanyahu, Meloni, Orbán) ha reescrito los manuales de comunicación política al gobernar en registro memético.

Los materiales aquí publicados son el resultado de ejecutar el prompt que aparece al final de este archivo sobre Claude Opus 4.7, sin edición posterior al renderizado. El proyecto compiló sin errores en el primer intento.

El propósito del repositorio no es definitivo sino demostrativo: ilustra la diferencia entre un LLM capaz de producir infraestructura técnica operativa (ficheros reales, YAML válido, corpus simulado, script de renderizado) y otros servicios que responden al mismo encargo con descripciones textuales de lo que harían.

El proyecto se enmarca en la línea de investigación iniciada en la monografía:

> Moreno Muñoz, M. (2026). *Memes and the Philosophy of Digital Phenomena: Viral Culture as Epistemic Infrastructure?* Zenodo. [https://doi.org/10.5281/zenodo.19277505](https://doi.org/10.5281/zenodo.19277505)

---

## Estructura

```
memepolis-lab/
├── _quarto.yml
├── index.qmd
├── 01-marco-teorico.qmd
├── 02-corpus-y-metodologia.qmd
├── 03-analisis-memetico.qmd
├── 04-implicaciones.qmd
├── slides.qmd                  ← presentación reveal.js (10 slides)
├── data/
│   └── memes_politicos_2023_2026.csv
├── R/
│   └── funciones-analisis.R
├── references.bib
├── styles.scss
├── render-all.R
└── README.md
```

---

## Requisitos

- R ≥ 4.3
- Quarto ≥ 1.4
- Paquetes R: `tidyverse`, `ggplot2`, `dplyr`, `readr`, `quarto`

Instalación de dependencias desde la consola de R:

```r
install.packages(c("tidyverse", "quarto"))
```

---

## Renderizado

```r
source("render-all.R")
```

El script ejecuta `quarto::quarto_render()` sobre el proyecto completo. La presentación en reveal.js queda en `_site/slides.html`; la versión `.pptx` en `_site/slides.pptx`.

---

## Licencia

[CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/) · Miguel Moreno Muñoz · ORCID [0000-0002-0746-9587](https://orcid.org/0000-0002-0746-9587) · Universidad de Granada

---

## Sobre las instrucciones de partida

El mismo prompt fue enviado de forma idéntica a Gamma y a Claude Opus 4.7. Los resultados comparados constituyen el material de trabajo del curso.

