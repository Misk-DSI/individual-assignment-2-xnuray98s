library(tidyverse); library(GGally)
library(readxl); library(janitor); library(dplyr); library(here)

wine_raw <- read_csv(here("data/winequality-red.csv"))


glimpse(wine_raw)

# add underscore to names and deal with pH
names(wine_raw)[9] <- "ph" 
wine <- wine_raw %>%
  clean_names() 

# we can see that there is 460 rows that are duplicate,
# some with more than 2 duplicates.
wine %>% get_dupes() 
wine %>% get_dupes() %>% filter(dupe_count > 2)

# remove duplicates
wine <- distinct(wine)

# summary of our dataset
summary(wine)

# plot quality proportions
wine %>% 
  count(quality) %>% 
  mutate(prop = n / nrow(wine)) -> quality_prop

ggplot(quality_prop, aes(quality, prop)) +
  geom_bar(stat="identity", fill="steelblue") +
  coord_flip() 



# Correlation matrix
ggcorr(wine, label=TRUE, size = 3, high = "#3B9AB2", low = "#F21A00")
# Negatively associated:
# fixed acidity <-> ph
# citric acid <-> ph
# citric acid <-> volatile acidity
# alcohol <-> density
# Positively associated:
# fixed acidity <-> citric acid
# fixed acidity <-> density
# free sulfur dioxide <-> total sulfur dioxide
# quality <-> alchohol



# quality and alcohol
# we do see an upward trend
ggplot(wine, aes(quality, alcohol)) +
  geom_jitter(width = 0.25, alpha = 0.5, colour = "#3B9AB2") +
  geom_smooth(method=lm, se=FALSE, colour = "#F21A00")


# quality and volatile_acidity
# we do see a downward trend
ggplot(wine, aes(quality, volatile_acidity)) +
  geom_jitter(width = 0.25, alpha = 0.5, colour = "#3B9AB2") +
  geom_smooth(method=lm, se=FALSE, colour = "#F21A00")


# quality and density
# we do see a downward trend
ggplot(wine, aes(quality, density)) +
  geom_jitter(width = 0.25, alpha = 0.5, colour = "#3B9AB2") +
  geom_smooth(method=lm, se=FALSE, colour = "#F21A00")


# alcohol and density
# this makes since since alcohol has less density than water 
#it's expected to be downward
ggplot(wine, aes(alcohol, density)) +
  geom_jitter(width = 0.25, alpha = 0.5, colour = "#3B9AB2") +
  geom_smooth(method=lm, se=FALSE, colour = "#F21A00")


# quality and sulphates
# we do see an upward trend
ggplot(wine, aes(quality, sulphates)) +
  geom_jitter(width = 0.25, alpha = 0.5, colour = "#3B9AB2") +
  geom_smooth(method=lm, se=FALSE, colour = "#F21A00")


# quality and ph
# we do see a downward trend
ggplot(wine, aes(quality, ph)) +
  geom_jitter(width = 0.25, alpha = 0.5, colour = "#3B9AB2") +
  geom_smooth(method=lm, se=FALSE, colour = "#F21A00")


# quality and total_sulfur_dioxide
# we do see a downward trend
ggplot(wine, aes(quality, total_sulfur_dioxide)) +
  geom_jitter(width = 0.25, alpha = 0.5, colour = "#3B9AB2") +
  geom_smooth(method=lm, se=FALSE, colour = "#F21A00")


# quality and chlorides
# we do see a downward trend
ggplot(wine, aes(quality, chlorides)) +
  geom_jitter(width = 0.25, alpha = 0.5, colour = "#3B9AB2") +
  geom_smooth(method=lm, se=FALSE, colour = "#F21A00")


# quality and residual_sugar
# we do see a downward trend
ggplot(wine, aes(quality, residual_sugar)) +
  geom_jitter(width = 0.25, alpha = 0.5, colour = "#3B9AB2") +
  geom_smooth(method=lm, se=FALSE, colour = "#F21A00")


# quality and free_sulfur_dioxide
# we can see that it doesn't have much effect
ggplot(wine, aes(quality, free_sulfur_dioxide)) +
  geom_jitter(width = 0.25, alpha = 0.5, colour = "#3B9AB2") +
  geom_smooth(method=lm, se=FALSE, colour = "#F21A00")


# quality and citric_acid
# we do see an upward trend
ggplot(wine, aes(quality, citric_acid)) +
  geom_jitter(width = 0.25, alpha = 0.5, colour = "#3B9AB2") +
  geom_smooth(method=lm, se=FALSE, colour = "#F21A00")


# quality and fixed_acidity
# we do see an upward trend
ggplot(wine, aes(quality, fixed_acidity)) +
  geom_jitter(width = 0.25, alpha = 0.5, colour = "#3B9AB2") +
  geom_smooth(method=lm, se=FALSE, colour = "#F21A00")
