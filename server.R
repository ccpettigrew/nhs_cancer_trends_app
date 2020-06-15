

server <- function(input, output, session) {
  
  output$trend_plot <- renderPlot({
    
    ggplot(borders_data) +
      aes(x = Year, y = IncidencesAllAges, color = Sex) +
      geom_line()+
      scale_x_continuous("Years") +
      scale_y_continuous("Cancer Incidences") +
      geom_point()+
      bbc_style() +
      scale_colour_manual(values = c("#990000", "#FAAB18", "#1380A1")) +
      ggtitle(
        "NHS Borders Cancer Incidence",
        subtitle = "1994 - 2018"
      ) 
    
  })
  
  
  
  output$all_cancer_table <- DT::renderDataTable({sum_all_cancer})
  
}