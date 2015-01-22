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
