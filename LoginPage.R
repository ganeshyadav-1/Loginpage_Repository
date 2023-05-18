
library(shiny)

ui <- fluidPage(
  titlePanel("Login Page"),
  textInput(inputId = "username", label = "Username"),
  passwordInput(inputId = "password", label = "Password"),
  actionButton(inputId = "submit", label = "Login")
)

server <- function(input, output, session) {

  valid_username <- "ganesh"
  valid_password <- "ganesh123"

  observeEvent(input$submit, {
    if (input$username == valid_username && input$password == valid_password) {
      showModal(
        modalDialog(
          title = "Welcome",
          "You have successfully logged in.",
          easyClose = TRUE,
          footer = NULL
        )
      )
    } else {
      showModal(
        modalDialog(
          title = "Error",
          "Username or Password Incorrect",
          easyClose = TRUE,
          footer = NULL
        )
      )
    }
  })

}

shinyApp(ui, server)
