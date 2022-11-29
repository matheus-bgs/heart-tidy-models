# Função para matriz de confusão ----
confusion <- function(observado, modelo, threshold, teste = NULL){
  observado <- as.factor(observado)
  predict <- predict(modelo, newdata = teste, type = "response")
  predict <- as.factor(ifelse(predict > threshold, 1, 0))
  confusion <- caret::confusionMatrix(data = predict, reference = observado)
  return(confusion)
}