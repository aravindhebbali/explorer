observeEvent(input$submit_button, {
    # Move to results page
    updateNavbarPage(session, "mainpage", selected="tab_intro")

})

observeEvent(input$click_upload, {
    # Move to results page
    updateNavbarPage(session, "mainpage", selected="tab_data")
    updateNavlistPanel(session, "navlist", selected="tab_upload")

})

observeEvent(input$click_transform, {
    # Move to results page
    updateNavbarPage(session, "mainpage", selected="tab_data")
    updateNavlistPanel(session, "navlist", selected="tab_transform")

})

observeEvent(input$click_view, {
    # Move to results page
    updateNavbarPage(session, "mainpage", selected="tab_data")
    updateNavlistPanel(session, "navlist", selected="tab_view")

})

observeEvent(input$click_screen, {
    # Move to results page
    updateNavbarPage(session, "mainpage", selected="tab_data")
    updateNavlistPanel(session, "navlist", selected="tab_screen")

})

observeEvent(input$click_summary, {
    # Move to results page
    updateNavbarPage(session, "mainpage", selected="tab_eda")
    updateNavlistPanel(session, "navlist_eda", selected="tab_summary")

})

observeEvent(input$click_fqual, {
    # Move to results page
    updateNavbarPage(session, "mainpage", selected="tab_eda")
    updateNavlistPanel(session, "navlist_eda", selected="tab_fqual")

})

observeEvent(input$click_cross, {
    # Move to results page
    updateNavbarPage(session, "mainpage", selected="tab_eda")
    updateNavlistPanel(session, "navlist_eda", selected="tab_cross")

})

observeEvent(input$click_fquant, {
    # Move to results page
    updateNavbarPage(session, "mainpage", selected="tab_eda")
    updateNavlistPanel(session, "navlist_eda", selected="tab_fquant")

})

observeEvent(input$click_mult1, {
    # Move to results page
    updateNavbarPage(session, "mainpage", selected="tab_eda")
    updateNavlistPanel(session, "navlist_eda", selected="tab_mult1")

})

observeEvent(input$click_mult2, {
    # Move to results page
    updateNavbarPage(session, "mainpage", selected="tab_eda")
    updateNavlistPanel(session, "navlist_eda", selected="tab_mult2")

})

observeEvent(input$click_gsummary, {
    # Move to results page
    updateNavbarPage(session, "mainpage", selected="tab_eda")
    updateNavlistPanel(session, "navlist_eda", selected="tab_gsummary")

})


observeEvent(input$click_normal, {
    # Move to results page
    updateNavbarPage(session, "mainpage", selected="tab_dist")
    updateNavlistPanel(session, "navlist_dist", selected="tab_norm")

})


observeEvent(input$click_t, {
    # Move to results page
    updateNavbarPage(session, "mainpage", selected="tab_dist")
    updateNavlistPanel(session, "navlist_dist", selected="tab_t")

})


observeEvent(input$click_chisq, {
    # Move to results page
    updateNavbarPage(session, "mainpage", selected="tab_dist")
    updateNavlistPanel(session, "navlist_dist", selected="tab_chisq")

})


observeEvent(input$click_binom, {
    # Move to results page
    updateNavbarPage(session, "mainpage", selected="tab_dist")
    updateNavlistPanel(session, "navlist_dist", selected="tab_binom")

})


observeEvent(input$click_f, {
    # Move to results page
    updateNavbarPage(session, "mainpage", selected="tab_dist")
    updateNavlistPanel(session, "navlist_dist", selected="tab_f")

})

observeEvent(input$intro_home, {
    updateNavbarPage(session, "mainpage", selected="tab_nav")
})


observeEvent(input$intro_upload, {
    updateNavbarPage(session, "mainpage", selected="tab_data")
    updateNavlistPanel(session, "navlist", selected="tab_upload")
})

observeEvent(input$upload_transform, {
    # Move to results page
    updateNavbarPage(session, "mainpage", selected="tab_data")
    updateNavlistPanel(session, "navlist", selected="tab_transform")

})


observeEvent(input$upload_home, {
    # Move to results page
    updateNavbarPage(session, "mainpage", selected="tab_nav")

})


observeEvent(input$transform_upload, {
    # Move to results page
    updateNavlistPanel(session, "navlist", selected="tab_upload")

})

observeEvent(input$transform_home, {
    # Move to results page
    updateNavbarPage(session, "mainpage", selected="tab_nav")

})

observeEvent(input$transform_screen, {
    # Move to results page
    updateNavlistPanel(session, "navlist", selected="tab_screen")

})

observeEvent(input$screen_view, {
    # Move to results page
    updateNavlistPanel(session, "navlist", selected="tab_view")

})

observeEvent(input$screen_home, {
    # Move to results page
    updateNavbarPage(session, "mainpage", selected="tab_nav")

})



observeEvent(input$screen_transform, {
    # Move to results page
    updateNavlistPanel(session, "navlist", selected="tab_transform")
})


observeEvent(input$view_screen, {
    # Move to results page
    updateNavlistPanel(session, "navlist", selected="tab_screen")

})


observeEvent(input$view_home, {
    # Move to results page
    updateNavbarPage(session, "mainpage", selected="tab_nav")

})


observeEvent(input$view_summary, {
    # Move to results page
    updateNavbarPage(session, "mainpage", selected="tab_eda")
    updateNavlistPanel(session, "navlist_eda", selected="tab_summary")


})

observeEvent(input$summary_view, {
    # Move to results page
    updateNavbarPage(session, "mainpage", selected="tab_data")
    updateNavlistPanel(session, "navlist", selected="tab_view")

})


observeEvent(input$summary_home, {
    # Move to results page
    updateNavbarPage(session, "mainpage", selected="tab_nav")

})

observeEvent(input$summary_fqual, {
    # Move to results page
    updateNavlistPanel(session, "navlist_eda", selected="tab_fqual")

})

observeEvent(input$fqual_summary, {
    # Move to results page
    updateNavlistPanel(session, "navlist_eda", selected="tab_summary")

})

observeEvent(input$fqual_home, {
    # Move to results page
    updateNavbarPage(session, "mainpage", selected="tab_nav")

})

observeEvent(input$fqual_fquant, {
    # Move to results page
    updateNavlistPanel(session, "navlist_eda", selected="tab_fquant")

})

observeEvent(input$fquant_cross, {
    # Move to results page
    updateNavlistPanel(session, "navlist_eda", selected="tab_cross")

})

observeEvent(input$fquant_home, {
    # Move to results page
    updateNavbarPage(session, "mainpage", selected="tab_nav")

})

observeEvent(input$fquant_fqual, {
    # Move to results page
    updateNavlistPanel(session, "navlist_eda", selected="tab_fqual")

})

observeEvent(input$cross_mult1, {
    # Move to results page
    updateNavlistPanel(session, "navlist_eda", selected="tab_mult1")

})

observeEvent(input$cross_home, {
    # Move to results page
    updateNavbarPage(session, "mainpage", selected="tab_nav")

})

observeEvent(input$cross_fquant, {
    # Move to results page
    updateNavlistPanel(session, "navlist_eda", selected="tab_fquant")

})

observeEvent(input$mult1_cross, {
    # Move to results page
    updateNavlistPanel(session, "navlist_eda", selected="tab_cross")

})

observeEvent(input$mult1_home, {
    # Move to results page
    updateNavbarPage(session, "mainpage", selected="tab_nav")

})

observeEvent(input$mult1_mult2, {
    # Move to results page
    updateNavlistPanel(session, "navlist_eda", selected="tab_mult2")

})

observeEvent(input$mult2_mult1, {
    # Move to results page
    updateNavlistPanel(session, "navlist_eda", selected="tab_mult1")

})

observeEvent(input$mult2_home, {
    # Move to results page
    updateNavbarPage(session, "mainpage", selected="tab_nav")

})

observeEvent(input$mult2_grp, {
    # Move to results page
    updateNavlistPanel(session, "navlist_eda", selected="tab_gsummary")

})

observeEvent(input$gsummary_mult2, {
    # Move to results page
    updateNavlistPanel(session, "navlist_eda", selected="tab_mult2")

})

observeEvent(input$gsummary_home, {
    # Move to results page
    updateNavbarPage(session, "mainpage", selected="tab_nav")

})

observeEvent(input$norm_home, {
    # Move to results page
    updateNavbarPage(session, "mainpage", selected="tab_nav")

})

observeEvent(input$norm_t, {
    # Move to results page
    updateNavlistPanel(session, "navlist_dist", selected="tab_t")

})

observeEvent(input$t_home, {
    # Move to results page
    updateNavbarPage(session, "mainpage", selected="tab_nav")

})

observeEvent(input$t_norm, {
    # Move to results page
    updateNavlistPanel(session, "navlist_dist", selected="tab_norm")

})

observeEvent(input$t_chisq, {
    # Move to results page
    updateNavlistPanel(session, "navlist_dist", selected="tab_chisq")

})

observeEvent(input$chisq_home, {
    # Move to results page
    updateNavbarPage(session, "mainpage", selected="tab_nav")

})

observeEvent(input$chisq_t, {
    # Move to results page
    updateNavlistPanel(session, "navlist_dist", selected="tab_t")

})

observeEvent(input$chisq_binom, {
    # Move to results page
    updateNavlistPanel(session, "navlist_dist", selected="tab_binom")

})

observeEvent(input$binom_home, {
    # Move to results page
    updateNavbarPage(session, "mainpage", selected="tab_nav")

})

observeEvent(input$binom_chisq, {
    # Move to results page
    updateNavlistPanel(session, "navlist_dist", selected="tab_chisq")

})

observeEvent(input$binom_f, {
    # Move to results page
    updateNavlistPanel(session, "navlist_dist", selected="tab_f")

})

observeEvent(input$f_home, {
    # Move to results page
    updateNavbarPage(session, "mainpage", selected="tab_nav")

})

observeEvent(input$f_binom, {
    # Move to results page
    updateNavlistPanel(session, "navlist_dist", selected="tab_binom")

})
