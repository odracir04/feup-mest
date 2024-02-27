data <- read.csv("DadosFolha1.csv", header = TRUE)

ex_3 <- function() {
  vector <- na.omit(data$Ex3)
  stripchart(vector, method = "stack")
  print(paste("The average of the set is: ", mean(vector)))
  print(paste("The median of the set is: ", median(vector)))
  print(paste("The std. dev. of the set is: ", sd(vector)))
}

ex_4 <- function() {
  vector <- na.omit(data$Ex4)
  # optional - nclass.Sturges(vector)
  hist(vector, right = FALSE, main = "Perímetro cefálico", col = "blue"
       , xlab = "Perímetro (cm)", ylab = "Frequência")
  print(paste("The average of the set is: ", mean(vector)))
  print(paste("The std. dev. of the set is: ", sd(vector)))
}

ex_5 <- function() {
  vector <- na.omit(data$Ex5)
  # optional - nclass.Sturges(vector)
  hist(vector, right = FALSE, main = "Largura do molar", col = "blue"
       , xlab = "Largura", ylab = "Frequência")
}

ex_6 <- function() {
  vector <- na.omit(data$Ex6)
  hist(vector, right = FALSE, main = "Atividade de enzima", col = "blue"
       , xlab = "Atividade", ylab = "Frequência", breaks = seq(4, 19, by = 3))
  print("The value of the quartiles is: ")
  print(quantile(vector, , type = 2))
  print(paste("The value of AIQ is: ", quantile(vector, type = 2, 0.75)
              - quantile(vector, type = 2, 0.25)))
}

ex_7 <- function() {
  vector <- na.omit(data$Ex7)
  hist(vector, right = FALSE, main = "Tripanossomas", col = "blue"
       , xlab = "Comprimento (em micrómetros)", ylab = "Frequência"
       , breaks = seq(15, 38, by = 1))
  # hist(vector, right=F, main="Comprimento de tripanossomas", col="blue"
  #      , xlab="Comprimento (em micrómetros)", ylab="Frequência"
  #      , breaks=seq(15, 39, by=4))
}

ex_9 <- function() {
  vector <- na.omit(data$Ex9)
  hist(vector, right = FALSE, main = "Idade de diabéticos", col = "blue"
       , xlab = "Idade (em anos)", ylab = "Frequência")
  print(paste("The average of the set is: ", mean(vector)))
  print(paste("The std. dev. of the set is: ", sd(vector)))
}

ex_11 <- function() {
  vector <- na.omit(data$Ex11)
  barplot(table(vector), main = "Tamanho das ninhadas", xlab = "nº de leitões"
          , ylab = "Frequência", col = "blue")
  print(paste("The average of the set is: ", mean(vector)))
  print(paste("The median of the set is: ", median(vector)))
  print(paste("The std. dev. of the set is: ", sd(vector)))
}

ex_12 <- function() {
  vector <- na.omit(data$Ex12)
  hist(vector, right = FALSE, main = "Altura de plantas"
       , xlab = "altura (em cm)", ylab = "Frequência", col = "blue")
  print(paste("The average of the set is: ", mean(vector)))
  print(paste("The std. dev. of the set is: ", sd(vector)))
  print(paste("The variance of the set is: ", var(vector)))
}