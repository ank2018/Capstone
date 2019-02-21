#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

# Load RData for bigram, trigram and quadgram 
brd <- readRDS("bigram.RData")
trd <- readRDS("trigram.RData") 
qrd <- readRDS("quadgram.RData")


names(brd)[names(brd) == 'word1'] <- 'word1'
names(brd)[names(brd) == 'word2'] <- 'word2'

names(trd)[names(trd) == 'word1'] <- 'word1' 
names(trd)[names(trd) == 'word2'] <- 'word2' 
names(trd)[names(trd) == 'word3'] <- 'word3'

names(qrd)[names(qrd) == 'word1'] <- 'word1' 
names(qrd)[names(qrd) == 'word2'] <- 'word2' 
names(qrd)[names(qrd) == 'word3'] <- 'word3'
names(qrd)[names(qrd) == 'word4'] <- 'word4'


predictWord <- function(getword) {
  word_add <- tolower(getword)
  word_add <- removePunctuation(word_add)
  word_add <- removeNumbers(word_add)
  word_add <- stripWhitespace(word_add)
  
  
  getword <- strsplit(word_add, " ")[[1]]
  wcnt <- length(getword)
  
  if (wcnt == 1) {getword <- as.character(tail(getword,1)); 
  if (identical(character(0),as.character(head(brd[brd$word1 == getword[1], 2], 1)))) {
    outputmsg <-"NA" 
  }
  else {
    as.character(head(brd[brd$word1 == getword[1],2], 1))
  }
  }
  
  else if (wcnt == 2) {getword <- as.character(tail(getword,2)); 
  if (identical(character(0),as.character(head(trd[trd$word1 == getword[1]
                                                   & trd$word2 == getword[2], 3], 1)))) {
    as.character(predictWord(getword[2]))
  }
  else {
    as.character(head(trd[trd$word1 == getword[1]
                          & trd$word2 == getword[2], 3], 1))
  }
  }
  
  else if (wcnt >= 3) {getword <- as.character(tail(getword,3));
  if (identical(character(0),as.character(head(qrd[qrd$word1 == getword[1]
                                                   & qrd$word2 == getword[2]
                                                   & qrd$word3 == getword[3], 4], 1)))) {
    as.character(predictWord(paste(getword[2],getword[3],sep=" ")))
  }
  else {
    as.character(head(qrd[qrd$word1 == getword[1] 
                          & qrd$word2 == getword[2]
                          & qrd$word3 == getword[3], 4], 1))
  }       
  }
}


shinyServer(function(input, output) {
  output$wordprediction <- renderPrint({
    result <- predictWord(input$inputText)
    result
  });
}
)
