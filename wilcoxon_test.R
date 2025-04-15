library(tidyverse)

data <- read_csv("knowledge_retention_median.csv")




group1 <- c(0.25,
            0.75,
            0.25,
            0.5,
            0.5,
            0.5,
            0.25,
            0.75)

group2 <- c(0.375,
            0.75,
            0.25,
            0.25,
            0.25,
            0.25,
            0.25,
            0.75,
            0.25)


wilcox.test(group1, group2)


group1_PR_pre <- c(0.25,
                   0.75,
                   0.25,
                   0.5,
                   0.5,
                   0.5,
                   0.25,
                   0.75)

group1_PR_hw <- c(0.75,
                  1,
                  1,
                  0.75,
                  1,
                  0.75,
                  1,
                  0.75)

group1_PR_exam <- c(0,
                    0.6,
                    0,
                    0.8,
                    0.5,
                    0,
                    0.8,
                    0)

wilcox.test(group1_PR_pre, group1_PR_hw)
wilcox.test(group1_PR_hw, group1_PR_exam)

# git push test
