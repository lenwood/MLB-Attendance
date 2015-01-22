library("XML")

fetch <- function(team, year) {
  url <- paste0("http://www.baseball-reference.com/teams/", team, "/", year, "-schedule-scores.shtml")
  raw <- readHTMLTable(url, stringsAsFactors = FALSE)
  if (ncol(raw[[6]]) == 21) {
    data <- raw[[6]]
  } else {
    data <- raw[[7]]
  }
  data$year <- year
  data
}

Orioles <- rbind(fetch("BAL", 1990), fetch("BAL", 1991), fetch("BAL", 1992), fetch("BAL", 1993), fetch("BAL", 1994), 
              fetch("BAL", 1995), fetch("BAL", 1996), fetch("BAL", 1997), fetch("BAL", 1998), fetch("BAL", 1999), 
              fetch("BAL", 2000), fetch("BAL", 2001), fetch("BAL", 2002), fetch("BAL", 2003), fetch("BAL", 2004), 
              fetch("BAL", 2005), fetch("BAL", 2006), fetch("BAL", 2007), fetch("BAL", 2008), fetch("BAL", 2009), 
              fetch("BAL", 2010), fetch("BAL", 2011), fetch("BAL", 2012), fetch("BAL", 2013), fetch("BAL", 2014))
save(Orioles, file="Orioles.rda")

Yankees <- rbind(fetch("NYY", 1990), fetch("NYY", 1991), fetch("NYY", 1992), fetch("NYY", 1993), fetch("NYY", 1994), 
              fetch("NYY", 1995), fetch("NYY", 1996), fetch("NYY", 1997), fetch("NYY", 1998), fetch("NYY", 1999), 
              fetch("NYY", 2000), fetch("NYY", 2001), fetch("NYY", 2002), fetch("NYY", 2003), fetch("NYY", 2004), 
              fetch("NYY", 2005), fetch("NYY", 2006), fetch("NYY", 2007), fetch("NYY", 2008), fetch("NYY", 2009), 
              fetch("NYY", 2010), fetch("NYY", 2011), fetch("NYY", 2012), fetch("NYY", 2013), fetch("NYY", 2014))
save(Yankees, file="Yankees.rda")

BlueJays <- rbind(fetch("TOR", 1990), fetch("TOR", 1991), fetch("TOR", 1992), fetch("TOR", 1993), fetch("TOR", 1994), 
              fetch("TOR", 1995), fetch("TOR", 1996), fetch("TOR", 1997), fetch("TOR", 1998), fetch("TOR", 1999), 
              fetch("TOR", 2000), fetch("TOR", 2001), fetch("TOR", 2002), fetch("TOR", 2003), fetch("TOR", 2004), 
              fetch("TOR", 2005), fetch("TOR", 2006), fetch("TOR", 2007), fetch("TOR", 2008), fetch("TOR", 2009), 
              fetch("TOR", 2010), fetch("TOR", 2011), fetch("TOR", 2012), fetch("TOR", 2013), fetch("TOR", 2014))
save(BlueJays, file="BlueJays.rda")

Rays <- rbind(fetch("TBD", 1998), fetch("TBD", 1999), fetch("TBD", 2000), fetch("TBD", 2001), fetch("TBD", 2002), fetch("TBD", 2003), fetch("TBD", 2004), 
              fetch("TBD", 2005), fetch("TBD", 2006), fetch("TBD", 2007), fetch("TBR", 2008), fetch("TBR", 2009), 
              fetch("TBR", 2010), fetch("TBR", 2011), fetch("TBR", 2012), fetch("TBR", 2013), fetch("TBR", 2014))
save(Rays, file="Rays.rda")

RedSox <- rbind(fetch("BOS", 1990), fetch("BOS", 1991), fetch("BOS", 1992), fetch("BOS", 1993), fetch("BOS", 1994), 
              fetch("BOS", 1995), fetch("BOS", 1996), fetch("BOS", 1997), fetch("BOS", 1998), fetch("BOS", 1999), 
              fetch("BOS", 2000), fetch("BOS", 2001), fetch("BOS", 2002), fetch("BOS", 2003), fetch("BOS", 2004), 
              fetch("BOS", 2005), fetch("BOS", 2006), fetch("BOS", 2007), fetch("BOS", 2008), fetch("BOS", 2009), 
              fetch("BOS", 2010), fetch("BOS", 2011), fetch("BOS", 2012), fetch("BOS", 2013), fetch("BOS", 2014))
save(RedSox, file="RedSox.rda")

Tigers <- rbind(fetch("DET", 1990), fetch("DET", 1991), fetch("DET", 1992), fetch("DET", 1993), fetch("DET", 1994), 
                fetch("DET", 1995), fetch("DET", 1996), fetch("DET", 1997), fetch("DET", 1998), fetch("DET", 1999), 
                fetch("DET", 2000), fetch("DET", 2001), fetch("DET", 2002), fetch("DET", 2003), fetch("DET", 2004), 
                fetch("DET", 2005), fetch("DET", 2006), fetch("DET", 2007), fetch("DET", 2008), fetch("DET", 2009), 
                fetch("DET", 2010), fetch("DET", 2011), fetch("DET", 2012), fetch("DET", 2013), fetch("DET", 2014))
save(Tigers, file="Tigers.rda")

Royals <- rbind(fetch("KCR", 1990), fetch("KCR", 1991), fetch("KCR", 1992), fetch("KCR", 1993), fetch("KCR", 1994), 
            fetch("KCR", 1995), fetch("KCR", 1996), fetch("KCR", 1997), fetch("KCR", 1998), fetch("KCR", 1999), 
            fetch("KCR", 2000), fetch("KCR", 2001), fetch("KCR", 2002), fetch("KCR", 2003), fetch("KCR", 2004), 
            fetch("KCR", 2005), fetch("KCR", 2006), fetch("KCR", 2007), fetch("KCR", 2008), fetch("KCR", 2009), 
            fetch("KCR", 2010), fetch("KCR", 2011), fetch("KCR", 2012), fetch("KCR", 2013), fetch("KCR", 2014))
save(Royals, file="Royals.rda")

Indians <- rbind(fetch("CLE", 1990), fetch("CLE", 1991), fetch("CLE", 1992), fetch("CLE", 1993), fetch("CLE", 1994), 
             fetch("CLE", 1995), fetch("CLE", 1996), fetch("CLE", 1997), fetch("CLE", 1998), fetch("CLE", 1999), 
             fetch("CLE", 2000), fetch("CLE", 2001), fetch("CLE", 2002), fetch("CLE", 2003), fetch("CLE", 2004), 
             fetch("CLE", 2005), fetch("CLE", 2006), fetch("CLE", 2007), fetch("CLE", 2008), fetch("CLE", 2009), 
             fetch("CLE", 2010), fetch("CLE", 2011), fetch("CLE", 2012), fetch("CLE", 2013), fetch("CLE", 2014))
save(Indians, file="Indians.rda")

WhiteSox <- rbind(fetch("CHW", 1990), fetch("CHW", 1991), fetch("CHW", 1992), fetch("CHW", 1993), fetch("CHW", 1994), 
             fetch("CHW", 1995), fetch("CHW", 1996), fetch("CHW", 1997), fetch("CHW", 1998), fetch("CHW", 1999), 
             fetch("CHW", 2000), fetch("CHW", 2001), fetch("CHW", 2002), fetch("CHW", 2003), fetch("CHW", 2004), 
             fetch("CHW", 2005), fetch("CHW", 2006), fetch("CHW", 2007), fetch("CHW", 2008), fetch("CHW", 2009), 
             fetch("CHW", 2010), fetch("CHW", 2011), fetch("CHW", 2012), fetch("CHW", 2013), fetch("CHW", 2014))
save(WhiteSox, file="WhiteSox.rda")

Twins <- rbind(fetch("MIN", 1990), fetch("MIN", 1991), fetch("MIN", 1992), fetch("MIN", 1993), fetch("MIN", 1994), 
             fetch("MIN", 1995), fetch("MIN", 1996), fetch("MIN", 1997), fetch("MIN", 1998), fetch("MIN", 1999), 
             fetch("MIN", 2000), fetch("MIN", 2001), fetch("MIN", 2002), fetch("MIN", 2003), fetch("MIN", 2004), 
             fetch("MIN", 2005), fetch("MIN", 2006), fetch("MIN", 2007), fetch("MIN", 2008), fetch("MIN", 2009), 
             fetch("MIN", 2010), fetch("MIN", 2011), fetch("MIN", 2012), fetch("MIN", 2013), fetch("MIN", 2014))
save(Twins, file="Twins.rda")

Angels <- rbind(fetch("CAL", 1990), fetch("CAL", 1991), fetch("CAL", 1992), fetch("CAL", 1993), fetch("CAL", 1994), 
                fetch("CAL", 1995), fetch("CAL", 1996), fetch("ANA", 1997), fetch("ANA", 1998), fetch("ANA", 1999), 
                fetch("ANA", 2000), fetch("ANA", 2001), fetch("ANA", 2002), fetch("ANA", 2003), fetch("ANA", 2004), 
                fetch("LAA", 2005), fetch("LAA", 2006), fetch("LAA", 2007), fetch("LAA", 2008), fetch("LAA", 2009), 
                fetch("LAA", 2010), fetch("LAA", 2011), fetch("LAA", 2012), fetch("LAA", 2013), fetch("LAA", 2014))
save(Angels, file="Angels.rda")

Athletics <- rbind(fetch("OAK", 1990), fetch("OAK", 1991), fetch("OAK", 1992), fetch("OAK", 1993), fetch("OAK", 1994), 
             fetch("OAK", 1995), fetch("OAK", 1996), fetch("OAK", 1997), fetch("OAK", 1998), fetch("OAK", 1999), 
             fetch("OAK", 2000), fetch("OAK", 2001), fetch("OAK", 2002), fetch("OAK", 2003), fetch("OAK", 2004), 
             fetch("OAK", 2005), fetch("OAK", 2006), fetch("OAK", 2007), fetch("OAK", 2008), fetch("OAK", 2009), 
             fetch("OAK", 2010), fetch("OAK", 2011), fetch("OAK", 2012), fetch("OAK", 2013), fetch("OAK", 2014))
save(Athletics, file="Athletics.rda")

Mariners <- rbind(fetch("SEA", 1990), fetch("SEA", 1991), fetch("SEA", 1992), fetch("SEA", 1993), fetch("SEA", 1994), 
             fetch("SEA", 1995), fetch("SEA", 1996), fetch("SEA", 1997), fetch("SEA", 1998), fetch("SEA", 1999), 
             fetch("SEA", 2000), fetch("SEA", 2001), fetch("SEA", 2002), fetch("SEA", 2003), fetch("SEA", 2004), 
             fetch("SEA", 2005), fetch("SEA", 2006), fetch("SEA", 2007), fetch("SEA", 2008), fetch("SEA", 2009), 
             fetch("SEA", 2010), fetch("SEA", 2011), fetch("SEA", 2012), fetch("SEA", 2013), fetch("SEA", 2014))
save(Mariners, file="Mariners.rda")

Astros <- rbind(fetch("HOU", 1990), fetch("HOU", 1991), fetch("HOU", 1992), fetch("HOU", 1993), fetch("HOU", 1994), 
             fetch("HOU", 1995), fetch("HOU", 1996), fetch("HOU", 1997), fetch("HOU", 1998), fetch("HOU", 1999), 
             fetch("HOU", 2000), fetch("HOU", 2001), fetch("HOU", 2002), fetch("HOU", 2003), fetch("HOU", 2004), 
             fetch("HOU", 2005), fetch("HOU", 2006), fetch("HOU", 2007), fetch("HOU", 2008), fetch("HOU", 2009), 
             fetch("HOU", 2010), fetch("HOU", 2011), fetch("HOU", 2012), fetch("HOU", 2013), fetch("HOU", 2014))
save(Astros, file="Astros.rda")

Rangers <- rbind(fetch("TEX", 1990), fetch("TEX", 1991), fetch("TEX", 1992), fetch("TEX", 1993), fetch("TEX", 1994), 
             fetch("TEX", 1995), fetch("TEX", 1996), fetch("TEX", 1997), fetch("TEX", 1998), fetch("TEX", 1999), 
             fetch("TEX", 2000), fetch("TEX", 2001), fetch("TEX", 2002), fetch("TEX", 2003), fetch("TEX", 2004), 
             fetch("TEX", 2005), fetch("TEX", 2006), fetch("TEX", 2007), fetch("TEX", 2008), fetch("TEX", 2009), 
             fetch("TEX", 2010), fetch("TEX", 2011), fetch("TEX", 2012), fetch("TEX", 2013), fetch("TEX", 2014))
save(Rangers, file="Rangers.rda")

Nationals <- rbind(fetch("MON", 1990), fetch("MON", 1991), fetch("MON", 1992), fetch("MON", 1993), fetch("MON", 1994), 
             fetch("MON", 1995), fetch("MON", 1996), fetch("MON", 1997), fetch("MON", 1998), fetch("MON", 1999), 
             fetch("MON", 2000), fetch("MON", 2001), fetch("MON", 2002), fetch("MON", 2003), fetch("MON", 2004), 
             fetch("WSN", 2005), fetch("WSN", 2006), fetch("WSN", 2007), fetch("WSN", 2008), fetch("WSN", 2009), 
             fetch("WSN", 2010), fetch("WSN", 2011), fetch("WSN", 2012), fetch("WSN", 2013), fetch("WSN", 2014))
save(Nationals, file="Nationals.rda")

Braves <- rbind(fetch("ATL", 1990), fetch("ATL", 1991), fetch("ATL", 1992), fetch("ATL", 1993), fetch("ATL", 1994), 
             fetch("ATL", 1995), fetch("ATL", 1996), fetch("ATL", 1997), fetch("ATL", 1998), fetch("ATL", 1999), 
             fetch("ATL", 2000), fetch("ATL", 2001), fetch("ATL", 2002), fetch("ATL", 2003), fetch("ATL", 2004), 
             fetch("ATL", 2005), fetch("ATL", 2006), fetch("ATL", 2007), fetch("ATL", 2008), fetch("ATL", 2009), 
             fetch("ATL", 2010), fetch("ATL", 2011), fetch("ATL", 2012), fetch("ATL", 2013), fetch("ATL", 2014))
save(Braves, file="Braves.rda")

Mets <- rbind(fetch("NYM", 1990), fetch("NYM", 1991), fetch("NYM", 1992), fetch("NYM", 1993), fetch("NYM", 1994), 
             fetch("NYM", 1995), fetch("NYM", 1996), fetch("NYM", 1997), fetch("NYM", 1998), fetch("NYM", 1999), 
             fetch("NYM", 2000), fetch("NYM", 2001), fetch("NYM", 2002), fetch("NYM", 2003), fetch("NYM", 2004), 
             fetch("NYM", 2005), fetch("NYM", 2006), fetch("NYM", 2007), fetch("NYM", 2008), fetch("NYM", 2009), 
             fetch("NYM", 2010), fetch("NYM", 2011), fetch("NYM", 2012), fetch("NYM", 2013), fetch("NYM", 2014))
save(Mets, file="Mets.rda")

Marlins <- rbind(fetch("FLA", 1993), fetch("FLA", 1994), 
             fetch("FLA", 1995), fetch("FLA", 1996), fetch("FLA", 1997), fetch("FLA", 1998), fetch("FLA", 1999), 
             fetch("FLA", 2000), fetch("FLA", 2001), fetch("FLA", 2002), fetch("FLA", 2003), fetch("FLA", 2004), 
             fetch("FLA", 2005), fetch("FLA", 2006), fetch("FLA", 2007), fetch("FLA", 2008), fetch("FLA", 2009), 
             fetch("FLA", 2010), fetch("FLA", 2011), fetch("MIA", 2012), fetch("MIA", 2013), fetch("MIA", 2014))
save(Marlins, file="Marlins.rda")

Phillies <- rbind(fetch("PHI", 1990), fetch("PHI", 1991), fetch("PHI", 1992), fetch("PHI", 1993), fetch("PHI", 1994), 
             fetch("PHI", 1995), fetch("PHI", 1996), fetch("PHI", 1997), fetch("PHI", 1998), fetch("PHI", 1999), 
             fetch("PHI", 2000), fetch("PHI", 2001), fetch("PHI", 2002), fetch("PHI", 2003), fetch("PHI", 2004), 
             fetch("PHI", 2005), fetch("PHI", 2006), fetch("PHI", 2007), fetch("PHI", 2008), fetch("PHI", 2009), 
             fetch("PHI", 2010), fetch("PHI", 2011), fetch("PHI", 2012), fetch("PHI", 2013), fetch("PHI", 2014))
save(Phillies, file="Phillies.rda")


Cardinals <- rbind(fetch("STL", 1990), fetch("STL", 1991), fetch("STL", 1992), fetch("STL", 1993), fetch("STL", 1994), 
             fetch("STL", 1995), fetch("STL", 1996), fetch("STL", 1997), fetch("STL", 1998), fetch("STL", 1999), 
             fetch("STL", 2000), fetch("STL", 2001), fetch("STL", 2002), fetch("STL", 2003), fetch("STL", 2004), 
             fetch("STL", 2005), fetch("STL", 2006), fetch("STL", 2007), fetch("STL", 2008), fetch("STL", 2009), 
             fetch("STL", 2010), fetch("STL", 2011), fetch("STL", 2012), fetch("STL", 2013), fetch("STL", 2014))
save(Cardinals, file="Cardinals.rda")

Pirates <- rbind(fetch("PIT", 1990), fetch("PIT", 1991), fetch("PIT", 1992), fetch("PIT", 1993), fetch("PIT", 1994), 
             fetch("PIT", 1995), fetch("PIT", 1996), fetch("PIT", 1997), fetch("PIT", 1998), fetch("PIT", 1999), 
             fetch("PIT", 2000), fetch("PIT", 2001), fetch("PIT", 2002), fetch("PIT", 2003), fetch("PIT", 2004), 
             fetch("PIT", 2005), fetch("PIT", 2006), fetch("PIT", 2007), fetch("PIT", 2008), fetch("PIT", 2009), 
             fetch("PIT", 2010), fetch("PIT", 2011), fetch("PIT", 2012), fetch("PIT", 2013), fetch("PIT", 2014))
save(Pirates, file="Pirates.rda")

Brewers <- rbind(fetch("MIL", 1990), fetch("MIL", 1991), fetch("MIL", 1992), fetch("MIL", 1993), fetch("MIL", 1994), 
             fetch("MIL", 1995), fetch("MIL", 1996), fetch("MIL", 1997), fetch("MIL", 1998), fetch("MIL", 1999), 
             fetch("MIL", 2000), fetch("MIL", 2001), fetch("MIL", 2002), fetch("MIL", 2003), fetch("MIL", 2004), 
             fetch("MIL", 2005), fetch("MIL", 2006), fetch("MIL", 2007), fetch("MIL", 2008), fetch("MIL", 2009), 
             fetch("MIL", 2010), fetch("MIL", 2011), fetch("MIL", 2012), fetch("MIL", 2013), fetch("MIL", 2014))
save(Brewers, file="Brewers.rda")

Reds <- rbind(fetch("CIN", 1990), fetch("CIN", 1991), fetch("CIN", 1992), fetch("CIN", 1993), fetch("CIN", 1994), 
             fetch("CIN", 1995), fetch("CIN", 1996), fetch("CIN", 1997), fetch("CIN", 1998), fetch("CIN", 1999), 
             fetch("CIN", 2000), fetch("CIN", 2001), fetch("CIN", 2002), fetch("CIN", 2003), fetch("CIN", 2004), 
             fetch("CIN", 2005), fetch("CIN", 2006), fetch("CIN", 2007), fetch("CIN", 2008), fetch("CIN", 2009), 
             fetch("CIN", 2010), fetch("CIN", 2011), fetch("CIN", 2012), fetch("CIN", 2013), fetch("CIN", 2014))
save(Reds, file="Reds.rda")

Cubs <- rbind(fetch("CHC", 1990), fetch("CHC", 1991), fetch("CHC", 1992), fetch("CHC", 1993), fetch("CHC", 1994), 
             fetch("CHC", 1995), fetch("CHC", 1996), fetch("CHC", 1997), fetch("CHC", 1998), fetch("CHC", 1999), 
             fetch("CHC", 2000), fetch("CHC", 2001), fetch("CHC", 2002), fetch("CHC", 2003), fetch("CHC", 2004), 
             fetch("CHC", 2005), fetch("CHC", 2006), fetch("CHC", 2007), fetch("CHC", 2008), fetch("CHC", 2009), 
             fetch("CHC", 2010), fetch("CHC", 2011), fetch("CHC", 2012), fetch("CHC", 2013), fetch("CHC", 2014))
save(Cubs, file="Cubs.rda")

Dodgers <- rbind(fetch("LAD", 1990), fetch("LAD", 1991), fetch("LAD", 1992), fetch("LAD", 1993), fetch("LAD", 1994), 
             fetch("LAD", 1995), fetch("LAD", 1996), fetch("LAD", 1997), fetch("LAD", 1998), fetch("LAD", 1999), 
             fetch("LAD", 2000), fetch("LAD", 2001), fetch("LAD", 2002), fetch("LAD", 2003), fetch("LAD", 2004), 
             fetch("LAD", 2005), fetch("LAD", 2006), fetch("LAD", 2007), fetch("LAD", 2008), fetch("LAD", 2009), 
             fetch("LAD", 2010), fetch("LAD", 2011), fetch("LAD", 2012), fetch("LAD", 2013), fetch("LAD", 2014))
save(Dodgers, file="Dodgers.rda")

Giants <- rbind(fetch("SFG", 1990), fetch("SFG", 1991), fetch("SFG", 1992), fetch("SFG", 1993), fetch("SFG", 1994), 
             fetch("SFG", 1995), fetch("SFG", 1996), fetch("SFG", 1997), fetch("SFG", 1998), fetch("SFG", 1999), 
             fetch("SFG", 2000), fetch("SFG", 2001), fetch("SFG", 2002), fetch("SFG", 2003), fetch("SFG", 2004), 
             fetch("SFG", 2005), fetch("SFG", 2006), fetch("SFG", 2007), fetch("SFG", 2008), fetch("SFG", 2009), 
             fetch("SFG", 2010), fetch("SFG", 2011), fetch("SFG", 2012), fetch("SFG", 2013), fetch("SFG", 2014))
save(Giants, file="Giants.rda")

Padres <- rbind(fetch("SDP", 1990), fetch("SDP", 1991), fetch("SDP", 1992), fetch("SDP", 1993), fetch("SDP", 1994), 
             fetch("SDP", 1995), fetch("SDP", 1996), fetch("SDP", 1997), fetch("SDP", 1998), fetch("SDP", 1999), 
             fetch("SDP", 2000), fetch("SDP", 2001), fetch("SDP", 2002), fetch("SDP", 2003), fetch("SDP", 2004), 
             fetch("SDP", 2005), fetch("SDP", 2006), fetch("SDP", 2007), fetch("SDP", 2008), fetch("SDP", 2009), 
             fetch("SDP", 2010), fetch("SDP", 2011), fetch("SDP", 2012), fetch("SDP", 2013), fetch("SDP", 2014))
save(Padres, file="Padres.rda")

Rockies <- rbind(fetch("COL", 1993), fetch("COL", 1994), 
             fetch("COL", 1995), fetch("COL", 1996), fetch("COL", 1997), fetch("COL", 1998), fetch("COL", 1999), 
             fetch("COL", 2000), fetch("COL", 2001), fetch("COL", 2002), fetch("COL", 2003), fetch("COL", 2004), 
             fetch("COL", 2005), fetch("COL", 2006), fetch("COL", 2007), fetch("COL", 2008), fetch("COL", 2009), 
             fetch("COL", 2010), fetch("COL", 2011), fetch("COL", 2012), fetch("COL", 2013), fetch("COL", 2014))
save(Rockies, file="Rockies.rda")

Diamondbacks <- rbind(fetch("ARI", 1998), fetch("ARI", 1999), 
             fetch("ARI", 2000), fetch("ARI", 2001), fetch("ARI", 2002), fetch("ARI", 2003), fetch("ARI", 2004), 
             fetch("ARI", 2005), fetch("ARI", 2006), fetch("ARI", 2007), fetch("ARI", 2008), fetch("ARI", 2009), 
             fetch("ARI", 2010), fetch("ARI", 2011), fetch("ARI", 2012), fetch("ARI", 2013), fetch("ARI", 2014))
save(Diamondbacks, file="Diamondbacks.rda")
