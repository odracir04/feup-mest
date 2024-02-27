data <- read.csv("../aula_1/DadosFolha1.csv", header = TRUE)

ex_6 <- function() {
  vector <- na.omit(data$Ex6)
  boxplot(vector, main = "ESQUIZOFRENIAAAAAA", xlab = "Enzima",
          ylab = "Frequência", horizontal = TRUE, col = "green")
}

ex_11 <- function() {
  vector <- na.omit(data$Ex11)
  boxplot(vector, main = "Tamanho da ninhada", xlab = "Tamanho da ninhada"
          , ylab = "Frequència", horizontal = TRUE, col = "red")
}

ex_13 <- function() {
  before_vector <- na.omit(data$Ex13Antes)
  after_vector <- na.omit(data$Ex13Depois)
  # boxplot(before_vector, after_vector, names = c("Antes", "Depois"),
  #        horizontal = TRUE, main = "Eficácia das drogas", xlab = "Eficácia")
  plot(before_vector, after_vector, main = "Eficácia das drogas", pch = 11,
       col = "darkgreen")
  print(paste("The correlation coefficient is: "
              , cor(after_vector, before_vector)))
}

ex_17 <- function() {
  vector_a <- na.omit(data$Ex17A)
  vector_b <- na.omit(data$Ex17B)
  boxplot(vector_a, vector_b, names = c("Antes", "Depois"), horizontal = TRUE,
          main = "Aumento de Pesos", xlab = "Aumento", col = "darkblue")
}
