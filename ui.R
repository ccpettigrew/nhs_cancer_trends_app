ui <- fluidPage(theme = shinytheme("cerulean"),
                dashboardPage(
                  dashboardHeader(title="NHS Borders Cancer Trends", titleWidth = 400),
                  dashboardSidebar(
                    sidebarMenu(
                      menuItem("Trends", tabName = "Trends", icon = icon("dashboard")),
                      menuItem("Journey", tabName = "Journey", icon = icon("bar-chart-o"))
                    )
                  ),
                  dashboardBody(
                    tabItems(
                      tabItem("Trends",
                              tabsetPanel(
                                tabPanel("Graph", plotOutput("trend_plot")),
                                tabPanel("Table", DT::dataTableOutput("all_cancer_table"))
                              )
                      ),
                      tabItem("Journey",
                              tabsetPanel(
                                tabPanel("Graph", plotOutput("cancer_type_plot")),
                                tabPanel("Table", DT::dataTableOutput("all_cancer_table"))
                              )
                      ),


                    )
                  )
                )
)

