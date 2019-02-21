Data Science Capstone Final Project
========================================================
author: AD
date: Feb 2019
autosize: true

Introduction
========================================================
Coursera Data Science Capstone Project designed to predict the next word, using natural language processing.This is a collaboration between professors at John Hopkins University and SwiftKey.
The goal of this exercise is to create a product to highlight the prediction algorithm that you have built and to provide an interface that can be accessed by others. 
This uses natural language processing to predict the next word.
There are two parts.
- Create a Shiny application and deploy it on Rstudio's servers.Shiny app that takes as input a phrase (multiple words) in a text box input and outputs a prediction of the next word.
- Use Slidify or Rstudio Presenter to prepare a reproducible pitch presentation about the application.


Process
========================================================
The following steps were considered prior to building the app.
- Exploratory Data Analysis.
- Getting and Cleaning Data. 
- Understanding frequencies and word pairs using n-grams.
- Tokenization.
- Sampling. This sample data was then cleaned and converted to lowercases,punctuations,whitespacs,numbers were removed.
- Onegram, Bigram, Trigram and Quadgram matrices were created. The data frames were then used to predict next word.
- Milestone Report.

Shiny Application
========================================================
- The application user interface accepts an input text where you can enter a word or multiple words. 
- Based on the prediction algorithm using bigram, trigram, quadgram for the sample file, the next word is displayed.

Additional Information
========================================================
- Shiny application for this assignment has the source data derived from a corpus called HC Corpora.
- The data contains three different files for Blog, News and Twitter.
- Report url is as follows: http://rpubs.com/Ank18/469534
- The application url is as follows: https://ad2019.shinyapps.io/CapstoneShinyApp/
- Github url is as follows: https://github.com/ank2018/Capstone.git



