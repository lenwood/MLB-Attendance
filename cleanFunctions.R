# remove boxscore
removeBoxscore <- function(df) {
  df[,4] <- NULL
  df
}

# remove extra headers
removeColNames <- function(df) {
  newDF <- df[which(df$Rk != "Rk"),]
}

# remove commas from Attendance
removeCommas <- function(df) {
  att <- df$Attendance
  clean <- lapply(att, function(x) gsub(",", "", x, fixed=TRUE))
  df$Attendance <- clean
  df$Attendance <- as.numeric(df$Attendance)
  df
}

# clean up the date
cleanDate <- function(df) {
  strDate <- df$Date
  temp <- lapply(strDate, function(x) gsub(" (1)", "", x, fixed=TRUE))
  clean <- lapply(temp, function(x) gsub(" (2)", "", x, fixed=TRUE))
  df$Date <- clean
  df$tempDate <- paste(df$Date, df$year, sep=" ")
  df$Date <- as.Date(df$tempDate, "%A, %b %d %Y")
  df$Day <- weekdays(df$Date, abbreviate=TRUE)
  df$Month <- months(df$Date, abbreviate=TRUE)
  df$tempDate <- NULL
  df
}
