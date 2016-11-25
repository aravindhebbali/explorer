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

observeEvent(input$click_gsummary, {
    # Move to results page
    updateNavbarPage(session, "mainpage", selected="tab_eda")
    updateNavlistPanel(session, "navlist_eda", selected="tab_gsummary")
    
})


observeEvent(input$click_barplot, {
    # Move to results page
    updateNavbarPage(session, "mainpage", selected="tab_viz")
    updateNavlistPanel(session, "navlist_viz", selected="tab_bar")
    
})

observeEvent(input$click_barplot2, {
    # Move to results page
    updateNavbarPage(session, "mainpage", selected="tab_viz")
    updateNavlistPanel(session, "navlist_viz", selected="tab_bar2")
    
})

observeEvent(input$click_boxplot, {
    # Move to results page
    updateNavbarPage(session, "mainpage", selected="tab_viz")
    updateNavlistPanel(session, "navlist_viz", selected="tab_box")
    
})


observeEvent(input$click_boxplot2, {
    # Move to results page
    updateNavbarPage(session, "mainpage", selected="tab_viz")
    updateNavlistPanel(session, "navlist_viz", selected="tab_box2")
    
})

observeEvent(input$click_hist, {
    # Move to results page
    updateNavbarPage(session, "mainpage", selected="tab_viz")
    updateNavlistPanel(session, "navlist_viz", selected="tab_hist")
    
})

observeEvent(input$click_line, {
    # Move to results page
    updateNavbarPage(session, "mainpage", selected="tab_viz")
    updateNavlistPanel(session, "navlist_viz", selected="tab_line")
    
})

observeEvent(input$click_pie, {
    # Move to results page
    updateNavbarPage(session, "mainpage", selected="tab_viz")
    updateNavlistPanel(session, "navlist_viz", selected="tab_pie")
    
})

observeEvent(input$click_pie3d, {
    # Move to results page
    updateNavbarPage(session, "mainpage", selected="tab_viz")
    updateNavlistPanel(session, "navlist_viz", selected="tab_pie3d")
    
})

observeEvent(input$click_scatter, {
    # Move to results page
    updateNavbarPage(session, "mainpage", selected="tab_viz")
    updateNavlistPanel(session, "navlist_viz", selected="tab_scatter")
    
})

observeEvent(input$click_mosaic, {
    # Move to results page
    updateNavbarPage(session, "mainpage", selected="tab_viz")
    updateNavlistPanel(session, "navlist_viz", selected="tab_mosaic")
    
})

observeEvent(input$click_ttest1, {
    # Move to results page
    updateNavbarPage(session, "mainpage", selected="tab_tests")
    updateNavlistPanel(session, "navlist_ttest", selected="tab_ttest1")
    
})

observeEvent(input$click_ttest2, {
    # Move to results page
    updateNavbarPage(session, "mainpage", selected="tab_tests")
    updateNavlistPanel(session, "navlist_ttest", selected="tab_ttest2")
    
})

observeEvent(input$click_ttest3, {
    # Move to results page
    updateNavbarPage(session, "mainpage", selected="tab_tests")
    updateNavlistPanel(session, "navlist_ttest", selected="tab_ttest3")
    
})

observeEvent(input$click_gof, {
    # Move to results page
    updateNavbarPage(session, "mainpage", selected="tab_tests")
    updateNavlistPanel(session, "navlist_ttest", selected="tab_gof")
    
})

observeEvent(input$click_chisq, {
    # Move to results page
    updateNavbarPage(session, "mainpage", selected="tab_tests")
    updateNavlistPanel(session, "navlist_ttest", selected="tab_chisq")
    
})

observeEvent(input$click_anova, {
    # Move to results page
    updateNavbarPage(session, "mainpage", selected="tab_tests")
    updateNavlistPanel(session, "navlist_ttest", selected="tab_anova")
    
})


observeEvent(input$intro_upload, {
    # Move to results page
    updateNavbarPage(session, "mainpage", selected="tab_data")
    updateNavlistPanel(session, "navlist", selected="tab_upload")
    
})


observeEvent(input$intro_home, {
    # Move to results page
    updateNavbarPage(session, "mainpage", selected="tab_nav")
    
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


observeEvent(input$summary_screen, {
    # Move to results page
    updateNavbarPage(session, "mainpage", selected="tab_data")
    updateNavlistPanel(session, "navlist", selected="tab_screen")
    
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

observeEvent(input$fqual_cross, {
    # Move to results page
    updateNavlistPanel(session, "navlist_eda", selected="tab_cross")
    
})

observeEvent(input$cross_fqual, {
    # Move to results page
    updateNavlistPanel(session, "navlist_eda", selected="tab_fqual")
    
})

observeEvent(input$cross_home, {
    # Move to results page
    updateNavbarPage(session, "mainpage", selected="tab_nav")
    
})

observeEvent(input$cross_fquant, {
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

observeEvent(input$fquant_grp_summary, {
    # Move to results page
    updateNavlistPanel(session, "navlist_eda", selected="tab_gsummary")
    
})


observeEvent(input$gsummary_fquant, {
    # Move to results page
    updateNavlistPanel(session, "navlist_eda", selected="tab_fquant")
    
})

observeEvent(input$gsummary_home, {
    # Move to results page
    updateNavbarPage(session, "mainpage", selected="tab_nav")
    
})


# links for bar plot
observeEvent(input$bar_home, {
    # Move to results page
    updateNavbarPage(session, "mainpage", selected="tab_nav")
    
})

observeEvent(input$bar_bar2, {
    # Move to results page
    updateNavlistPanel(session, "navlist_viz", selected="tab_bar2")
    
})

# links to 2 factor bar plot
observeEvent(input$bar2_bar, {
    # Move to results page
    updateNavlistPanel(session, "navlist_viz", selected="tab_bar")
    
})

observeEvent(input$bar2_home, {
    # Move to results page
    updateNavbarPage(session, "mainpage", selected="tab_nav")
    
})

observeEvent(input$bar2_box, {
    # Move to results page
    updateNavlistPanel(session, "navlist_viz", selected="tab_box")
    
})


# links for box plot
observeEvent(input$ubox_bar2, {
    # Move to results page
    updateNavlistPanel(session, "navlist_viz", selected="tab_bar2")
    
})

observeEvent(input$ubox_home, {
    # Move to results page
    updateNavbarPage(session, "mainpage", selected="tab_nav")
    
})

observeEvent(input$ubox_box2, {
    # Move to results page
    updateNavlistPanel(session, "navlist_viz", selected="tab_box2")
    
})

# links for 2 factor box plot
observeEvent(input$box2_box, {
    # Move to results page
    updateNavlistPanel(session, "navlist_viz", selected="tab_box")
    
})

observeEvent(input$box2_home, {
    # Move to results page
    updateNavbarPage(session, "mainpage", selected="tab_nav")
    
})

observeEvent(input$box2_hist, {
    # Move to results page
    updateNavlistPanel(session, "navlist_viz", selected="tab_hist")
    
})

# links for histogram
observeEvent(input$hist_box2, {
    # Move to results page
    updateNavlistPanel(session, "navlist_viz", selected="tab_box2")
    
})

observeEvent(input$hist_home, {
    # Move to results page
    updateNavbarPage(session, "mainpage", selected="tab_nav")
    
})

observeEvent(input$hist_line, {
    # Move to results page
    updateNavlistPanel(session, "navlist_viz", selected="tab_line")
    
})

# links for line chart
observeEvent(input$line_hist, {
    # Move to results page
    updateNavlistPanel(session, "navlist_viz", selected="tab_hist")
    
})

observeEvent(input$line_home, {
    # Move to results page
    updateNavbarPage(session, "mainpage", selected="tab_nav")
    
})

observeEvent(input$line_pie, {
    # Move to results page
    updateNavlistPanel(session, "navlist_viz", selected="tab_pie")
    
})

# links for pie chart
observeEvent(input$pie_line, {
    # Move to results page
    updateNavlistPanel(session, "navlist_viz", selected="tab_line")
    
})

observeEvent(input$pie_home, {
    # Move to results page
    updateNavbarPage(session, "mainpage", selected="tab_nav")
    
})

observeEvent(input$pie_pie3d, {
    # Move to results page
    updateNavlistPanel(session, "navlist_viz", selected="tab_pie3d")
    
})

observeEvent(input$pie3d_home, {
    # Move to results page
    updateNavbarPage(session, "mainpage", selected="tab_nav")
    
})

observeEvent(input$pie3d_pie, {
    # Move to results page
    updateNavlistPanel(session, "navlist_viz", selected="tab_pie")
    
})

observeEvent(input$pie3d_scatter, {
    # Move to results page
    updateNavlistPanel(session, "navlist_viz", selected="tab_scatter")
    
})


# links for scatter plot
observeEvent(input$scatter_pie3d, {
    # Move to results page
    updateNavlistPanel(session, "navlist_viz", selected="tab_pie3d")
    
})

observeEvent(input$scatter_home, {
    # Move to results page
    updateNavbarPage(session, "mainpage", selected="tab_nav")
    
})

observeEvent(input$scatter_mosaic, {
    # Move to results page
    updateNavlistPanel(session, "navlist_viz", selected="tab_mosaic")
    
})

# links for mosaic plot
observeEvent(input$mosaic_home, {
    # Move to results page
    updateNavbarPage(session, "mainpage", selected="tab_nav")
    
})

observeEvent(input$mosaic_scatter, {
    # Move to results page
    updateNavlistPanel(session, "navlist_viz", selected="tab_scatter")
    
})


observeEvent(input$ttest1_home, {
    # Move to results page
    updateNavbarPage(session, "mainpage", selected="tab_nav")
    
})

observeEvent(input$ttest1_ttest2, {
    # Move to results page
    updateNavlistPanel(session, "navlist_ttest", selected="tab_ttest2")
    
})

observeEvent(input$ttest2_ttest1, {
    # Move to results page
    updateNavlistPanel(session, "navlist_ttest", selected="tab_ttest1")
    
})

observeEvent(input$ttest2_ttest3, {
    # Move to results page
    updateNavlistPanel(session, "navlist_ttest", selected="tab_ttest3")
    
})

observeEvent(input$ttest3_home, {
    # Move to results page
    updateNavbarPage(session, "mainpage", selected="tab_nav")
    
})


observeEvent(input$ttest3_ttest2, {
    # Move to results page
    updateNavlistPanel(session, "navlist_ttest", selected="tab_ttest2")
    
})

observeEvent(input$gof_home, {
    # Move to results page
    updateNavbarPage(session, "mainpage", selected="tab_nav")
    
})

observeEvent(input$gof_ttest3, {
    # Move to results page
    updateNavlistPanel(session, "navlist_ttest", selected="tab_ttest3")
})

observeEvent(input$gof_chi2, {
    # Move to results page
    updateNavlistPanel(session, "navlist_ttest", selected="tab_chisq")
})

observeEvent(input$chisq_gof, {
    # Move to results page
    updateNavlistPanel(session, "navlist_ttest", selected="tab_gof")
})


observeEvent(input$chisq_home, {
    # Move to results page
    updateNavbarPage(session, "mainpage", selected="tab_nav")
    
})

observeEvent(input$chisq_anova, {
    # Move to results page
    updateNavlistPanel(session, "navlist_ttest", selected="tab_anova")
})

observeEvent(input$anova_home, {
    # Move to results page
    updateNavbarPage(session, "mainpage", selected="tab_nav")
    
})

observeEvent(input$anova_chisq, {
    # Move to results page
    updateNavlistPanel(session, "navlist_ttest", selected="tab_chisq")
})
