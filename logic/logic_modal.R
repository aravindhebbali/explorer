# upload
observeEvent(input$file, {
  if (!is.null(inFile())) {
    showModal(modalDialog(
      title = "Upload Successful",
      "Upon successfully uploading data, you will see a upload complete message. The next step is 
      to rename variables and modify data types. To do this, click on the Transform tab. If you 
      are facing problems uploading data, click on the demo tab to watch a video guide or reach
      out to the support team/ mentor.",
      easyClose = TRUE
    ))
  }
})

observeEvent(input$uploadlink1, {
    showModal(modalDialog(
      title = "Data Upload",
      "Upload a comma, semi-colon or tab separated files. The file type can be specified using 
      the Separator drop down box. Ensure you have inspected the data before uploading it. If 
      the data includes column or variable names, check the Header checkbox. Click on Browse to
      select the file you want to upload. It will open a new window and you can navigate to the
      directory where the data file is located. If the upload is successful, you will see the
      upload complete message. In case you face any issues uploading data, please reach out the 
      support team and/or your mentor.",
      easyClose = TRUE
    ))
})

# transform 
observeEvent(input$transhelp, {
    showModal(modalDialog(
      title = "Data Transformation",
      "If you have successfully uploaded data, you will see 3 columns in the Transform tab. The
      first column displays the names of all the variables in the data. The second column allows
      you to rename variables. The third column allows you to modify data types of the variables. 
      Valid data types include integer, numeric, factor, character and date. If you select date 
      in this column, a 4th column will pop up where you can specify the format of date/time. After
      making the necessary changes, scroll down and click on the Apply Changes button to execute 
      all the changes. Next, click on the Screen tab to screen data for missing values.",
      easyClose = TRUE
    ))
})

observeEvent(input$apply_changes, {
    showModal(modalDialog(
      title = "Data Screening",
      "Now that you have made the necessary changes to your data, let us screen it for missing
      values and to verify that all the changes made reflect in the final data set that will
      be used for all the analysis going forward. Click on the Screen tab to screen the data.",
      easyClose = TRUE
    ))
})

# screen 
observeEvent(input$dscreenlink1, {
    showModal(modalDialog(
      title = "Data Screening",
      "In the Screen tab, you can examine the variable names, their types and missing values. In
      case of factor/categorical variables, you can examine the levels of such variables. You can
      examine the missing values for each variable, total missing values in the data and number of
      rows and columns with missing values. After verifying the variable names, data types, levels
      of factor variables and missing values, scroll down and click on the Apply Changes button. 
      Clicking on this button will generate the final data set that will be used for all the 
      analysis going forward. Next click on Analyze and select EDA to generate descriptive/summary 
      statistics.",
      easyClose = TRUE
    ))
})

observeEvent(input$finalok, {
    showModal(modalDialog(
      title = "Exploratory Data Analysis",
      "Now that you have screened the data for missing values and to verify that all the changes
      made in the Transform tab reflected in the final data, let us begin by exploring our data.
      Click on Analyze and select EDA to generate descriptive/summary statistics.",
      easyClose = TRUE
    ))
})


# summary 
observeEvent(input$sumrylink1, {
    showModal(modalDialog(
      title = "Summary Statistics",
      "Select a variable from the variable drop down box. You can select only continuous variables. 
      Click on submit button to view summary statistics. It includes measures of location, measures 
      of dispersion, shape of distribution, quantiles and extreme observations in the data as well 
      as their row numbers. Scroll down to see the complete output. You can filter the data using 
      the slider to generate summary statistics for a subset of the data. Try generating summary 
      statistics for different variables.",
      easyClose = TRUE
    ))
})

# frequency 1 
observeEvent(input$fqualink1, {
    showModal(modalDialog(
      title = "Frequency Table (Categorical Data)",
      "Generate frequency distribution or 1 way tables of factor variables. Select a variable 
      from the variable drop down box. Click on submit to view the 1 way table. The name of the 
      variable is displayed at the top of the table. The first column displays the levels of the 
      variable. The second column displays the frequency of the levels and the third column 
      displays the cumulative frequency. The last 2 columns display the frequency and cumulative 
      frequency in terms of percentage. If you scroll down, you can see a bar plot as well. You 
      can skip this if your data does not have any factor variables.",
      easyClose = TRUE
    ))
})

# frequency 2 
observeEvent(input$fquantlink1, {
    showModal(modalDialog(
      title = "Frequency Table (Continuous Data)",
      "Generate frequency distribution of continuous data. Select a variable from the variable 
      drop down box and click on submit to view the frequency distribution. The name of the 
      variable is displayed at the top of the table. The first column of the table displays the 
      intervals into which the variable has been split. The default number of intervals in 5. 
      The second and third column display the frequency and cumulative frequency. The last 2 
      columns display the same in percentage. If you scroll down, you can see a histogram of the 
      variable. You can change the number of intervals using the bins drop down box. Let us 
      increase the intervals to 7 and click on submit. You can see that the intervals has 
      increased. You can also filter the data using the slider to generate frequency distribution 
      for a subset of the data. Select different variables and play around with the number of bins.",
      easyClose = TRUE
    ))
})

# cross table 
observeEvent(input$crosstablink1, {
    showModal(modalDialog(
      title = "Two Way Tables",
      "Generate cross tables or 2 way tables. Select two variables from the variable 1 and 
      variable 2 drop down boxes and click on submit. First you see the description of the 
      cell contents followed by the number of observations. In the table, you can see the row 
      and column variable as well as the totals. Scroll down to see the stacked bar plot, 
      which is followed by the grouped bar plot, the proportional bar plot and finally the 
      mosaic plot. Scroll back up to try different variables and view the cross table and the 
      plots.",
      easyClose = TRUE
    ))
})

# multiple 1 way table 
observeEvent(input$multonelink1, {
    showModal(modalDialog(
      title = "Multiple 1 Way Tables",
      "Generate multiple 1 way tables of factor variables. If your data has more than one factor 
      variable, one way tables will be generated for each of the variables in the multiple 1 way 
      tables tab. In our data set, there are 5 factor variables and you can see that 5 one way 
      tables have been generated. These tables are generated automatically. If your data has less 
      than 2 factor variables, then the multiple tables will not be generated. ",
      easyClose = TRUE
    ))
})

# multiple 2 way tables 
observeEvent(input$multwo1, {
    showModal(modalDialog(
      title = "Multiple 2 Way Tables",
      "Generate multiple 2 way tables of factor variables. If your data has more than 2 factor 
      variables, two way tables will be generated for all the possible combinations of such 
      variables in the multiple 2 way tables tab. In our data set, there are 5 factor variables 
      and you can see that several 2 way tables have been generated. The tables are generated for 
      all the possible combinations of the factor variables and are generated automatically. If 
      your data has less than 3 factor variables, then the multiple 2 way tables will not be 
      generated. ",
      easyClose = TRUE
    ))
})

# group summary 
observeEvent(input$gstatlink1, {
    showModal(modalDialog(
      title = "Group Summary",
      "Generate descriptive statistics of a continuous variable for the different levels of a 
      factor variable. Select a variable from the groupin variable drop down box and the summary 
      variable drop down box and click on submit. The table displays the summary statistics of the 
      read variable for each of the 4 levels of the race variable. Scroll down and you can see a box
       plot as well. Try to generate summary statistics of different continuous variables for all the 
       factor variables in the data.",
      easyClose = TRUE
    ))
})

# normal distribution
observeEvent(input$ndistlink1, {
    showModal(modalDialog(
      title = "Normal Distribution",
      "Learn about the factors that affect the shape of the normal distribution, visualize and 
      compute probability from percentiles and vice versa. In the distribution shape tab, play 
      around with the values of the mean and standard deviation to observe how they affect the 
      shape of the distribution. In the find probability tab, we will compute probability from 
      percentile given the mean and the standard deviation. Let us look at an example. Let X be 
      the IQ of a randomly selected student of a school. Assume X is normally distributed with 
      mean 90 and standard deviation 4. What is the probability that a randomly selected student 
      has an IQ below 80? Let us enter the percentile, mean and standard deviation and select the 
      lower tail. The probability is 0.006. Let us look at another example. What is the probability 
      that a randomly selected student has an IQ above 100? Let us change the percentile and select 
      upper tail. The probability is 0.006. In the find percentile tab, we will compute percentile 
      from probability given the mean and the standard deviation. Let us look at an example. Suppose 
      the grade on an exam is normally distributed with mean 60 and standard deviation 3. The teacher 
      wants to give 10 percent of the class an A. What should be the cutoff to determine who gets an 
      A? Let us enter the probability, mean and standard deviation and select the upper tail. The 
      cutoff should be 63.845. Let us look at another example. The teacher wants to give lower 
      15 percent of the class a D. What cutoff should the teacher use to determine who gets an D? 
      Let us change the probability and select lower tail. The cutoff should be 56.891. You can 
      explore more examples in the tutorial.",
      easyClose = TRUE
    ))
})

# t distribution
observeEvent(input$tdistlink1, {
    showModal(modalDialog(
      title = "t Distribution",
      "Learn about the factors that affect the shape of the t distribution, visualize and compute 
      probability from percentiles and vice versa. In the distribution shape tab, increase the 
      degress of freedom to observe how it affects the shape of the distribution. Let us slowly 
      increase the degrees of freedom to see the changes in the distribution shape. Next let us 
      move to the find probability tab. Here we will compute probability from percentile given 
      the degrees of freedom. Let us look at an example. Let T follow a t distribution with 6 
      degrees of freedom. What is the probability that the value of T is less than 2? Let us enter 
      the percentile, degrees of freedom and select the lower tail. The probability is 0.954. Let 
      us look at another example. What is the probability that the value of T is greater than 2? 
      Let us change the percentile and select upper tail. The probability is 0.046. Next let us 
      move to the find percentile tab. Here we will compute percentile from probability given the 
      degrees of freedom. Let us look at an example. Let T follow a t distribution with 8 degrees 
      of freedom. What is the 11th percetile? Let us enter the probability, degrees of freedom and 
      select the lower tail. The 11th percentile is -1.33. Let us look at another example. what is 
      the upper 15th percentile? Let us change the probability and select upper tail. The upper 15th 
      percentile is 1.108. You can explore more examples in the tutorial.",
      easyClose = TRUE
    ))
})

# chi square distribution
observeEvent(input$chidistlink1, {
    showModal(modalDialog(
      title = "Chi Square Distribution",
      "Learn about the factors that affect the shape of the chi square distribution, visualize 
      and compute probability from percentiles and vice versa. In the distribution shape tab, 
      increase the degress of freedom to observe how it affects the shape of the distribution. 
      Let us slowly increase the degrees of freedom to see the changes in the distribution shape. 
      We can overlay a normal distribution by setting the normal distribution drop down box to 
      true. Next let us move to the find probability tab. Here we will compute probability from 
      percentile given the degrees of freedom. Let us look at an example. What is the probability 
      that a chi square random variable with 12 degrees of freedom is greater than 8.62? Let us 
      enter the percentile, degrees of freedom and select the lower tail. The probability is 0.265.
       Let us look at another example. What is the probability that a chi square random variable 
       with 12 degrees of freedom is greater than 8.79? Let us change the percentile and select 
       upper tail. The probability is 0.721. Next let us move to the find percentile tab. Here we 
       will compute percentile from probability given the degrees of freedom. Let us look at an 
       example. Let T follow a chi square distribution with 8 degrees of freedom. What is the 10th 
       percetile? Let us enter the probability, degrees of freedom and select the lower tail. 
       The answer is 3.49. Let us look at another example. what is the upper 5th percentile? Let us 
       change the probability and select upper tail. The answer is 15.507. You can explore more 
       examples in the tutorial.",
      easyClose = TRUE
    ))
})

# binomial distribution
observeEvent(input$binomdist1, {
    showModal(modalDialog(
      title = "Binomial Distribution",
      "Learn about the factors that affect the shape of the binomial distribution, visualize and 
      compute probability from percentiles and vice versa. In the distribution shape tab, increase 
      number of trials to observe how it affects the shape of the distribution. Now change the 
      probability value and observe how the shape changes. Play around with the number of trials 
      and probability value. Next let us move to the find probability tab. Here we will compute 
      probability from percentile given the number of trials and the number of success. Let us look 
      at an example. Assume 20% of Magemill have no health insurance. Randomly sample 12 Magemillians. 
      Let X denote the number in the sample with no health insurance. What is the probability that 
      exactly 4 of the 15 sampled have no health insurance? Let us enter the number of trials, 
      probability, number of success and select exact in the tail drop down box. The probability is 
      0.133. You can explore more examples in the tutorials. ",
      easyClose = TRUE
    ))
})

# f distribution
observeEvent(input$fdistlink1, {
    showModal(modalDialog(
      title = "F Distribution",
      "Learn about the factors that affect the shape of the f distribution, visualize and 
      compute probability from percentiles and vice versa. In the distribution shape tab, 
      increase the numerator and denominator degress of freedom to observe how it affects the 
      shape of the distribution. Let us slowly increase both the degrees of freedom to see the 
      changes in the distribution shape. We can overlay a normal distribution by setting the 
      normal distribution drop down box to true. Next let us move to the find probability tab. 
      Here we will compute probability from percentile given the numerator and denominator 
      degrees of freedom. Let us look at an example. What is the probability that an F random 
      variable with 4 numerator degrees of freedom and 5 denominator degrees of freedom is less 
      than 2.63? Let us enter the percentile, degrees of freedom and select the lower tail. The 
      answer is 0.841. Let us look at another example. What is the probability that an F random 
      variable with 4 numerator degrees of freedom and 5 denominator degrees of freedom is greater 
      than 3.89? Let us change the percentile and select upper tail. The answer is 0.084. Next let 
      us move to the find percentile tab. Here we will compute percentile from probability given 
      both the degrees of freedom. Let us look at an example. Let X be an F random variable with 4 
      numerator degrees of freedom and 5 denominator degrees of freedom. What is the upper 20th 
      percentile? Let us enter the probability, degrees of freedom and select the upper tail. The 
      answer is 2.24. Let us look at another example. what is the 35th percentile? Let us change 
      the probability and select lower tail. The answer is 0.652. You can explore more examples in 
      the tutorial.",
      easyClose = TRUE
    ))
})

# one sample t test
observeEvent(input$ostlink1, {
    showModal(modalDialog(
      title = "One Sample t Test",
      "Perform 1 sample t test on the equality of means. The objective of the test is to test 
      the hypothesis that a sample has a mean equal to a hypothesized value. Let us begin by 
      selecting a variable for the test. From the variable drop down box, select read. Next 
      specify the type of test you want to perform. The options are lower tail, upper tail, 
      both tails and all the tails. Let us use the default option which is both tails. Next 
      specify alpha, the acceptable tolerance for type 1 error. It is nothing but 1 minus the 
      confidence level. The default value is 0.05. Finally specify the hypothesized value or 
      the true value of the mean. Let us enter 50 here. Now click on submit to view the output. 
      Scroll down a little to view the complete output. The output includes one sample statistics, 
      t value, degrees of freedom, the p value, the mean difference and the 95 % confidence 
      interval for the mean difference. Now select less from the alternative drop down box and 
      examine the new output. This is the lower tail test. Again select greater from the alternative 
      drop down box and examine the output. This is the upper tail test. If you want to view the 
      result for all the tails, select all from the alternative drop down box. Select another 
      variable and play around with all the input options. Reach out to the mentor or the support 
      team if you face any issues.",
      easyClose = TRUE
    ))
})

# two independent sample t test
observeEvent(input$indttest1, {
    showModal(modalDialog(
      title = "Two Independent Sample t Test",
      "Perform independent sample t test. it compares the means of two independent groups in 
      order to determine whether there is statistical evidence that the associated population
      means are significantly different. Let us begin by selecting a factor variable from 
      variable 1 drop down box and a continuous variable from the variable 2 drop down box for 
      the test. While selecting factor variable ensure that you select only binary variables 
      that is only variables with 2 levels. Next specify alpha, the acceptable tolerance for 
      type 1 error. It is nothing but 1 minus the confidence level. The default value is 0.05. 
      Next specify the type of test you want to perform. The options are lower tail, upper tail, 
      both tails and all the tails. Let us use the default option which is both tails. Now click 
      on submit to view the output. Scroll down a little to view the complete output. The output 
      includes group statistics, t value for pooled and satterthwaite methods, degrees of freedom, 
      the p value and test for equality of variances. Now select less from the alternative drop 
      down box and examine the new output. This is the lower tail test. Again select greater from 
      the alternative drop down box and examine the output. This is the upper tail test. If you 
      want to view the result for all the tails, select all from the alternative drop down box. 
      Select another variable and play around with all the input options. Reach out to the mentor 
      or the support team if you face any issues.",
      easyClose = TRUE
    ))
})

# paired sample t test
observeEvent(input$ab1, {
    showModal(modalDialog(
      title = "Paired Sample t Test",
      "Perform paired sample t test. It tests that two samples have the same mean, assuming 
      paired data. Let us begin by selecting two variables from the variable 1 and variable 2 
      drop down box. Next specify confidence interval for the test. The default value is 0.95. 
      Next specify the type of test you want to perform. The options are lower tail, upper tail, 
      both tails and all the tails. Let us use the default option which is both tails. Now click 
      on submit to view the output. Scroll down a little to view the complete output. The output 
      includes paired sample statistics, paired sample correlations, t value, degrees of freedom 
      and the p value. Now select less from the alternative drop down box and examine the new 
      output. This is the lower tail test. Again select greater from the alternative drop down 
      box and examine the output. This is the upper tail test. If you want to view the result for 
      all the tails, select all from the alternative drop down box. Select another variable and 
      play around with all the input options. Reach out to the mentor or the support team if you 
      face any issues.",
      easyClose = TRUE
    ))
})

# binomial test
observeEvent(input$binomtestlink1, {
    showModal(modalDialog(
      title = "Binomial Test",
      "Perform binomial test. It tests whether the proportion of successes on a two-level 
      categorical dependent variable significantly differs from a hypothesized value. There are 
      two ways to perform this test, you can use the variables in the data set or use the 
      calculator tab to enter the number of trials and success. We will first use variables from 
      the data set and then move on to the calculator tab. Let us begin by selecting a binary 
      variable from the variable drop down box. Next specify the probability of success and click 
      on submit to view the output. Select another variable and play around with the success 
      probability. Now click on the calculator tab. Here we can specify the number of trials, 
      number of success and assumed probability of success on a trial. Click on submit to view 
      the output. Reach out to the mentor or the support team if you face any issues.",
      easyClose = TRUE
    ))
})

# one sample variance test
observeEvent(input$osvarlink1, {
    showModal(modalDialog(
      title = "One Sample Variance Test",
      "Perform a 1 sample variance test. It performs tests on the equality of standard deviations. 
      It tests that the standard deviation of a sample is equal to a hypothesized value. Let us begin 
      by selecting a variable for the test. From the variable drop down box, select read. Next specify 
      the type of test you want to perform. The options are lower tail, upper tail, both tails and all 
      the tails. Let us use the default option which is both tails. Next specify confidence interval 
      for the test. The default value is 0.95. Finally specify the hypothesized value or the true value 
      of the standard deviation. Let us enter 5 here. Now click on submit to view the output. Scroll 
      down a little to view the complete output. The output includes one sample statistics, chi square 
      statistic, degrees of freedom and the p value. Now select less from the alternative drop down box 
      and examine the new output. This is the lower tail test. Again select greater from the alternative 
      drop down box and examine the output. This is the upper tail test. If you want to view the result 
      for all the tails, select all from the alternative drop down box. Select another variable and 
      play around with all the input options. Reach out to the mentor or the support team if you face 
      any issues.",
      easyClose = TRUE
    ))
})

# two sample variance test
observeEvent(input$tsvarlink1, {
    showModal(modalDialog(
      title = "Two Sample Variance Test",
      "Perform a 2 sample variance test. It performs tests on the equality of standard deviations. 
      There are 2 ways to perform the test. You can select two continuous variables from the data set 
      or select 1 grouping variable and 1 continuous variable. Let us look at the first method. Select 
      2 variables from the variable 1 and variable 2 drop down box. Next specify the type of test you 
      want to perform. The options are lower tail, upper tail and all the tails. Let us use the default 
      option which is lower tail. Now click on submit to view the output. Scroll down a little to view 
      the complete output. The output includes sample statistics, f statistic, numerator and denominator 
      degrees of freedom and the p value. Now select greater from the alternative drop down box and 
      examine the output. This is the upper tail test. If you want to view the result for all the tails, 
      select all from the alternative drop down box. Click on the calculator tab. Select 2 variables 
      from the variable and grouping variable drop down box. Specify the type of test you want to 
      perform and click on submit. The output includes sample statistics, f statistic, numerator and 
      denominator degrees of freedom and the p value. Select another variable and play around with all 
      the input options. Reach out to the mentor or the support team if you face any issues.",
      easyClose = TRUE
    ))
})

# one sample proportion test
observeEvent(input$osproplink1, {
    showModal(modalDialog(
      title = "One Sample Proportion Test",
      "Perform 1 sample proportion test. The test compares proportion in one group to a specified 
      population proportion. There are 2 ways to perform the test. You can select a factor variable 
      and specify the probability or you can specify the sample size, the hypothesized proportion and 
      the probability. Let us look at the first method. Select a variable from the variable drop down 
      box. You can specify the probability in the probability input box. The default value is 0.5. 
      Next specify the type of test you want to perform. The options are lower tail, upper tail, both 
      tails and all the tails. Let us use the default option which is both tails. Now click on submit 
      to view the output. Scroll down a little to view the complete output. The output includes sample 
      size, expected proportion, observed proportion, z statistic and p value. Now select less from 
      the alternative drop down box and examine the output. This is the lower tail test. Now select 
      greater from the alternative drop down box and examine the output. This is the upper tail test. 
      If you want to view the result for all the tails, select all from the alternative drop down box. 
      Click on the calculator tab. Specify the sample size, hypothesized proportion and the probability. 
      Next specify the type of test you want to perform and click on submit. The output includes 
      sample size, expected proportion, observed proportion, z statistic and p value. Select another 
      variable and play around with all the input options. Reach out to the mentor or the support team 
      if you face any issues.",
      easyClose = TRUE
    ))
})

# two sample proportion test
observeEvent(input$tsproplink1, {
    showModal(modalDialog(
      title = "Two Sample Proportion Test",
      "Perform a 2 sample proportion test. It is a test on the equality of proportions using 
      large-sample statistics. It tests that a sample has the same proportion within two 
      independent groups or two samples have the same proportion. There are 3 ways to perform 
      the test. You can select two factor variables from the data set, select 1 grouping 
      variable and 1 factor variable or use the calculator to specify the sample sizes and 
      proportions. Let us look at the first method. Select 2 variables from the variable 1 and 
      variable 2 drop down box. The options are lower tail, upper tail, both tails and all the 
      tails. Let us use the default option which is both tails. Now click on submit to view the 
      output. Scroll down a little to view the complete output. The output includes sample size, 
      z statistic and p value. Now select less from the alternative drop down box and examine the 
      output. This is the lower tail test. Now select greater from the alternative drop down box 
      and examine the output. This is the upper tail test. If you want to view the result for all 
      the tails, select all from the alternative drop down box. Next click on the using groups tab.
       Select variables from the variable and grouping variable drop down box. Specify the type of 
       test you want to perform and click on submit. The output includes sample size, z statistic 
       and p value. Next click on the calculator tab. Specify the sample sizes and hypothesized 
       proportions. Next specify the type of test you want to perform and click on submit. The output 
       includes sample size, z statistic and p value. Reach out to the mentor or the support team if 
       you face any issues.",
      easyClose = TRUE
    ))
})

# one way anova
observeEvent(input$anovalink1, {
    showModal(modalDialog(
      title = "One Way ANOVA",
      "Perform one way analysis of variance. Select 2 variables from the variable and grouping variable 
      drop down box and click on the submit button. Scroll down to view the complete output which 
      includes sum of squares, degrees of freedom, mean square, f statistic, p value. The report table 
      includes frequency, mean and standard deviation of the continuous variable for each of the levels 
      of the grouping variable. The output also includes the total number of observations, r squared, 
      adjusted r squared and root mean squared error. Play around with different variables and examine 
      the output. Reach out to the mentor or the support team if you face any issues.",
      easyClose = TRUE
    ))
})

# levene test
observeEvent(input$levtestlink1, {
    showModal(modalDialog(
      title = "Levene Test",
      "Perform levene's test. It includes Levene's robust test statistic for the equality of variances 
      and the two statistics proposed by Brown and Forsythe that replace the mean in Levene's formula 
      with alternative location estimators. The first alternative replaces the mean with the median. 
      The second alternative replaces the mean with the 10 % trimmed mean. There are 3 ways to perform 
      this test. The first method uses 2 continuous variables from the data set. The second method uses 
      1 continuous variable and 1 grouping variable and the third method uses a formula. Let us look 
      at them 1 by 1. Click on the input box next to variable. You can see all the continuous variables 
      in the data. Select as many variables as you like. Let us select read, math and science. Next 
      click on submit to view the test result. The output includes mean and standard deviation for the
      3 variables as well as the combined mean and standard deviation. The test statistics includes 
      the numerator and denominator degrees of freedom, the f statistics and the p value. Next click 
      on the using groups tab. Here select 2 variables from the variable and grouping variable drop 
      down boxes. Click on submit. The output includes mean and standard deviation for the 3 variables 
      as well as the combined mean and standard deviation. The test statistics includes the numerator 
      and denominator degrees of freedom, the f statistics and the p value. Next click on the using 
      formula and specify a formula in the model formula input box. Click on submit to view the result. 
      The output includes mean and standard deviation for the 3 variables as well as the combined mean 
      and standard deviation. The test statistics includes the numerator and denominator degrees of 
      freedom, the f statistics and the p value. Perform the test using different variables and exmaine 
      the output. Reach out to the mentor or the support team if you face any issues.",
      easyClose = TRUE
    ))
})

# chi square gof
observeEvent(input$chigoflink1, {
    showModal(modalDialog(
      title = "Chi Square GoF Test",
      "Perform chi square goodness of fit test. It tests whether the observed proportions for a 
      categorical variable differ from hypothesized proportions. Select a variable from the variable 
      drop down box. Next click on the update button. Here you can specify the hypothesized proportions. 
      The input boxes for entering the hypothesized proportions are automatically generated based on 
      the levels of the variable selected. Let us enter the hypothesized proportions. Ensure that the 
      hypothesized proportions sum upto 1. After entering the hypothesized proportions, click on the 
      submit button to view the results. Scrolll down to view the output. The test statistics includes 
      the chi square statistic, degrees of freedom, p value and sample size. The table includes the 
      observed and expected proportions, deviation percentage and residuals. If you want to apply 
      continuity correction, select true in the continuity correction drop down box and observe how 
      the output changes. Perform the test for different factor variables in the data set and examine 
      the output. Reach out to the mentor or the support team if you face any issues.",
      easyClose = TRUE
    ))
})

# chi square association test
observeEvent(input$chiasso1, {
    showModal(modalDialog(
      title = "Chi Square Test of Association",
      "Perform chi square test of association. The test examines if there is a relationship between 
      two categorical variables. Select 2 variables from the variable 1 and variable 2 drop down box 
      and click on submit. The output statistic include chi square, likelihood ratio chi square, phi 
      coefficient, contingency coefficient, mantel haenszel chi square and cramer's v. Perform the 
      test to examine the relationship between different factor variables in your data set. Reach out 
      to the mentor or the support team if you face any issues.",
      easyClose = TRUE
    ))
})

# cochran test
observeEvent(input$cochranlink1, {
    showModal(modalDialog(
      title = "Cochran's Q Test",
      "Perform cochran's q test. It tests if the proportions of 3 or more dichotomous variables are 
      equal in the same population. Click on the input box next to select variables. Select 3 binary 
      variables from the variables in your data set and click on submit to view the results of the 
      test. The output includes the sample size, the cochran's q statistic, the degrees of freedom 
      and the p value. Perform the test with different data and examine the output. Reach out to the 
      mentor or the support team if you face any issues.",
      easyClose = TRUE
    ))
})

# runs test
observeEvent(input$runslink1, {
    showModal(modalDialog(
      title = "Runs Test for Randomness",
      "Perform runs test for randomness. It tests whether the observations are serially independent 
      that is whether they occur in a random order, by counting how many runs there are above and 
      below a threshold. By default, the median is used as the threshold. A small number of runs 
      indicates positive serial correlation; a large number indicates negative serial correlation. 
      Select a variable from the variable drop down box and click on submit. The output includes 
      total cases, the test value, the number of cases below and above the test value, observed 
      and expected number of runs, the variance, the z statistic and the p value. Select true in 
      the drop input box if you want to drop values equal to the threshold. If you want the data 
      to be recoded in binary format, select true in the split drop down box. By default, the median 
      is used as the threshold. If you want the mean to be selected as the threshold, select true in 
      the mean drop down box. You can also specify a custom value to used as the threshold instead 
      of mean or median. To do this, enter the value in the threshold input box. In case the data 
      is coded in binary format, specify 0 as the threshold. Select different variables and play 
      around with all the input options and examine the result. Reach out to the mentor or the 
      support team if you face any issues.",
      easyClose = TRUE
    ))
})

# mcnemar test
observeEvent(input$mclink1, {
    showModal(modalDialog(
      title = "McNemar's Test",
      "Perform McNemar's test. It tests if the proportions of two dichotomous variables are equal in 
      the same population. There are 2 ways to perform this test. In the first method, you can select 
      2 dichotomous variables from the data set. In the second method, you need to enter the values
       manually in a calculator like interface. Let us look at each of them 1 by 1. Select 2 binary 
       variables using the variable 1 and variable 2 drop down box and click on submit. Scroll down 
       to view the full output. The output includes a two way table, the mcnemar's chi square 
       statistic, the degrees of freedom, p value, kappa coefficient and odds ratio. Next click on 
       the calculator tab and enter the values in the input boxes and click on submit. We will enter 
       the values from the two way table that was part of the output we got from the test. The same 
       output is generated here as well. If you have the variables in the data set, you can use the 
       first method. If you have a two way table instead of the variables, use the calculator to 
       perform the test. Select different variables or enter different values in the calculator and 
       examine the output from the test. Reach out to the mentor or the support team if you face any 
       issues.",
      easyClose = TRUE
    ))
})

# regress
observeEvent(input$mlr1, {
    showModal(modalDialog(
      title = "OLS Regression",
      "Build a linear regression model using the ordinary least squares technique. In the model 
      formula text box, specify the model formula and click on submit. Scroll down to see the 
      complete output. The output includes model summary, analysis of variance and parameter 
      estimates. The model summary includes adjusted r square, predicted rsquare, root mean 
      square error, coefficient of variation and mean absolute error. The parameter estimates 
      includes betas, standard error, standardized betas, t value, p value and the confidence 
      interval for the betas. You can include interaction terms in the model formula as well. 
      Try building different models and examine the output. Reach out to the mentor or the support 
      team if you face any issues.",
      easyClose = TRUE
    ))
})

# all possible regression
observeEvent(input$allsub1, {
    showModal(modalDialog(
      title = "All Possible Regression",
      "Perform variable selection using all possible regression method. It fits all regressions 
      involving one regressor, two regressors, three regressors, and so on. It tests all possible 
      subsets of the set of potential independent variables. If you have specified a model in the 
      regression tab and would like to use the same model, check the use previous model check box 
      and click submit. If you want to build a new model, specify the model formula in the text 
      input box and click submit. Scroll down to view the complete output. The output includes the 
      model number, the number of predictors in the model, the variables, r square, adjusted r square 
      and mallow's c p. Scroll down further to see plots for r square, adjusted r square, mallow's cp, 
      akaike information criteria, Sawa bayesian information criteria, schwarz bayesian criteria. 
      Try performing all possible regression on different models and examine the output. Reach out 
      to the mentor or the support team if you face any issues.",
      easyClose = TRUE
    ))
})

# best subsets regression
observeEvent(input$bestsub1, {
    showModal(modalDialog(
      title = "Best Subsets Regression",
      "Perform variable selection using best subset regression method. It selects the subset of 
      predictors that do the best at meeting some well-defined objective criterion, such as having 
      the largest R2 value or the smallest MSE, Mallow's Cp or AIC. If you have 3 variables in the 
      model, it will return the best 1 predictor model, the best 2 predictor model and the best 3 
      predictor model. If you have specified a model in the regression tab and would like to use the 
      same model, check the use previous model check box and click submit. If you want to build a new
       model, specify the model formula in the text input box and click submit. Scroll down to view 
       the complete output. The output includes the model details, r square, adjusted r square, 
       predicted r square, mallow's c p, akaike information criteria, Sawa bayesian information 
       criteria, schwarz bayesian criteria, hocking's s p, amemiya's prediction criteria and final 
       prediction error. Scroll down further to see plots for r square, adjusted r square, mallow's cp, 
       akaike information criteria, Sawa bayesian information criteria, schwarz bayesian criteria. Try 
       performing best subset regression on different models and examine the output. Reach out to the 
       mentor or the support team if you face any issues.",
      easyClose = TRUE
    ))
})

# Stepwise Regression
observeEvent(input$stepwise1, {
    showModal(modalDialog(
      title = "Stepwise Regression",
      "Perform variable selection using stepwise regression method. It builds regression model from a 
      set of candidate predictor variables by entering and removing predictors based on p values, in 
      a stepwise manner until there is no variable left to enter or remove any more. If you have 
      specified a model in the regression tab and would like to use the same model, check the use 
      previous model check box. Next enter the p values based on which the variables must be entered
       or removed from the model. If you want the details of the stepwise regression, select true in 
       the details drop down box and click submit. If you want to build a new model, specify the model
        formula in the text input box and click submit. Scroll down to view the complete output. The 
        output includes the candidate predictor terms and selection summary. The selection summary 
        incldes the step number, the predictor in question and whether it was added or removed. It 
        also displays r square, adjusted r square, mallow's c p, akaike information criteria and root 
        mean square error after adding or removing the predictor. Scroll down further to see plots for 
        r square, adjusted r square, mallow's cp, akaike information criteria, Sawa bayesian 
        information criteria, schwarz bayesian criteria. Try performing stepwise regression on 
        different models and examine the output. Reach out to the mentor or the support team if you 
        face any issues.",
      easyClose = TRUE
    ))
})

# stepwise forward regression
observeEvent(input$stepf1, {
    showModal(modalDialog(
      title = "Stepwise Forward Regression",
      "Perform variable selection using stepwise forward regression method. It builds regression model 
      from a set of candidate predictor variables by entering predictors based on p values, in a 
      stepwise manner until there is no variable left to enter any more. If you have specified a 
      model in the regression tab and would like to use the same model, check the use previous model 
      check box. Next enter the p value based on which the variables must be entered into the model. 
      If you want the details of the stepwise regression, select true in the details drop down box 
      and click submit. If you want to build a new model, specify the model formula in the text input 
      box and click submit. Scroll down to view the complete output. The output includes the candidate 
      predictor terms and selection summary. The selection summary incldes the step number and the 
      predictor in question. It also displays r square, adjusted r square, mallow's c p, akaike 
      information criteria and root mean square error after adding or removing the predictor. Scroll 
      down further to see plots for r square, adjusted r square, mallow's cp, akaike information 
      criteria, Sawa bayesian information criteria, schwarz bayesian criteria. Try performing stepwise 
      forward regression on different models and examine the output. Reach out to the mentor or the 
      support team if you face any issues.",
      easyClose = TRUE
    ))
})

# stepwise backaward regression
observeEvent(input$stepb1, {
    showModal(modalDialog(
      title = "Stepwise Backward Regression",
      "Perform variable selection using stepwise backward regression method. It builds regression 
      model from a set of candidate predictor variables by removing predictors based on p values, in 
      a stepwise manner until there is no variable left to remove any more. If you have specified a 
      model in the regression tab and would like to use the same model, check the use previous model 
      check box. Next enter the p value based on which the variables must be removed from the model. 
      If you want the details of the stepwise regression, select true in the details drop down box 
      and click submit. If you want to build a new model, specify the model formula in the text input 
      box and click submit. Scroll down to view the complete output. The output includes the candidate 
      predictor terms and selection summary. The selection summary incldes the step number and the 
      predictor in question. It also displays r square, adjusted r square, mallow's c p, akaike 
      information criteria and root mean square error after adding or removing the predictor. Scroll 
      down further to see plots for r square, adjusted r square, mallow's cp, akaike information 
      criteria, Sawa bayesian information criteria, schwarz bayesian criteria. Try performing stepwise 
      backward regression on different models and examine the output. Reach out to the mentor or the 
      support team if you face any issues.",
      easyClose = TRUE
    ))
})

# stepaic regression
observeEvent(input$stepaicbo1, {
    showModal(modalDialog(
      title = "stepAIC Regression",
      "Perform variable selection using stepwise regression method based on akaike information 
      criteria. It builds regression model from a set of candidate predictor variables by entering 
      and removing predictors based on akaike information critera, in a stepwise manner until there 
      is no variable left to be entered or removed from the model any more. If you have specified a 
      model in the regression tab and would like to use the same model, check the use previous model 
      check box. If you want the details of the stepwise regression, select true in the details drop 
      down box and click submit. If you want to build a new model, specify the model formula in the 
      text input box and click submit. Scroll down to view the complete output. The output includes 
      the predictor in question and whether it was added or removed. It also displays akaike 
      information criteria, regression sum of squares, residual sum of squares, r square and adjusted 
      r square after adding or removing the predictor. Scroll down further to see a plot of akaike 
      information criteria. Try performing stepwise a i c regression on different models and examine 
      the output. Reach out to the mentor or the support team if you face any issues.",
      easyClose = TRUE
    ))
})

# stepaic forward regress
observeEvent(input$stepaicf1, {
    showModal(modalDialog(
      title = "stepAIC Forward Regression",
      "Perform variable selection using stepwise forward regression based on akaike information 
      criteria. It builds regression model from a set of candidate predictor variables by entering 
      predictors based on akaike information criteria, in a stepwise manner until there is no variable 
      left to enter the model any more. If you have specified a model in the regression tab and would 
      like to use the same model, check the use previous model check box. If you want the details of 
      the stepwise regression, select true in the details drop down box and click submit. If you want 
      to build a new model, specify the model formula in the text input box and click submit. Scroll 
      down to view the complete output. The output includes akaike information criteria, regression 
      sum of squares, residual sum of squares, r square and adjusted r square after adding the 
      predictor. Scroll down further to see plot of akaike information criteria. Try performing 
      stepwise a i c forward regression on different models and examine the output. Reach out to the 
      mentor or the support team if you face any issues.",
      easyClose = TRUE
    ))
})

#  stepacic backward regress
observeEvent(input$stepaicb1, {
    showModal(modalDialog(
      title = "OLS Regression",
      "Perform variable selection using stepwise backward regression based on akaike information 
      criteria. It builds regression model from a set of candidate predictor variables by removing 
      predictors based on akaike information criteria, in a stepwise manner until there is no variable 
      left to be removed from the model any more. If you have specified a model in the regression tab 
      and would like to use the same model, check the use previous model check box. If you want the 
      details of the stepwise regression, select true in the details drop down box and click submit. 
      If you want to build a new model, specify the model formula in the text input box and click 
      submit. Scroll down to view the complete output. The output includes akaike information criteria, 
      regression sum of squares, residual sum of squares, r square and adjusted r square after 
      removing the predictor. Scroll down further to see plot of akaike information criteria. Try 
      performing stepwise a i c backward regression on different models and examine the output. 
      Reach out to the mentor or the support team if you face any issues.",
      easyClose = TRUE
    ))
})

#  residual vs fitted plot
observeEvent(input$rvsp1, {
    showModal(modalDialog(
      title = "Residual vs Fitted Plot",
      "Create a residual versus predicted plot after fitting a regression model. It is useful for 
      detecting non-linearity, unequal error variances and outliers. If you have specified a model 
      in the regression tab and would like to use the same model, check the use previous model check
       box. If you want to build a new model, specify the model formula in the text input box and 
       click submit. Scroll down to view the plot. Generate and examine the plot for different models. 
       Reach out to the mentor or the support team if you face any issues.",
      easyClose = TRUE
    ))
})

#  residual box plot
observeEvent(input$rbplot1, {
    showModal(modalDialog(
      title = "Residual Box Plot",
      "Create a residual box plot after fitting a regression model. If you have specified a model in 
      the regression tab and would like to use the same model, check the use previous model check box 
      and click submit. If you want to build a new model, specify the model formula in the text input 
      box and click submit. Scroll down to view the plot. Generate and examine the plot for different 
      models. Reach out to the mentor or the support team if you face any issues. ",
      easyClose = TRUE
    ))
})

#  residual histogram
observeEvent(input$rhist1, {
    showModal(modalDialog(
      title = "Residual Histogram",
      "Create a residual box plot after fitting a regression model. If you have specified a model in 
      the regression tab and would like to use the same model, check the use previous model check box 
      and click submit. If you want to build a new model, specify the model formula in the text input 
      box and click submit. Scroll down to view the plot. Generate and examine the plot for different 
      models. Reach out to the mentor or the support team if you face any issues. ",
      easyClose = TRUE
    ))
})


#  residual qq plot
observeEvent(input$rqq1, {
    showModal(modalDialog(
      title = "Residual QQ Plot",
      "Create a residual q q plot after fitting a regression model. It is useful for detecting 
      violation of normality assumption. If you have specified a model in the regression tab and 
      would like to use the same model, check the use previous model check box. If you want to build 
      a new model, specify the model formula in the text input box and click submit. Scroll down to 
      view the plot. Generate and examine the plot for different models. Reach out to the mentor or 
      the support team if you face any issues.",
      easyClose = TRUE
    ))
})


# normality test
observeEvent(input$resnorm1, {
    showModal(modalDialog(
      title = "Normality Test",
      "Perform normality test after fitting a regression model. It is useful for detecting violation 
      of normality assumption. If you have specified a model in the regression tab and would like to 
      use the same model, check the use previous model check box. If you want to build a new model, 
      specify the model formula in the text input box and click submit. Scroll down to view the 
      complete output. It includes shapiro wilk statistic, kolmogorov smirnov statistic, 
      cramer von mises statistic, anderson darling statistic and the p values for each of them. 
      Perform the normality test for different models and examine the output to detect violation 
      of normality assumptions. Reach out to the mentor or the support team if you face any issues.",
      easyClose = TRUE
    ))
})

# breusch pagan test
observeEvent(input$bplink1, {
    showModal(modalDialog(
      title = "Breusch Pagan Test",
      "Perform breusch pagan test for constant variance. The test assumes that the error terms are 
      normally distributed. If you have specified a model in the regression tab and would like to use 
      the same model, check the use previous model check box. If you want to build a new model, 
      specify the model formula in the text input box and click submit. The variables input box will 
      be updated with the first predictor in the model and the result of the test will be displayed. 
      If you want to select more variables for the test, just click on the variables input box and 
      you can select other predictors used in the model. If you want to use the fitted values of the 
      model instead of the predictors, select true in the fitted values drop down box and click on 
      submit. If you want to use all the predictors in the model for the test, select true in the 
      RHS drop down box. If you want multiple tests to be performed, select true in the multiple drop 
      down box. If you want to apply p value adjustment to the test, select the appropriate adjustment 
      from the p value adjustment drop down box. The options include none, bonferroni, sidak and holm. 
      The output for the test includes the null and alternate hypothesis, the response variable, the 
      values used for the test including fitted values of the model or the predictors in the model, 
      the chi square statistic, the degrees of freedom and the p value. Perform the test on different 
      models and examine the output to detect non constant variance. Reach out to the mentor or the 
      support team if you face any issues.",
      easyClose = TRUE
    ))
})

# bartlett test
observeEvent(input$bartlink1, {
    showModal(modalDialog(
      title = "Bartlett Test",
      "Perform bartlett test for constant variance. It tests if k samples have the equal variances. 
      The null hypothesis is that variances are equal across groups while the alternate hypothesis is 
      that variances are unequal for at least 2 groups. There are 3 ways to perform this test. The 
      first method is to specify k variables. The second method is to specify a continuous variable 
      and a grouping variable with k levels and the third method is to specify a formula where the 
      response variable is a continuous variable and the predictor is a factor variable with k levels. 
      Let us look at them 1 by 1. In the using variables tab, select variables from the drop down box 
      and click on submit to view the test results. The output includes the null and alternate 
      hypothesis, the variables used for the test, the chi square statistic, the degrees of freedom 
      and the p value. Next click on the using groups tab. Select 2 variables from the variable and 
      grouping variable drop down box and click on submit. The content of the output is same as the 
      first method except the variables. Next click on using formula tab and specify a formula in the 
      model formula text input box. It must include a response and a predictor. The response must be 
      a continuous variable and the predictor must be a factor variable. Click on submit to view the 
      result. Perform the test on different models and examine the output to detect non constant 
      variance. Reach out to the mentor or the support team if you face any issues. ",
      easyClose = TRUE
    ))
})

# f test
observeEvent(input$freglink1, {
    showModal(modalDialog(
      title = "F Test",
      "Perform f test for constant variance. The test assumes that the error terms are independent 
      and identically distributed. If you have specified a model in the regression tab and would like 
      to use the same model, check the use previous model check box. If you want to build a new model, 
      specify the model formula in the text input box and click submit. The variables input box will 
      be updated with the first predictor in the model and the result of the test will be displayed. 
      If you want to select more variables for the test, just click on the variables input box and you 
      can select other predictors used in the model. If you want to use the fitted values of the model 
      instead of the predictors, select true in the fitted values drop down box and click on submit. 
      If you want to use all the predictors in the model for the test, select true in the RHS drop 
      down box. The output for the test includes the null and alternate hypothesis, the values used 
      for the test including fitted values of the model or the predictors in the model, the f 
      statistic, the numerator and denominator degrees of freedom and the p value. Perform the test 
      on different models and examine the output to detect non constant variance. Reach out to the 
      mentor or the support team if you face any issues.",
      easyClose = TRUE

    ))
})

# score test
observeEvent(input$scorelink1, {
    showModal(modalDialog(
      title = "Score Test",
      "Perform score test for constant variance. The test assumes that the error terms are independent 
      and identically distributed. If you have specified a model in the regression tab and would like 
      to use the same model, check the use previous model check box. If you want to build a new model, 
      specify the model formula in the text input box and click submit. The variables input box will 
      be updated with the first predictor in the model and the result of the test will be displayed. 
      If you want to select more variables for the test, just click on the variables input box and you 
      can select other predictors used in the model. If you want to use the fitted values of the model 
      instead of the predictors, select true in the fitted values drop down box and click on submit. 
      If you want to use all the predictors in the model for the test, select true in the RHS drop 
      down box. The output for the test includes the null and alternate hypothesis, the values used 
      for the test including fitted values of the model or the predictors in the model, the chi square 
      statistic, the degrees of freedom and the p value. Perform the test on different models and 
      examine the output to detect non constant variance. Reach out to the mentor or the support team 
      if you face any issues.",
      easyClose = TRUE
    ))
})

# collinearity diagnostics
observeEvent(input$cdiaglink1, {
    showModal(modalDialog(
      title = "Collinearity Diagnostics",
      "Perform collinearity diagnostics. If you have specified a model in the regression tab and 
      would like to use the same model, check the use previous model check box and click submit. 
      If you want to build a new model, specify the model formula in the text input box and click 
      submit. The output includes tolerance, variance inflation factor, eigen values and condition 
      indices. Perform collinearity diagnostics on different models and examine the output. Reach 
      out to the mentor or the support team if you face any issues.",
      easyClose = TRUE
    ))
})

# cook's d bar plot
observeEvent(input$cdbplink1, {
    showModal(modalDialog(
      title = "Cook's D Bar Plot",
      "Create a bar plot of cook's distance after fitting a regression model to detect observations 
      that strongly influence fitted values of the model. If you have specified a model in the 
      regression tab and would like to use the same model, check the use previous model check box. 
      If you want to build a new model, specify the model formula in the text input box and click 
      submit. Scroll down to view the plot. At the top right of the plot, you can see the threshold 
      for marking an observation as an influential observation. The red lines indicate observations 
      that can strongly influence the fitted values of the model. Below the plot you can see the 
      observations which have been marked as influential observations. Generate and examine the plot 
      for different models. Reach out to the mentor or the support team if you face any issues.",
      easyClose = TRUE
    ))
})

# cook's d chart
observeEvent(input$cdclink1, {
    showModal(modalDialog(
      title = "Cook's D Chart",
      "Create a chart of cook's distance after fitting a regression model to detect observations that 
      strongly influence fitted values of the model. If you have specified a model in the regression 
      tab and would like to use the same model, check the use previous model check box. If you want 
      to build a new model, specify the model formula in the text input box and click submit. Scroll 
      down to view the plot. At the top right of the plot, you can see the threshold for marking an 
      observation as an influential observation. The red lines indicates the threshold and observations 
      above it have been marked with row numbers to identify them. Below the plot you can see the 
      observations which have been marked as influential observations. Generate and examine the plot 
      for different models. Reach out to the mentor or the support team if you face any issues.",
      easyClose = TRUE
    ))
})

# dfbetas panel
observeEvent(input$dfblink1, {
    showModal(modalDialog(
      title = "DFBETAs Panel",
      "Create a panel of plots of DFBETAs after fitting a regression model to detect influential 
      observations. If you have specified a model in the regression tab and would like to use the 
      same model, check the use previous model check box. If you want to build a new model, specify 
      the model formula in the text input box and click submit. Scroll down to view the plots. Plots 
      are generated for all the predictors and the intercept. At the top right of the plot, you can 
      see the threshold for marking an observation as an influential observation. The red lines 
      indicates the threshold and observations above or below it have been marked with row numbers 
      to identify them. Below the plot you can see the observations which have been marked as 
      influential observations. Generate and examine the plots for different models. Reach out to 
      the mentor or the support team if you face any issues.",
      easyClose = TRUE
    ))
})

# dffits 
observeEvent(input$dfitslink1, {
    showModal(modalDialog(
      title = "DFFITs Plot",
      "Create a DFFITs plot after fitting a regression model to detect influential observations. If 
      you have specified a model in the regression tab and would like to use the same model, check 
      the use previous model check box. If you want to build a new model, specify the model formula 
      in the text input box and click submit. Scroll down to view the plot. At the top right of the 
      plot, you can see the threshold for marking an observation as an influential observation. The 
      red lines indicates the threshold and observations above and below it have been marked with row 
      numbers to identify them. Below the plot you can see the observations which have been marked as 
      influential observations. Generate and examine the plot for different models. Reach out to the 
      mentor or the support team if you face any issues.",
      easyClose = TRUE
    ))
})

# studentized residual plot
observeEvent(input$srplot1, {
    showModal(modalDialog(
      title = "Studentized Residual Plot",
      "Studentized residual plot after fitting a regression model to detect outliers. If you have 
      specified a model in the regression tab and would like to use the same model, check the use 
      previous model check box. If you want to build a new model, specify the model formula in the 
      text input box and click submit. Scroll down to view the plot. At the top right of the plot, 
      you can see the threshold for marking an observation as an outlier. The red lines indicates 
      the threshold and observations above and below it have been marked with row numbers to identify 
      them. Below the plot you can see the observations which have been marked as outliers. Generate 
      and examine the plot for different models. Reach out to the mentor or the support team if you 
      face any issues.",
      easyClose = TRUE
    ))
})

# standardized residual chart
observeEvent(input$srchart1, {
    showModal(modalDialog(
      title = "Standardized Residual Chart",
      "Create a standardized residual chart after fitting a regression model to detect outliers. If 
      you have specified a model in the regression tab and would like to use the same model, check 
      the use previous model check box. If you want to build a new model, specify the model formula 
      in the text input box and click submit. Scroll down to view the plot. At the top right of the 
      plot, you can see the threshold for marking an observation as an outlier. The red lines 
      indicates the threshold and observations above and below it have been marked with row numbers 
      to identify them. Below the plot you can see the observations which have been marked as outliers. 
      Generate and examine the plot for different models. Reach out to the mentor or the support team 
      if you face any issues.",
      easyClose = TRUE
    ))
})

# studentized residuals vs leverage
observeEvent(input$srvslev1, {
    showModal(modalDialog(
      title = "Studentized Residuals vs Leverage",
      "Create a studentized residual versus leverage plot after fitting a regression model to detect 
      influential observations. If you have specified a model in the regression tab and would like to 
      use the same model, check the use previous model check box. If you want to build a new model, 
      specify the model formula in the text input box and click submit. Scroll down to view the plot. 
      At the top right of the plot, you can see the threshold for marking an observation as an outlier. 
      The merrown lines indicates the threshold and observations above, below and outside it have been 
      marked with row numbers to identify them as outliers, observations with leverage or both. Below 
      the plot you can see the observations which have been marked as outliers, leverage or both. 
      Generate and examine the plot for different models. Reach out to the mentor or the support team 
      if you face any issues. ",
      easyClose = TRUE
    ))
})

# deleted studentized residuals vs fitted values plot
observeEvent(input$dsrvsplink1, {
    showModal(modalDialog(
      title = "Deleted Studentized Residuals vs Fitted Values",
      "Create a deleted studentized residual versus fitted values plot after fitting a regression 
      model to detect outliers. If you have specified a model in the regression tab and would like 
      to use the same model, check the use previous model check box. If you want to build a new model, 
      specify the model formula in the text input box and click submit. Scroll down to view the plot. 
      At the top right of the plot, you can see the threshold for marking an observation as an outlier. 
      The red lines indicates the threshold and observations above and below it have been marked with 
      row numbers to identify them as outliers. Below the plot you can see the observations which have 
      been marked as outliers. Generate and examine the plot for different models. Reach out to the 
      mentor or the support team if you face any issues.",
      easyClose = TRUE
    ))
})

# hadi plot
observeEvent(input$hadiplink1, {
    showModal(modalDialog(
      title = "Hadi Plot",
      "Create a plot based on hadi's influence measure to detect outliers after fitting a regression 
      model. If you have specified a model in the regression tab and would like to use the same model, 
      check the use previous model check box. If you want to build a new model, specify the model 
      formula in the text input box and click submit. Scroll down to view the plot. Generate and 
      examine the plot for different models. Reach out to the mentor or the support team if you face 
      any issues.",
      easyClose = TRUE
    ))
})

# potential residual plot
observeEvent(input$potreslink1, {
    showModal(modalDialog(
      title = "Potential Residual Plot",
      "Create a potential residual plot to detect outliers after fitting a regression model. If you 
      have specified a model in the regression tab and would like to use the same model, check the 
      use previous model check box. If you want to build a new model, specify the model formula in 
      the text input box and click submit. Scroll down to view the plot. Generate and examine the 
      plot for different models. Reach out to the mentor or the support team if you face any issues.",
      easyClose = TRUE
    ))
})

# residual fit spread plot
observeEvent(input$rfslink1, {
    showModal(modalDialog(
      title = "Residual Fit Spread Plot",
      "Create a residual fit spread plot to detect non-linearity, influential observations and 
      outliers after fitting a regression model. If you have specified a model in the regression tab 
      and would like to use the same model, check the use previous model check box. If you want to 
      build a new model, specify the model formula in the text input box and click submit. Scroll 
      down to view the plot. Generate and examine the plot for different models. Reach out to the 
      mentor or the support team if you face any issues.",
      easyClose = TRUE
    ))
})

# part & partial correlations
observeEvent(input$corlink1, {
    showModal(modalDialog(
      title = "Part & Partial Correlations",
      "Generate part and partial correlations after fitting a regression model. If you have specified 
      a model in the regression tab and would like to use the same model, check the use previous model 
      check box. If you want to build a new model, specify the model formula in the text input box and 
      click submit. Scroll down to view the complete output. It includes zero order, part and partial 
      correlations. Generate part and partial correlations for different models and examine the output. 
      Reach out to the mentor or the support team if you face any issues.",
      easyClose = TRUE
    ))
})

# observed vs fitted values plot
observeEvent(input$ovsplink1, {
    showModal(modalDialog(
      title = "Observed vs Fitted Values Plot",
      "Create a observed versus fitted plot to assess fit of the model. If you have specified a 
      model in the regression tab and would like to use the same model, check the use previous 
      model check box. If you want to build a new model, specify the model formula in the text 
      input box and click submit. Scroll down to view the plot. The fitted values are represented 
      by the x axis and the observed values are represented by the y axis. Generate and examine the 
      plot for different models to assess their fit. Reach out to the mentor or the support team if 
      you face any issues.",
      easyClose = TRUE
    ))
})

# lack of fit f test
observeEvent(input$lfitlink1, {
    showModal(modalDialog(
      title = "Lack of Fit F Test",
      "Perform a lack of fit f test after fitting a simple regression model. It is useful to assess 
      how much of the error in prediction is due to lack of model fit. If you have specified a model 
      in the regression tab and would like to use the same model, check the use previous model check 
      box. If you want to build a new model, specify the model formula in the text input box and 
      click submit. Scroll down to view the complete output. It includes response and predictor 
      variables. The resiudal is split into lack of fit and pure error. The degrees of freedom, 
      sum of squares, mean square, f statistic and p value are provided for lack of fit. Reach out 
      to the mentor or the support team if you face any issues.",
      easyClose = TRUE
    ))
})

# diagnostics panel
observeEvent(input$dpanelink1, {
    showModal(modalDialog(
      title = "Diagnostics Panel",
      "Create a panel of plots for regression diagnostics. If you have specified a model in the 
      regression tab and would like to use the same model, check the use previous model check box. 
      If you want to build a new model, specify the model formula in the text input box and click 
      submit. Scroll down to view the plots. Generate and examine the plot for different models. 
      Reach out to the mentor or the support team if you face any issues.",
      easyClose = TRUE
    ))
})

# added variable plot
observeEvent(input$advarlink1, {
    showModal(modalDialog(
      title = "Added Variable Plot",
      "Create a added variable plot after fitting a regression model. Added variable plot provides 
      information about the marginal importance of a predictor variable, given the other predictor 
      variables already in the model. It shows the marginal importance of the variable in reducing 
      the residual variability. If you have specified a model in the regression tab and would like 
      to use the same model, check the use previous model check box. If you want to build a new model, 
      specify the model formula in the text input box and click submit. Scroll down to view the plot. 
      A strong linear relationship in the added variable plot indicates the increased importance of 
      the contribution of that particular predictor to the model already containing the other 
      predictors. Generate and examine the plot for different models. Reach out to the mentor or the 
      support team if you face any issues. ",
      easyClose = TRUE
    ))
})

# residual plus component plot
observeEvent(input$regcprp1, {
    showModal(modalDialog(
      title = "Residual Plus Component Plot",
      "Create a residual plus component plot after fitting a regression model. The residual plus 
      component plot indicates whether any non-linearity is present in the relationship between 
      response and predictor variables and can suggest possible transformations for linearizing 
      the data. If you have specified a model in the regression tab and would like to use the same 
      model, check the use previous model check box. If you want to build a new model, specify the 
      model formula in the text input box and click submit. Scroll down to view the plot. Generate 
      and examine the plot for different models. Reach out to the mentor or the support team if you 
      face any issues.",
      easyClose = TRUE
    ))
})


# residual vs regressor plot
observeEvent(input$rvsrlink1, {
    showModal(modalDialog(
      title = "Residual vs Regressor Plot",
      "Create a residual versus regressor plot after fitting a regression model. It is a graph to 
      determine whether we should add a new predictor to the model already containing other predictors. 
      The residuals from the model is regressed on the new predictor and if the plot shows non random 
      pattern, you should consider adding the new predictor to the model. If you have specified a 
      model in the regression tab and would like to use the same model, check the use previous model 
      check box. If you want to build a new model, specify the model formula in the text input box. 
      Next select a variable which you plan to add to the existing model from the select variable 
      drop down box and click on submit. Scroll down to view the plot. Generate and examine the plot 
      for different models and potential predictors. Reach out to the mentor or the support team if 
      you face any issues.",
      easyClose = TRUE
    ))
})