# ----------------------------------------
# --       PROGRAM ui_sidebar.R         --
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
# --     SIDEBAR ELEMENT CREATION       --
# ----------------------------------------

# -- Create Elements

tab1 <- rightSidebarTabContent(
    id = 1,
    icon = "desktop",
    title = "Tab 1",
    active = TRUE)

tab2 <- rightSidebarTabContent(
    id = 2,
    title = "Tab 2")

tab3 <- rightSidebarTabContent(
    id = 3,
    title = "Tab 3",
    icon = "paint-brush")

# -- Register Basic Elements in the ORDER SHOWN in the UI
add_ui_sidebar_right(list(tab1, tab2, tab3))
