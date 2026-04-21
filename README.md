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

## Prompt original

El siguiente prompt fue enviado de forma idéntica a Gamma y a Claude Opus 4.7. Los resultados comparados constituyen el material de trabajo del curso.

<details>
<summary>Ver prompt completo</summary>

```
Necesito una presentación académica de exactamente 10 diapositivas en formato .pptx 
acompañada del esqueleto completo de un proyecto RStudio/Quarto listo para renderizar 
sin errores en el primer intento.

TEMA DEL PROYECTO
"Memépolis-Lab: análisis computacional de la erosión epistémica en la comunicación 
política contemporánea (2023–2026)". Estudio mixto cualitativo-cuantitativo sobre 
cómo un conjunto de líderes políticos (Trump 2025–2026, Milei, Bukele, Netanyahu en 
contexto bélico, Meloni y Orbán en Europa) ha reescrito los manuales de comunicación 
política gobernando en registro memético: brevedad, carga afectiva, indeterminación 
factual y diseño para la redistribución viral.

Marco teórico:
- Hall (codificación/decodificación)
- Frankfurt (distinción bullshit/mentira)
- Baudrillard (simulacro)
- Haidt (epistemología tribal)
- Mercier & Sperber (teoría argumentativa de la razón)

Ejes empíricos:
1) Memetización de la guerra (Gaza 2023–2025, Ucrania 2022–)
2) Colapso performativo del liderazgo político
3) IA como acelerador memético (memes producidos, no solo sobre, modelos de lenguaje)

ESTRUCTURA DE LAS 10 DIAPOSITIVAS
 1. Portada con título, autoría institucional, afiliación y DOI placeholder
 2. Problema de investigación: el colapso performativo del liderazgo político
 3. Marco teórico (cuadro sinóptico con los cinco autores y sus aportes)
 4. Pregunta de investigación, hipótesis y objetivos específicos
 5. Metodología y corpus: criterios de selección del período 2023–2026
 6. Eje 1 — Memetización de la guerra
 7. Eje 2 — Liderazgo memético (caso Trump-Irán como fact-checking distribuido)
 8. Eje 3 — IA como acelerador memético
 9. Implicaciones para la comunicación política y para la formación universitaria
10. Conclusiones, referencias principales y contacto

ENTREGABLES ADICIONALES (proyecto RStudio/Quarto completo)
Estructura de carpetas y archivos con contenido esqueleto coherente:

memepolis-lab/
├── _quarto.yml
├── index.qmd
├── 01-marco-teorico.qmd
├── 02-corpus-y-metodologia.qmd
├── 03-analisis-memetico.qmd
├── 04-implicaciones.qmd
├── slides.qmd
├── data/
│   └── memes_politicos_2023_2026.csv
├── R/
│   └── funciones-analisis.R
├── references.bib
├── styles.scss
├── render-all.R
└── README.md

REQUISITOS DE ENTREGA
- La presentación debe poder descargarse en formato .pptx
- El proyecto completo debe descargarse como un único archivo .zip

REQUISITOS DE ESTILO
- Idioma: español académico (registro universitario, no divulgativo)
- Citas y bibliografía en formato APA 7 estricto
- Ortotipografía española (comillas « », rayas de inciso —, no "quotes")
```

</details>
