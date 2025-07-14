#EJERCICIO
BaseSACMEX<-read.csv("CONTRERAS UTF-8.csv",header=T, encoding = "UTF-8", check.names = F)
BaseSACMEX
str(BaseSACMEX)
BaseSACMEX$DICTAMEN
BaseSACMEX$Tipo<- ifelse(BaseSACMEX$DICTAMEN=="ATARJEA OBSTRUIDA" | BaseSACMEX$DICTAMEN=="COLADERA OBSTRUIDA", "Obstruction",
                  ifelse(BaseSACMEX$DICTAMEN=="FALTA DE INFRAESTRUCTURA" | BaseSACMEX$DICTAMEN=="INSUFICIENCIA DE ATARJEA Y COLECTOR" | BaseSACMEX$DICTAMEN=="INSUFICIENCIA DE GRIETA", "Sewage overflow",
                  ifelse(BaseSACMEX$DICTAMEN=="RUPTURA DE TUBO DE AGUA POTABLE", "Breaking off",
                  ifelse(BaseSACMEX$DICTAMEN=="INEXISTENTE AL MOMENTO DE LA INSPECCION [NO SE APRECIAN DIMENSIONES]" | BaseSACMEX$DICTAMEN=="INEXISTENTE AL MOMENTO DE LA INSPECCION", "Lacking Info",
                  ifelse(BaseSACMEX$DICTAMEN=="NO SE OPERO CARCAMO DE BOMBEO", "Pump Failure",
                  ifelse(BaseSACMEX$DICTAMEN=="HUNDIMIENTO DE CARPETA ASFALTICA", "Sinking","otros"))))))
BaseSACMEX

BaseSACMEX$GRUPOS<-ifelse(BaseSACMEX$Año %in% c(2007:2009),"A",
                  ifelse(BaseSACMEX$Año %in% c(2010:2014),"B","otros"))
BaseSACMEX

BaseSACMEX$FRECUENCIA<- rep(1,length(BaseSACMEX$Tipo))
BaseSACMEX

