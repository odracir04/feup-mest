ex_3 <- function() {
    data <- read.csv("DadosFolha1.csv", header = TRUE, nrows=30)
    vector <- data[,1]
    print(paste("The average of the set is: ", mean(vector)))
    print(paste("The median of the set is: ", median(vector)))
    print(paste("The std. dev. of the set is: ", sd(vector)))
}

ex_4 <- function() {
    data<- read.csv("DadosFolha1.csv", header= TRUE, nrows=35)
    vector <- data[,2]
    # nclass.Sturges(vector)  # opcional
    hist(vector, right=F, main="Perímetro cefálico", col="blue", xlab="Perímetro (cm)", ylab="Frequência")
    print(paste("The average of the set is: ", mean(vector)))
    print(paste("The std. dev. of the set is: ", sd(vector)))
}

ex_5 <- function() {
    data<- read.csv("DadosFolha1.csv", header= TRUE, nrows=36)
    vector <- data[,3]
    # nclass.Sturges(vector)   # opcional
    hist(vector, right=F, main="Largura do molar", col="blue", xlab="Largura", ylab="Frequência")
}

ex_6 <- function() {
    data<- read.csv("DadosFolha1.csv", header= TRUE, nrows=18)
    vector <- data[,4]
    hist(vector, right=F, main="Atividade de enzima", col="blue", xlab="Atividade", ylab="Frequência", breaks=seq(4, 19, by=3))
    print("The value of the quartiles is: ")
    print(quantile(vector, , type = 2))
    print(paste("The value of AIQ is: ", quantile(vector, type=2, 0.75) - quantile(vector, type=2, 0.25)))
}

ex_7 <- function() {
    data<- read.csv("DadosFolha1.csv", header= TRUE, nrows=500)
    vector <- data[,5]
    hist(vector, right=F, main="Comprimento de tripanossomas", col="blue", xlab="Comprimento (em micrómetros)", ylab="Frequência", breaks=seq(15, 38, by=1))
    # hist(vector, right=F, main="Comprimento de tripanossomas", col="blue", xlab="Comprimento (em micrómetros)", ylab="Frequência", breaks=seq(15, 39, by=4))
}

ex_9 <- function() {
    data<- read.csv("DadosFolha1.csv", header= TRUE, nrows=20)
    vector <- data[,6]
    hist(vector, right=F, main="Idade de diabéticos", col="blue", xlab="Idade (em anos)", ylab="Frequência")
    print(paste("The average of the set is: ", mean(vector)))
    print(paste("The std. dev. of the set is: ", sd(vector)))
}

ex_11 <- function() {
    data<- read.csv("DadosFolha1.csv", header= TRUE, nrows=36)
    vector <- data[,7]
    barplot(table(vector), main="Tamanho das ninhadas", xlab="nº de leitões", ylab="Frequência", col="blue")
    print(paste("The average of the set is: ", mean(vector)))
    print(paste("The median of the set is: ", median(vector)))
    print(paste("The std. dev. of the set is: ", sd(vector)))
}

ex_12 <- function() {
    data<- read.csv("DadosFolha1.csv", header= TRUE, nrows=15)
    vector <- data[,8]
    hist(vector, right=F, main="Altura de plantas", xlab="altura (em cm)", ylab="Frequência", col="blue")
    print(paste("The average of the set is: ", mean(vector)))
    print(paste("The std. dev. of the set is: ", sd(vector)))
    print(paste("The variance of the set is: ", var(vector)))
}
