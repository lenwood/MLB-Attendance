cleaner <- function(df) {
  # remove 'boxscore'
  df$Var.6 <- NULL

  # remove irrelevant columns
  # R, RA, Inn, Win, Loss, Save & Time
  df$R <- NULL
  df$RA <- NULL
  df$Inn <- NULL
  df$Win <- NULL
  df$Loss <- NULL
  df$Save <- NULL
  df$Time <- NULL

  # remove away games
  df <- df[which(df[,6] != "@"),]
  df[,6] <- NULL

  # remove extra rows of headers
  df <- df[which(df$Rk != "Rk"),]
  df$Rk <- NULL

  # remove commas from Attendance
  att <- df$Attendance
  clean <- lapply(att, function(x) gsub(",", "", x, fixed=TRUE))
  df$Attendance <- clean
  df$Attendance <- as.numeric(df$Attendance)

  # convert GB to numeric data
  index <- grep("Tied", df$GB)
  tied <- df[index,]
  others <- df[-index,]
  index <- grep("up", others$GB)
  up <- others[index,]
  down <- others[-index,]
  tied$GB <- 0
  up$GB <- as.numeric(gsub("up", "", up$GB))
  down$GB <- -1 * as.numeric(down$GB)
  df <- rbind(tied, up)
  df <- rbind(df, down)
  df$GB[is.na(df$GB)] <- 0
  
  # convert Streak to numeric data
  df$Streak <- ifelse(substring(df$Streak, 1, 1) == "+", nchar(df$Streak), -1*nchar(df$Streak))

  # clean up the Date
  strDate <- df$Date
  temp <- lapply(strDate, function(x) gsub(" (1)", "", x, fixed=TRUE))
  clean <- lapply(temp, function(x) gsub(" (2)", "", x, fixed=TRUE))
  df$Date <- clean
  df$tempDate <- paste(df$Date, df$Year, sep=" ")
  df$Date <- as.Date(df$tempDate, "%A, %b %d %Y")
  df$Day <- weekdays(df$Date, abbreviate=TRUE)
  df$Month <- months(df$Date, abbreviate=TRUE)
  df$tempDate <- NULL
  
  # clean W/L
  WL <- df$'W/L'
  cleanWL <- lapply(WL, function(x) gsub("-wo", "", x, fixed=TRUE))
  cleanWL2 <- lapply(cleanWL, function(x) gsub(" &H", "", x, fixed=TRUE))
  cleanWL3 <- lapply(cleanWL2, function(x) gsub(" &V", "", x, fixed=TRUE))
  df$Outcome <- unlist(cleanWL3)
  df$'W/L' <- NULL

  # clean W-L
  WLtemp <- strsplit(df$'W-L', "-")
  WLcalc <- lapply(WLtemp, function(x) round(as.numeric(x[1]) / (as.numeric(x[1]) + as.numeric(x[2])), digits=2))
  df$WinLoss <- unlist(WLcalc)
  df$'W-L' <- NULL

  df <- df[c(3, 1, 4, 14, 15, 2, 5, 16, 17, 6, 7, 8, 10, 11, 12, 13, 9)]
  colnames(df)[1] <- "Game"
  colnames(df)[11] <- "GamesBack"
  colnames(df)[12] <- "DayNight"

  # convert variables to factors
  df$Day <- as.factor(df$Day)
  df$Month <- as.factor(df$Month)
  df$Team <- as.factor(df$Team)
  df$Opp <- as.factor(df$Opp)
  df$Outcome <- as.factor(df$Outcome)
  df$State <- as.factor(df$State)
  df$Stadium <- as.factor(df$Stadium)

  df <- df[order(df$Year, df$Team, df$Game),]

  rownames(df) <- NULL
  
  df
}
