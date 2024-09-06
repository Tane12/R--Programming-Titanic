library(tidyverse)
df <- (Titanic_dataset)
df
df$Survived <- as.factor(df$Survived)
df$Pclass <- as.factor(df$Pclass)
df$Sex <- as.factor(df$Sex)
df$Embarked <- as.factor(df$Embarked)
df

hist <- ggplot(data = df, aes(x = Age))
hist + geom_histogram(binwidth = 5, color = "darkslategray",
                      fill = "darkslategray4", alpha = 0.5) +
  ggtitle("Age Distribution on the Titanic") + 
  labs(y = "Number of Passengers", x = "Age") +
  theme_minimal()

bar <- ggplot(df, aes(x = Sex , fill = Survived))
bar + geom_bar() +
  labs(y = "Passenger Count", title = "Survival rate by Gender") +
  facet_wrap(Sex ~Pclass)

hist <- ggplot(data = df, aes(x = Age, fill = Survived))
hist + geom_histogram(binwidth = 5, color = "white") +
 labs(x = "Age", y = "Number of Passengers", title = "Age Distribution on the Titanic")  +
  theme_light()

