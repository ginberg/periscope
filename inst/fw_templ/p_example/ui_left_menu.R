# ----------------------------------------
# --     PROGRAM ui_left_menu.R         --
# ----------------------------------------
# USE: Create UI elements for the
#      left side of the header bar and
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
# --    TOP MENU ELEMENT CREATION       --
# ----------------------------------------

# -- Create Elements

inputs <- dropdownBlock(
          id = "mydropdown",
          title = "Options",
          prettyToggle(
            inputId = "na",
            label_on = "NAs keeped",
            label_off = "NAs removed",
            icon_on = icon("check"),
            icon_off = icon("remove")
          ))

reports <- dropdownButton(
          label = "Reports",
          icon = icon("sliders"),
          status = "primary",
          circle = FALSE,
          downloadLink("reportId1", "Report 1"),
          downloadLink("reportId2", "Report 2")
        )

# -- Register Basic Elements in the ORDER SHOWN in the UI
add_ui_menu_left(list(inputs, reports))
