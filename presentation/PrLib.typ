#import "@preview/grayness:0.3.0": image-transparency
#import "../config/variables.typ": myUni, myDepartment, myFaculty, myMatricola, myName, myTitle, myAA

// Configurazione Data
#let date = datetime(
  year: 2025,
  month: 12,
  day: 9,
)

// Colore Ufficiale UniPD
#let unipdColor = rgb("#9B0014")

// Funzione Helper per ottenere il nome del mese in italiano
#let monthName(m) = {
  let months = ("Gennaio", "Febbraio", "Marzo", "Aprile", "Maggio", "Giugno", "Luglio", "Agosto", "Settembre", "Ottobre", "Novembre", "Dicembre")
  months.at(m - 1)
}
#let slide(title, body)={
  // Variabile per controllare l'altezza della barra rossa
  let headerHeight = 2.5cm

  set rect(
    inset: 4pt,
  )
  
  set page(
    paper: "presentation-16-9",
    // Il margine superiore deve lasciare spazio alla barra rossa + un po' di respiro
    margin: (top: headerHeight + 1cm, bottom: 2cm), 
    
    // Disattiviamo l'header standard per disegnarlo noi nel background
    header: none,

    // --- FOOTER ---
    footer: [
      #set text(fill: black, size: 1.1em)
      #let currentPage = context(counter(page).display())
      #let lastPage = context(counter(page).final().at(0))
      
      #line(length: 100%, stroke: 2pt + unipdColor)
      #grid(
        columns: (1fr, auto),
        gutter: 1em,
        align(left+horizon)[
          #myTitle \ 
          #myName #myMatricola - #date.display("[day] Dicembre [year]")
        ], 
        align(right+horizon)[
          #currentPage / #lastPage
        ]
      )
    ],

    // --- BACKGROUND (Barra Rossa + Titolo + Logo) ---
    background: [
      #place(top, rect(
        width: 100%,
        height: headerHeight,
        fill: unipdColor,
        stroke: none,
        inset: 0pt, // Importante: zero inset per usare tutto lo spazio
        
        // Griglia interna alla barra rossa
        grid(
          columns: (1fr, auto), // 1fr per il Titolo (sinistra), auto per il Logo (destra)
          rows: (100%),
          align: horizon,       // Centra tutto VERTICALMENTE
          
          pad(left: 1cm, align(left)[
            #text(fill: white, size: 2.7em, weight: "bold")[#title]
          ]),
          
          // 2. LOGO
          // height: 100% lo forza ad essere alto esattamente come la barra rossa
          image("../images/unipd_completo.png", height: 100%, fit: "contain")
        )
      ))
    ],
  )
  set text(size: 10pt) // Dimensione base del testo (elenco puntato)
  
  body
}

#let startSlide(title, nome, data_esame) = {
  set page(
    paper: "presentation-16-9",
    margin: 2em,
    fill: unipdColor,
    header: none,
    footer: none
  )
  set text(fill: white, font: "Linux Libertine") // Font elegante se disponibile, o default

  // Contenitore principale flessibile
  grid(
    columns: (1fr),
    rows: (auto, 1fr, auto), // Header, Titolo centrato, Footer
    gutter: 1em,
    align(center)[
      #text(size: 1.2em, weight: "light")[#myUni] \
      #v(0.2em)
      #text(size: 1.4em, weight: "bold")[#myDepartment] \
      #text(size: 1.1em)[#myFaculty] \
      #v(0.5em)
      #text(size: 1em, style: "italic")[Anno Accademico #myAA] \
      
      #v(1em)
      #image("../images/unipd_completo.png", width: 40%) 
    ],

    align(center + horizon)[
      #text(size: 2.3em, weight: "bold")[#title]
    ],

    [
      #line(length: 100%, stroke: 1.5pt + white)
      #v(0.5em)
      #grid(
        columns: (1fr, 1fr),
        align: (left, right),
        [
          #text(size: 1.6em, weight: "bold")[#nome] \
          #text(size: 1.6em)[Matricola : #myMatricola]
        ],
        // Lato Destro: Esame
        [
          #text(size: 1.6em, weight: "bold")[Esame di Laurea] \
          #text(size: 1.4em)[#data_esame.day() #monthName(data_esame.month()) #data_esame.year()]
        ]
      )
    ]
  )
}