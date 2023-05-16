library(ggplot2)

pegholes <- expand.grid(x = 0:50, y = 0:30)

col_wood <- "#BA8C63"
col_holes <- "#382A1E"

pegboard <- ggplot(pegholes) +
  geom_point(aes(x, y), colour = col_holes) +
  coord_cartesian(clip = "off", xlim = c(2, 48), ylim = c(1, 29)) +
  theme_void() +
  theme(panel.background = element_rect(fill = col_wood))

pegboard_invert <- ggplot(pegholes) +
  geom_point(aes(x, y), colour = col_wood) +
  coord_cartesian(clip = "off", xlim = c(2, 48), ylim = c(1, 29)) +
  theme_void() +
  theme(panel.background = element_rect(fill = col_holes))

ggsave(
  "assets/images/pegboard.png",
  pegboard,
  width = 1050,
  height = 700,
  dpi = 100,
  units = "px"
)

ggsave(
  "assets/images/pegboard-invert.png",
  pegboard_invert,
  width = 1050,
  height = 700,
  dpi = 100,
  units = "px"
)