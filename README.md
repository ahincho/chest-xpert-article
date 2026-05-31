# Chest Xpert AI — Artículo Académico (LaTeX)

Artículo científico en formato de dos columnas desarrollado como Producto Académico (PAC) para el curso de Aprendizaje Automático. Documenta el diseño, implementación y evaluación de un sistema de clasificación automática multi-etiqueta de patologías torácicas mediante Deep Learning.

**Resultado principal:** AUC = 0.869 [IC 95%: 0.844–0.893] sobre 5 patologías (Cardiomegaly, Edema, Consolidation, Atelectasis, Pleural Effusion).

---

## Repositorios del proyecto

| Repositorio | Descripción |
|---|---|
| [`chest-xpert-ai`](https://github.com/ahincho/chest-xpert-ai) | Notebook de entrenamiento (PyTorch + TorchXRayVision + W&B + ONNX) |
| [`chest-xpert-article`](https://github.com/ahincho/chest-xpert-article) | Este repositorio — fuente LaTeX del artículo |
| [`chest-xpert-backend`](https://github.com/ahincho/chest-xpert-backend) | API REST con FastAPI + ONNX Runtime |
| [`chest-xpert-frontend`](https://github.com/ahincho/chest-xpert-frontend) | Aplicación web con Angular |

---

## Estructura del repositorio

```
chest-xpert-article/
├── main.tex                     # Documento principal (orquestador)
├── main.pdf                     # PDF compilado (resultado final)
├── references.bib               # Bibliografía (41 referencias, formato natbib)
├── compile.ps1                  # Script de compilación — Windows PowerShell
├── compile.bat                  # Script de compilación — Windows CMD
├── compile.sh                   # Script de compilación — Linux / macOS
├── .gitignore                   # Ignora archivos auxiliares LaTeX
├── .latexmkrc                   # Configuración latexmk (requiere Perl)
├── sections/                    # Secciones modulares del artículo
│   ├── abstract.tex             # Resumen y palabras clave
│   ├── introduction.tex         # 1. Introducción / Definición del problema
│   ├── data-preparation.tex     # 2. Preparación y limpieza de datos
│   ├── exploratory-analysis.tex # 3. Análisis exploratorio
│   ├── modeling.tex             # 4. Modelado predictivo
│   ├── business-model.tex       # 5. Modelo de negocio
│   ├── results.tex              # 6. Resultados
│   ├── ethics.tex               # 7. Consideraciones éticas
│   ├── conclusions.tex          # 8. Conclusiones y trabajo futuro
│   └── appendix.tex             # A. Repositorios de código fuente
└── figures/                     # Figuras del artículo (PNG)
    ├── pathology-prevalence-by-gender.png
    ├── prevalence-rate-by-sex-ci95.png
    ├── sex-distribution-training-set.png
    ├── training-curves.png
    ├── wandb-training-dashboard.png
    ├── wandb-sweep-results.png
    ├── auc-roc-model-configs.png
    ├── gradcam-cardiomegaly-edema-consolidation.png
    ├── gradcam-atelectasis-pleural-effusion.png
    └── fullstack-plus-model-application.png
```

---

## Requisitos

- **MiKTeX** (Windows) o **TeX Live** (Linux/macOS)
- No requiere Perl — los scripts usan `pdflatex` + `bibtex` directamente

---

## Compilación

### Opción 1: Kiro / VS Code con LaTeX Workshop

Abrir `main.tex` y guardar (**Ctrl+S**). La extensión compila automáticamente usando la receta configurada en `.vscode/settings.json` (pdflatex + bibtex, sin latexmk).

### Opción 2: Scripts de compilación

| Plataforma | Comando |
|---|---|
| Windows PowerShell | `.\compile.ps1` |
| Windows CMD | `compile.bat` |
| Linux / macOS | `bash compile.sh` |

La salida es limpia — el verbose se redirige a `compile.log`:

```
Compiling Chest Xpert AI article...
Pass 1 (pdflatex)...          OK
Bibliography (bibtex)...      OK
Pass 2 (pdflatex)...          OK
Pass 3 (pdflatex)...          OK
Cleaning auxiliary files...   OK

Done! Output: main.pdf
```

---

## Mapeo a la rúbrica del PAC

| Sección | Archivo | Criterio evaluado | Pts |
|---|---|---|---|
| 1 | `introduction.tex` | Definición del problema | 3 |
| 2 | `data-preparation.tex` | Preparación y limpieza de datos | 3 |
| 3–4 | `exploratory-analysis.tex` + `modeling.tex` | Análisis exploratorio y modelado | 4 |
| 5+7 | `business-model.tex` + `ethics.tex` | Modelo de negocio y ética | 4 |
| 6 | `results.tex` | Presentación de resultados | 4 |
| — | `references.bib` | Estilo de citado APA | 2 |
| — | Todo el documento | Redacción y ortografía | 0 (−1 si errores) |
| | | **Total** | **20** |

---

## Convenciones

| Aspecto | Convención |
|---|---|
| Nombres de archivos | Inglés, kebab-case (`data-preparation.tex`) |
| Contenido del artículo | Español |
| Bibliografía | `natbib` + `plainnat` (citas numéricas `[1]`) |
| Fuente del documento | 9pt (`extarticle`) |
| Páginas | 8 páginas (incluyendo figuras y referencias) |

---

## Autores

- **Angel Hincho Jove** — 72190199@continental.edu.pe
- **Angel Espinoza Julca** — 42702445@continental.edu.pe
- **Juan Martinez Yupanqui** — 08646067@continental.edu.pe

Universidad Continental, Facultad de Ingeniería
