# ===============================================================
# R/funciones-analisis.R
# Memépolis-Lab · funciones auxiliares de análisis
# Autor: Miguel Moreno Muñoz · Universidad de Granada
# ===============================================================

suppressPackageStartupMessages({
  requireNamespace("dplyr",    quietly = TRUE)
  requireNamespace("ggplot2",  quietly = TRUE)
  requireNamespace("scales",   quietly = TRUE)
})

#' Tema ggplot2 consistente con el registro tipográfico de la monografía
#'
#' @param base_size Tamaño base de fuente (pt). Por defecto 12.
#' @return Un objeto `theme` de ggplot2.
#' @export
tema_memepolis <- function(base_size = 12) {
  ggplot2::theme_minimal(base_size = base_size, base_family = "serif") +
    ggplot2::theme(
      plot.title        = ggplot2::element_text(face = "bold", size = base_size + 3,
                                                colour = "#1a1a2e"),
      plot.subtitle     = ggplot2::element_text(colour = "#585870",
                                                size   = base_size - 1),
      plot.caption      = ggplot2::element_text(colour = "#585870",
                                                size   = base_size - 3,
                                                hjust  = 1,
                                                face   = "italic"),
      panel.grid.minor  = ggplot2::element_blank(),
      panel.grid.major  = ggplot2::element_line(colour = "#e5e2d5", linewidth = .3),
      axis.title        = ggplot2::element_text(colour = "#1a1a2e"),
      axis.text         = ggplot2::element_text(colour = "#1a1a2e"),
      legend.title      = ggplot2::element_text(face = "bold", size = base_size - 1),
      legend.text       = ggplot2::element_text(size = base_size - 1),
      plot.background   = ggplot2::element_rect(fill = "#faf9f5", colour = NA),
      panel.background  = ggplot2::element_rect(fill = "#faf9f5", colour = NA),
      legend.background = ggplot2::element_rect(fill = "#faf9f5", colour = NA)
    )
}

#' Resumen descriptivo del alcance estimado de un subconjunto del corpus
#'
#' @param datos `data.frame` con al menos las columnas `alcance_estimado`
#'   y `plataforma`.
#' @return `tibble` con mediana, media, mínimo, máximo y *n* por plataforma.
#' @export
resumen_alcance <- function(datos) {
  datos |>
    dplyr::group_by(plataforma) |>
    dplyr::summarise(
      n        = dplyr::n(),
      mediana  = stats::median(alcance_estimado, na.rm = TRUE),
      media    = mean(alcance_estimado,          na.rm = TRUE),
      minimo   = min(alcance_estimado,           na.rm = TRUE),
      maximo   = max(alcance_estimado,           na.rm = TRUE),
      .groups  = "drop"
    ) |>
    dplyr::arrange(dplyr::desc(mediana))
}

#' Distribución cruzada eje empírico × plataforma
#'
#' @param datos `data.frame` del corpus.
#' @return `tibble` con frecuencias absolutas.
#' @export
distribucion_eje_plataforma <- function(datos) {
  datos |>
    dplyr::count(eje_empirico, plataforma, name = "n") |>
    tidyr::pivot_wider(names_from = plataforma, values_from = n, values_fill = 0L)
}

#' Paleta de colores del proyecto
#'
#' @return Vector nombrado de códigos hexadecimales.
#' @export
paleta_memepolis <- function() {
  c(
    navy    = "#1a1a2e",
    accent  = "#1d4e89",
    rust    = "#b5270f",
    sage    = "#1a7a4a",
    ivory   = "#faf9f5",
    muted   = "#585870",
    border  = "#cdc9b8"
  )
}
