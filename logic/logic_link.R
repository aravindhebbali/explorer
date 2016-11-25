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