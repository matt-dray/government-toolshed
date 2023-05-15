library(ggplot2)

pegholes <- expand.grid(x = 1:50, y = 1:30)

pegboard <- ggplot(pegholes) +
  geom_point(aes(x, y), colour = "#382A1E") +
  theme_void() +
  theme(panel.background = element_rect(fill = "#BA8C63"))

ggsave(
  "img/pegboard.png",
  pegboard,
  width = 1050,
  height = 700,
  dpi = 100,
  units = "px"
)
