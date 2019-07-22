## Plotting time-series with ggplot
library(ggplot2)
library(tidyverse)
requireNamespace("xts")
requireNamespace("generics")
requireNamespace("lubridate")

n <- 100
t1 <- lubridate::ymd(20190101) 

tser <- xts::xts(sin(2 * pi * seq(0, 1, length.out = n)),
                 order.by = t1 + lubridate::minutes(0:(n - 1)))

# plotting that time series (using xts)
plot(tser)

# reformat time series as tibble
tser2 <- tser %>% generics::tidy()

# plotting that time series with ggplot
p <- tser2 %>%
  ggplot(aes(x = index, y = value)) +
  scale_x_datetime(date_labels = '%Y-%m-%d %H:%M:%S') +
  geom_line()
print(p)
