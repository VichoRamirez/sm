# Armado del deck v7

> Los scripts `build_v7.py` y `content.py` **no están en git**, porque el `.gitignore` del repo excluye `*.py`. Están en la copia local de Bruno. Si el equipo quiere versionarlos, hay que agregar una excepción al `.gitignore` (`!deliverys/exam-2/build/*.py`).

`build_v7.py` arma `global-sm_v7.pptx` a partir de una base que es el deck v6 con 12 diapositivas duplicadas al final. La base se armó con el script `add_slide.py` del skill de pptx de Claude Code, que copia la diapositiva con todo lo que necesita:

| Copias | De la diapositiva v6 | Para |
| --- | --- | --- |
| 7 | 5 "What a dealer pays to know" | Las seis dimensiones PESTEL y la de autos chinos |
| 1 | 15 "Who we will ask" | Portada del PESTEL |
| 2 | 24 "Every objective has its cell" | Feedback y síntesis |
| 2 | 26 "References" | References (3) y (4) |

```bash
python build_v7.py base.pptx global-sm_v7.pptx   # requiere python-pptx y lxml
```

- **Textos:** se editan en `content.py`, no en el `.pptx`.
- **Correcciones del bloque B** sobre diapositivas existentes: están en la sección 2 de `build_v7.py`. Usan el texto de [`../B_fuentes_deck.md`](../B_fuentes_deck.md).
- **Verificación:** el deck pasa `validate.py`. Las diapositivas se revisaron renderizadas con OnlyOffice, cambiando Century Gothic por URW Gothic, que tiene las mismas métricas. `global-sm_v7_preview.pdf` es ese render: sirve como vista previa. **El PDF que se entrega se exporta desde PowerPoint**, con Century Gothic instalada.
