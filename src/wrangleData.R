# Minimal Wrangling of the data
gmpts <- bind_rows(gm182, gm182UP)
colnames(gmpts) <- c('trackNum', 'time', 'longitude', 'latitude', 'status')

# Plot the points out:
ggplot(gmpts, aes(longitude, latitude, group = status))+
  scale_fill_gradient(low = "grey70", high = "grey30", guide = "none") +
  xlab("Longitude") +
  ylab("Latitude") +
  theme_minimal()+
  facet_grid(~ status, labeller = label_value) +
  stat_density_2d(aes(fill = ..level..), geom = "polygon", color = "black", size = 0.2, alpha = 0.5) +
  geom_point(color = "navy", size = .5, alpha = .4)

