context("periscope - misc functions")

log_directory <- tempdir()

test_that("set_app_parameters", {
    result <- set_app_parameters(title = "application title", titleinfo = NULL, loglevel = "DEBUG", showlog = TRUE, app_version = "2.1.0")
    expect_null(result, "set_app_parameters")
})

test_that("get_url_parameters", {
    result <- get_url_parameters(NULL)
    expect_equal(result, list(), "get_url_parameters")
})

test_that("fw_get_loglevel", {
    result <- periscope:::fw_get_loglevel()
    expect_equal(result, "DEBUG")
})

test_that("fw_get_title", {
    result <- periscope:::fw_get_title()
    expect_equal(result, "application title")
})

test_that("fw_get_version", {
    result <- periscope:::fw_get_version()
    expect_equal(result, "2.1.0")
})

test_that("fw_get_user_log", {
    result <- periscope:::fw_get_user_log()
    expect_equal(class(result)[1], "logger")
})

test_that("setup_logging", {
    result <- shiny::isolate(.setup_logging(NULL))
    expect_equal(class(result), c("reactiveExpr", "reactive"))
})

test_that("setup_logging existing log", {
    logger <- periscope:::fw_get_user_log()

    result <- shiny::isolate(.setup_logging(NULL))
    expect_equal(class(result), c("reactiveExpr", "reactive"))
})

test_that("fw_reset_app_options", {
    result <- periscope:::fw_reset_app_options()
    expect_null(result, "fw_reset_app_options")
})

# clean up
unlink("log", TRUE)
