# Funções para a geração de plots ----
plot_hist <- function(dados, x, fill, binwidth,
                      title = NULL, xlab = NULL, ylab = NULL){
  ggplot(dados, aes(x = {{x}}, fill = {{fill}})) +
    geom_histogram(color = "black", binwidth = binwidth,
                   position = "stack") +
    scale_fill_manual(values = c("#003366", "#ffa500")) +
    labs(title = title,
         x = xlab, y = ylab,
         fill = "Doença Cardiovascular")
}

plot_box <- function(dados, y, title = NULL, xlab = NULL, ylab = NULL){
  ggplot(dados, aes(x = HeartDisease, y = {{y}})) +
    geom_boxplot(fill = c("#003366", "#ffa500")) +
    labs(title = title, x = xlab, y = ylab)
}

plot_bar <- function(dados, x, fill, title = NULL, xlab = NULL){
  ggplot(dados, aes(x = {{x}}, fill = {{fill}})) +
    geom_bar(color = "black", position = "dodge") +
    scale_fill_manual(values = c("#003366", "#ffa500")) +
    labs(title = title, x = xlab, y = NULL,
         fill = "Doença Cardiovascular") +
    theme(legend.position = "bottom") +
    coord_flip()
}

# Definindo tema global
theme_custom <- function(){
  theme_minimal() +
    theme(plot.title = element_text(hjust = 0.5))
}

theme_set(theme_custom())