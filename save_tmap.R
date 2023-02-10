mySaveTmap <- function(map1,filename = default_name(plot),
                       height = 12,
                       width = 15,
                       units = "cm",
                       dpi = 300,
                       ...) {
  tmap_save(
    tm = map1,
    insets_tm = map2,
    insets_vp = viewport(
      x = 0.5,
      y = 0.15,
      width = 0.4,
      height = 0.25
    ),
    width = width,
    height = height,
    units = "cm",
    dpi = dpi,
    filename = paste0(dir,filename)
  )
  
}
