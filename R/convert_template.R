# Conversion functions

# Checks if the location contains a periscope application.
.is_periscope_app <- function(location = ".") {
    result <- TRUE
    if (!all(file.exists(file.path(location, c("server.R", "ui.R", "global.R", "program"))))) {
        result <- FALSE
    }
    result
}

#' Remove the reset button from an existing application.
#'
#' @param location path of the existing application.
#'
#' @export
remove_reset_button <- function(location) {
    
    tryCatch({
        if (is.null(location) || location == "") {
            warning("Remove reset button conversion could not proceed, location cannot be empty!")
        }
        else if (!dir.exists(location)) {
            warning("Remove reset button conversion could not proceed, location=<", location, "> does not exist!")
        }
        else if (!.is_periscope_app(location)) {
            warning("Remove reset button conversion could not proceed, location=<", location, "> does not contain a valid periscope application!")
        }
        else {
            usersep <- .Platform$file.sep
            
            # overwrite ui.R
            writeLines(gsub("fw_create_sidebar\\(", "fw_create_sidebar\\(resetbutton = FALSE", 
                            readLines(con = paste(location, "ui.R", sep = usersep))), 
                       con = paste(location, "ui.R", sep = usersep))
            
            # if (sampleapp && !resetbutton) {
            #     file.rename(paste(targetdir, "ui_sidebar_no_reset.R", sep = usersep), paste(targetdir, "ui_sidebar.R", sep = usersep))
            # }
            
            message("Remove reset button conversion was successful.")
            message("Files updated: ui.R")
        }
    },
    warning = function(w) {
        warning(w$message, call. = FALSE)
    })
    
    invisible(NULL)
}
