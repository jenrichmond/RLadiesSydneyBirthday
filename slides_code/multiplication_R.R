library(tidyverse)

##### fooling around #####

#vector from 1 to 9, it turns out this creates a numeric vector
1:9

#for integer vectors, we need to put L after the numbers
1L:9L

#repeat 9 times
rep(1L:9L, times=9)

# repeat each digit 9 times
rep(1L:9L, each=9)

##### generate multiplication table #####

# create multiplication table as a tidy tibble
multiplication_table <- tibble(multiplicand = rep(1L:9L, each = 9),
                               multiplier = rep(1L:9L, times = 9),
                               result = multiplicand * multiplier,
                               left = result %/% 10L,
                               right = result %% 10L)

# plot the multiplication table!
ggplot(data = multiplication_table) +
  geom_label(mapping = aes(x = multiplicand, y = multiplier, label = result)) +
  scale_x_continuous(breaks = 1:9) +
  scale_y_continuous(breaks = 1:9)

##### right digit #####

# naive plot of multiplicand vs right digit of result
ggplot(data = multiplication_table) +
  geom_point(mapping = aes(x = multiplicand, y = right))

# make it pretty in pink and fix up the scale
ggplot(data = multiplication_table) +
  geom_point(mapping = aes(x = multiplicand,
                           y = right,
                           size = 10,
                           color = "pink"),
             show.legend = FALSE) +
  scale_x_continuous(breaks = 1:9) +
  scale_y_continuous(breaks = 1:9)

# but what if we colour by multiplier?
ggplot(data = multiplication_table) +
  geom_point(mapping = aes(x = multiplicand,
                           y = right,
                           size = 10,
                           color = as.factor(multiplier))) +
  scale_x_continuous(breaks = 1:9) +
  scale_y_continuous(breaks = 1:9)

# join the dots
ggplot(data = multiplication_table) +
  geom_point(mapping = aes(x = multiplicand, y = right, size = 10, color = as.factor(multiplier))) +
  geom_line(mapping = aes(x = multiplicand, y = right, color = as.factor(multiplier))) +
  scale_x_continuous(breaks = 1:9) +
  scale_y_continuous(breaks = 1:9)

# let's facet the plots by multiplier
ggplot(data = multiplication_table) +
  geom_point(mapping = aes(x = multiplicand, y = right, size = 5, color = as.factor(multiplier))) +
  geom_line(mapping = aes(x = multiplicand, y = right, color = as.factor(multiplier))) +
  facet_wrap(~ multiplier) +
  scale_x_continuous(breaks = 1:9) +
  scale_y_continuous(breaks = 1:9)

##### left digit #####

# similar plot for left digit
ggplot(data = multiplication_table) +
  geom_point(mapping = aes(x = multiplicand,
                           y = left,
                           size = 10,
                           color = "pink"),
             show.legend = FALSE) +
  scale_x_continuous(breaks = 1:9) +
  scale_y_continuous(breaks = 1:9)

# colour and join the dots
ggplot(data = multiplication_table) +
  geom_point(mapping = aes(x = multiplicand,
                           y = left,
                           size = 10,
                           color = as.factor(multiplier))) +
  geom_line(mapping = aes(x = multiplicand, y = left, color = as.factor(multiplier))) +
  scale_x_continuous(breaks = 1:9) +
  scale_y_continuous(breaks = 1:9)

# let's facet the plots by multiplier
ggplot(data = multiplication_table) +
  geom_point(mapping = aes(x = multiplicand, y = left, size = 10, color = as.factor(multiplier))) +
  geom_line(mapping = aes(x = multiplicand, y = left, color = as.factor(multiplier))) +
  facet_wrap(~ multiplier) +
  scale_x_continuous(breaks = 1:9) +
  scale_y_continuous(breaks = 1:9)

##### both left and right digits #####

# combine left and right digits into a mega facet plot
# let's facet the plots by multiplier
ggplot(data = multiplication_table) +
  geom_point(mapping = aes(x = multiplicand, y = left, size = 10, color = "pink")) +
  geom_line(mapping = aes(x = multiplicand, y = left, color = "pink")) +
  geom_point(mapping = aes(x = multiplicand, y = right, size = 10, color = "purple")) +
  geom_line(mapping = aes(x = multiplicand, y = right, color = "purple")) +
  facet_wrap(~ multiplier) +
  scale_x_continuous(breaks = 1:9) +
  scale_y_continuous(breaks = 1:9)