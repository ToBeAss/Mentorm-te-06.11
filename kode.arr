include image
import image as img

# Lånte litt kode fra dere:

justering = circle(100, "solid", "transparent")
sirkel1 = circle(50, "solid", "blue")
sirkel2 = circle(40, "solid", "green")
sirkel3 = circle(30, "solid", "red")
sirkel4 = circle(20, "solid", "orange")
pinne = circle(10, "solid", "black")

# vi bruker en 'justering' sirkel slik at de tre pinnene blir justert til høyre, og det blir plass til alle sirklene på display-område

start = underlay((justering), underlay((sirkel1), underlay((sirkel2), underlay((sirkel3), underlay((sirkel4), underlay((pinne), underlay-xy((pinne), -150, 0, underlay-xy((pinne), -300, 0, empty-image))))))))

steg1 = underlay((justering), underlay((sirkel1), underlay((sirkel2), underlay((sirkel3), underlay-xy((sirkel4), -150, 0, underlay((pinne), underlay-xy((pinne), -150, 0, underlay-xy((pinne), -300, 0, empty-image))))))))

steg2 = underlay((justering), underlay((sirkel1), underlay((sirkel2), underlay-xy((sirkel4), -150, -10, underlay-xy((sirkel3), -290, 10, underlay((pinne), underlay-xy((pinne), -150, 0, underlay-xy((pinne), -300, 0, empty-image))))))))

# på sirkel3 måtte vi justere koordinatene litt fra -300, 0 til -290, 10. Dette kommer nok fra at underlay-xy metoden bestemmer posisjon i forhold til til den tideligere tegna sirkelen.
steg3 = underlay((justering), underlay((sirkel1), underlay((sirkel2), underlay-xy((sirkel3), -290, 10, underlay-xy((sirkel4), -300, 0, underlay((pinne), underlay-xy((pinne), -150, 0, underlay-xy((pinne), -300, 0, empty-image))))))))

steg4 = underlay((justering), underlay((sirkel1), underlay-xy((sirkel2), -130, 10, underlay-xy((sirkel3), -290, 10, underlay-xy((sirkel4), -300, 0, underlay((pinne), underlay-xy((pinne), -150, 0, underlay-xy((pinne), -300, 0, empty-image))))))))

steg5 = underlay((justering), underlay((sirkel1), underlay-xy((sirkel2), -140, 10, underlay-xy((sirkel3), -300, 0, underlay-xy((sirkel4), 10, 10, underlay((pinne), underlay-xy((pinne), -150, 0, underlay-xy((pinne), -300, 0, empty-image))))))))

steg6 = underlay((justering), underlay((sirkel1), underlay-xy((sirkel2), -140, 10, underlay-xy((sirkel3), -150, 0, underlay-xy((sirkel4), 10, 10, underlay((pinne), underlay-xy((pinne), -150, 0, underlay-xy((pinne), -300, 0, empty-image))))))))

steg7= underlay((justering), underlay((sirkel1), underlay-xy((sirkel2), -130, 10, underlay-xy((sirkel3), -140, 10, underlay-xy((sirkel4), -150, 0, underlay((pinne), underlay-xy((pinne), -150, 0, underlay-xy((pinne), -300, 0, empty-image))))))))

steg8 = underlay((justering), underlay-xy((sirkel1), -270, 10, underlay-xy((sirkel2), -130, 10, underlay-xy((sirkel3), -140, 10, underlay-xy((sirkel4), -150, 0, underlay((pinne), underlay-xy((pinne), -150, 0, underlay-xy((pinne), -300, 0, empty-image))))))))

steg9 = underlay((justering), underlay-xy((sirkel1), -270, 10, underlay-xy((sirkel2), -130, 10, underlay-xy((sirkel3), -140, 10, underlay-xy((sirkel4), -300, 0, underlay((pinne), underlay-xy((pinne), -150, 0, underlay-xy((pinne), -300, 0, empty-image))))))))

steg10 = underlay((justering), underlay-xy((sirkel1), -290, 10, underlay-xy((sirkel2), -150, 0, underlay-xy((sirkel3), 20, 20, underlay-xy((sirkel4), -300, 0, underlay((pinne), underlay-xy((pinne), -150, 0, underlay-xy((pinne), -300, 0, empty-image))))))))

steg11 = underlay((justering), underlay-xy((sirkel1), -290, 10, underlay-xy((sirkel2), -150, 0, underlay-xy((sirkel3), 10, 10, underlay-xy((sirkel4), 10, 10, underlay((pinne), underlay-xy((pinne), -150, 0, underlay-xy((pinne), -300, 0, empty-image))))))))

steg12 = underlay((justering), underlay-xy((sirkel1), -290, 10, underlay-xy((sirkel2), -300, 0, underlay-xy((sirkel3), 10, 10, underlay-xy((sirkel4), 10, 10, underlay((pinne), underlay-xy((pinne), -150, 0, underlay-xy((pinne), -300, 0, empty-image))))))))

steg13 = underlay((justering), underlay-xy((sirkel1), -290, 10, underlay-xy((sirkel2), -300, 0, underlay-xy((sirkel3), 20, 20, underlay-xy((sirkel4), -150, 0, underlay((pinne), underlay-xy((pinne), -150, 0, underlay-xy((pinne), -300, 0, empty-image))))))))

steg14 = underlay((justering), underlay-xy((sirkel1), -270, 10, underlay-xy((sirkel2), -280, 10, underlay-xy((sirkel3), -290, 10, underlay-xy((sirkel4), -150, 0, underlay((pinne), underlay-xy((pinne), -150, 0, underlay-xy((pinne), -300, 0, empty-image))))))))

ferdig = underlay((justering), underlay-xy((sirkel1), -270, 10, underlay-xy((sirkel2), -280, 10, underlay-xy((sirkel3), -290, 10, underlay-xy((sirkel4), -300, 0, underlay((pinne), underlay-xy((pinne), -150, 0, underlay-xy((pinne), -300, 0, empty-image))))))))

# bruker empty-image argument på underlay-xy for å fylle in den siste av 4 argumenter som underlay-xy krever, utenom å endre outputtet


# Lager en liste (et array) kallt "a", som inneholder alle elementene over
liste = [array: start, steg1, steg2, steg3, steg4, steg5, steg6, steg7, steg8, steg9, steg10, steg11, steg12, steg13, steg14, ferdig]

# Definerer to variabler for å hjelpe oss videre
var index = 0
var status = "off"

# Funksjon for å starte spillet
fun play():
  block:
    status := "on"
    liste.get-now(index)
    end
end

# Funksjon for å gå til neste steg i sekvensen (fungerer kun når spillet er startet)
fun move():
  if status == "on":
    block:
      if index < (liste.length() - 1):
        index := index + 1
      else:
        index := index
      end
      liste.get-now(index)
      end
  else:
    feilmelding = "Du må starte spillet først."
    feilmelding
  end
end

# Funksjon for å gå til forrige steg i sekvensen (fungerer kun når spillet er startet)
fun back():
  if status == "on":
    block:
      if (status == "on") and (index > 0):
        index := index - 1
      else:
        index := index
      end
      liste.get-now(index)  
    end
  else:
    feilmelding = "Du må starte spillet først."
    feilmelding
  end
end

# Funksjon for å starte spillet på nytt
fun newGame():
  block:
    status := "on"
    index := 0
    liste.get-now(index)
  end
end

# Funksjon for å avslutte spillet
fun endGame():
  block:
    status := "off"
    index := liste.length() - 1
    liste.get-now(index)
  end
end

# Velkomstmelding og annen info
velkomstmelding = "Velkommen til Hanoi tårnet."
info = "Her er en liste over funkjsoner du kan kjøre:"
funksjoner = "play(), move(), back(), newGame(), endGame()"

velkomstmelding
info
funksjoner

# Mangler implementasjon av Table
