# ----------------------------------------
# --     PROGRAM ui_left_menu.R     --
# ----------------------------------------
# USE: Create UI elements for the
#      left_menu in the header bar and
#      ATTACH them to the UI by calling
#      add_ui_menu_left()
#
# NOTEs:
#   - All variables/functions here are
#     not available to the UI or Server
#     scopes - this is isolated
# ----------------------------------------

# -- IMPORTS --


# ----------------------------------------
# --     LEFT MENU ELEMENT CREATION     --
# ----------------------------------------

# -- Create Elements

dropdownButton <- shinyWidgets::dropdownButton(
            label = "Reports",
            icon = icon("sliders"),
            status = "primary",
            circle = FALSE,
            downloadLink("reportId1", "Report 1"),
            downloadLink("reportId2", "Report 2")
        )
            
dropdownMenu <- shinydashboard::dropdownMenu(
    type = "tasks", 
    badgeStatus = "danger",
    shinydashboard::taskItem(value = 20, color = "aqua", "Refactor code"),
    shinydashboard::taskItem(value = 40, color = "green", "Design new layout"),
    shinydashboard::taskItem(value = 60, color = "yellow", "Another task"),
    shinydashboard::taskItem(value = 80, color = "red", "Write documentation")
)

# -- Register Basic Elements in the ORDER SHOWN in the UI
add_ui_menu_left(list(dropdownButton, dropdownMenu))
