library(dplyr)
library(openxlsx)

Main <- function(){
  mo_owners <- read.xlsx("mo_owners_m1894.xlsx")
  mo_owners <- Clean(mo_owners)
  write.csv(mo_owners, "mo_owners_m1894.csv")
}

LocateMissing <- function(mo_owners){
  pg_number <- 1
  row_on_page <- 0
  
  for(x in 1:nrow(mo_owners)){
    if(mo_owners[x, "Slave.Owner"] == "Slave Owner"){
      ifelse(pg_number == 1, goal <- 15, goal <- 38)
      if(row_on_page != goal){
        print(sprintf("%i page is missing %i rows", pg_number, goal - row_on_page))
      }
      pg_number <- pg_number + 1
      row_on_page <- 0
    } else{
      row_on_page <- row_on_page + 1
    }
  }
}

Clean <- function(mo_troops){
  mo_owners           <- mo_owners %>% filter(Slave.Owner != "Slave Owner")
  colnames(mo_owners) <- c("slave_owner", "owner_county", "owner_state", "recruit_last",
                           "recruit_first", "age", "birth_state", "county_birth", "roll",
                           "frame", "recruiting_station")
  return(mo_owners)
}

Main()
