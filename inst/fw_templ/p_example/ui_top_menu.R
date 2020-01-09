# ----------------------------------------
# --      PROGRAM ui_top_menu.R         --
# ----------------------------------------
# USE: Create UI elements for the
#      application sidebar (right side on
#      the desktop; contains options) and
#      ATTACH them to the UI by calling
#      add_ui_sidebar_right()
#
# NOTEs:
#   - All variables/functions here are
#     not available to the UI or Server
#     scopes - this is isolated
# ----------------------------------------

# -- IMPORTS --



# ----------------------------------------
# --    TOP MENU ELEMENT CREATION       --
# ----------------------------------------

# -- Create Elements

dropdown1 <- dropdownButton(
          label = "Reports",
          icon = icon("sliders"),
          status = "primary",
          circle = FALSE,
          downloadLink("reportId1", "Report 1"),
          downloadLink("reportId2", "Report 2")
        )
            
dropdownMenu <- dropdownMenu(
    type = "tasks", 
    badgeStatus = "danger",
    taskItem(value = 20, color = "aqua", "Refactor code"),
    taskItem(value = 40, color = "green", "Design new layout"),
    taskItem(value = 60, color = "yellow", "Another task"),
    taskItem(value = 80, color = "red", "Write documentation")
)

# -- Register Basic Elements in the ORDER SHOWN in the UI
add_ui_menu_top(list(dropdown1, dropdownMenu))
