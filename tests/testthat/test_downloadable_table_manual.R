# This is a manual test to check the if a downloadableTable can be created with an initial selection of rows.

library(shiny)
library(periscope)

runModule <- function(id, ui, server, ui_params = list(), server_params = list()){
    
    actualUI <- do.call(ui, c(id = id, ui_params))
    
    actualServer <- function(input, output, session) {
        do.call(callModule,
                c(module = server, id = id, server_params)
        )
    }
    shinyApp(actualUI, actualServer)
}

get_data      <- function() { head(mtcars) }
get_selection <- function() { c(1,6) }

runModule("my_table", ui = downloadableTableUI, server = downloadableTable, 
          ui_params = list(downloadtypes = NULL), 
          server_params = list(filenameroot = "output", 
                               tabledata = get_data,
                               selection = get_selection))
