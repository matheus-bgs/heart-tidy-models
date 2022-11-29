# Função para renderizar tabelas
"%>%" <- magrittr::"%>%"

knit_kable <- function(df, caption = "", font_size = 15, position = "center"){
  kableExtra::kbl(df, align = "c",
                  caption = paste0("<center><strong>", caption, "</strong></center>"),
                  escape = FALSE,
                  format = "html") %>% 
    kableExtra::kable_styling(bootstrap_options = "striped",
                              font_size = font_size,
                              position = position) %>% 
    kableExtra::kable_paper("hover")
}
