# gapminder_analysis.R
# ---------------------------------------------------------------
# Simple reproducible analysis for the Day‑4 "Git, R, and Unix" lesson.
# ---------------------------------------------------------------
# This script:
#   1. Loads the Gapminder CSV (downloaded earlier).
#   2. Filters for a country of interest (default = "United States").
#   3. Creates a line plot of life expectancy over time.
#   4. Writes the plot to a PNG file in the "results" folder.
# ---------------------------------------------------------------

# Load required packages (install if missing)
required_pkgs <- c("tidyverse", "ggplot2")
installed <- rownames(installed.packages())
for (pkg in required_pkgs) {
  if (!pkg %in% installed) {
    install.packages(pkg, repos = "https://cloud.r-project.org")
  }
}

library(tidyverse)
library(ggplot2)

# -----------------------------------------------------------------
# Paths – adjust if you move the repository.
# -----------------------------------------------------------------
raw_data_path <- file.path("..", "rawdata", "gapminder.csv")
results_dir   <- file.path("..", "results")
if (!dir.exists(results_dir)) dir.create(results_dir, recursive = TRUE)

# -----------------------------------------------------------------
# Read the data
# -----------------------------------------------------------------
gapminder <- read_csv(raw_data_path)

# -----------------------------------------------------------------
# Simple exploratory summary – print to console
# -----------------------------------------------------------------
cat("\n=== Gapminder data summary ===\n")
print(summary(gapminder))

# -----------------------------------------------------------------
# Plot life expectancy over time for a chosen country
# -----------------------------------------------------------------
country_of_interest <- "United States"

country_data <- gapminder %>%
  filter(country == country_of_interest) %>%
  arrange(year)

p <- ggplot(country_data, aes(x = year, y = lifeExp)) +
  geom_line(color = "steelblue", size = 1.2) +
  geom_point(color = "darkred", size = 2) +
  labs(title = paste0("Life Expectancy in ", country_of_interest),
       x = "Year",
       y = "Life Expectancy (years)") +
  theme_minimal()

# Save the plot
output_file <- file.path(results_dir, paste0("lifeExp_", gsub(" ", "_", country_of_interest), ".png"))
ggsave(filename = output_file, plot = p, width = 8, height = 5, dpi = 150)

cat("\nPlot saved to:", output_file, "\n")

# -----------------------------------------------------------------
# End of script
# -----------------------------------------------------------------
