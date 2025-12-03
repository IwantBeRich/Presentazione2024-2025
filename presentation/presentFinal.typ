#import "@preview/tiptoe:0.3.1": curve, triangle

#import "PrLib.typ": startSlide,slide,myTitle,myName,date, unipdColor
#set document(date: date, title: myTitle, author: myName)

#startSlide(
  myTitle,
  myName,
  date
)

#slide("Indice di esposizione",[
  #align(horizon)[
  #text(size: 2.5em)[
    + Introduzione dell'azienda
    + Obiettivi principali
    + Il progetto svolto durante lo stage
    + Obiettivi raggiunti
    + Tecnologie utilizzate
    + Conclusione
  ]]
])

#slide("Introduzione dell'azienda - Spazio Dev S.r.l.",[
  #set text(size: 1.1em)
  
  #let icon(name) = box(image("../images/icons/" + name, height: 1em), baseline: 20%)
  
  #let freccia(lunghezza) = box(width: lunghezza, align(horizon)[
      #place(line(length: lunghezza, stroke: 2pt)) 
      #place(right, polygon(fill: black, (0pt, 0pt), (-6pt, 3.5pt), (-6pt, -3.5pt))) 
  ])
  #let underlined-spaced(content, offset: 2pt, stroke: 1pt + black) = {
      box(width: auto, {
        content
        place(bottom + left, dy: offset, line(length: 90%, stroke: stroke))
      })
    }
  #move(dy: 2.5cm)[ 
    
    #grid(
      columns: (20%, 80%),
      gutter: 1em,
      
      place(dx : 10pt, dy : 20pt)[
        #align(center + horizon)[
          #image("../images/spazio_dev_logo.jfif", width: 80%)
        ]
      ],

      grid(
        columns: (25%, 75%), 
        row-gutter: 2em,
        
        align(bottom + left)[
          #move(dx: 0pt, dy: 0pt)[ 
              #rotate(-30deg, origin: left)[
                 #freccia(5cm)
              ]
          ]
        ],
        [
          #move(dy: -1.5cm)[ 
            
            #grid(
              columns: (auto, auto, auto),
              gutter: 0.5em,
              align: horizon, 
              [
                  #set list(marker: none)
                  #grid(
                    columns: (auto, auto), gutter: 1em,
                    icon("commerciale.png"), [Marketing],
                    icon("computer.png"), [Production],
                    icon("finanza.png"), [Sales Finance]
                  )
              ],
              
              move(dy: -5pt)[ 
                  #scale(x: 100%, y: 600%)[ 
                     #text(weight: "light")[}] 
                  ]
              ],
              
              [
                 #grid(
                   columns: (auto, auto), gutter: 0.5em, align: horizon,
                   icon("mdi--people.svg"), 
                   [**10+ dipendenti**]
                 )
              ]
            )
          ]
        ],
        align(horizon + left)[
          #freccia(3.5cm)
        ],
        [
          #grid(
            columns: (auto, auto), gutter: 0.5em,
            icon("mdi--location.svg"), [** Via Don C. Barison, 34, 35019 Onara PD**]
          )
        ],
        align(top + left)[
          #move(dx: 0pt, dy: -10pt)[ 
              #rotate(25deg, origin: left)[
                 #freccia(4.5cm)
              ]
          ]
        ],
        [
          *Progetti & Prodotti*
          #set text(size: 0.85em) 
          #list(marker: [•], spacing: 0.6em,
            [Spazio Dev Custom],
            [Webigno],
            [Relai],
            [Dev Automation],
            [Mugalab Shop],
            [Mugalab Industry],
            [
              #underlined-spaced(offset: 2pt, stroke: 1pt + purple)[*Smart Prospect*]
              #box(width: 0pt)[ 
                #move(dx: 10pt, dy: 0pt)[
                  #rotate(-15deg, origin: left)[ 
                      #freccia(2.5cm) 
                  ]
                ]
              ]
            ]
          )
        ]
      ),
    )
  ] 
  #place(dx: 510pt, dy: -20pt)[
    #rect(stroke: 1pt + white, inset: 0pt)[
        #image("../images/paginiziale.jpg", width: 34%) 
    ]
  ]
  #place(dx: 490pt, dy: -10pt)[
    #rect(stroke: 1pt + white, inset: 0pt)[
        #image("../images/filtro.jpg", width: 35%) 
    ]
  ]

  #place(dx: 470pt, dy: 0pt)[
    #rect(stroke: 1pt + white, inset: 0pt)[
        #image("../images/SmartProspect.jpg", width: 35%) 
    ]
  ]
])
#slide("Obiettivi principali 1° parte",[

#grid(
  columns: (50%,50%),
  inset: 1em,
  align: left,

  [
    #text(1.66em)[#align(center)[*OBBLIGATORI*]
    #list(
      [*Prima versione di AI Area Finder* : individua le aziende in un’area (poligono, comune, CAP) e assegna uno score di pertinenza per i servizi associati],
      [*Elenco aziende con filtri avanzati* : visualizza le aziende con ricerca, filtri combinabili e paginazione server-side],
      [*Anteprima import da AI/Scraping* : mostra i dati estratti, controlla duplicati e registra gli esiti],
      [*Documentazione + test* : include documentazione tecnica/utente e test su funzionalità critiche],
    )
    ]
  ],

  [
    #text(1.66em)[#align(top+center)[*FACOLTATIVI*]
    #v(-0.6em)
    #list(
      [*Hook UI* per richiesta di arricchimento su selezione multipla],
      [*Esposizione endpoint* per consumo esterno (webhook/API) con token di servizio],
      [*Integrazione base n8n* per orchestrare il flusso AI → arricchimento → import]
    )
    ]
  ]
)

])


#slide("Obiettivi principali 2° parte",[

#grid(
  columns: (50%,50%),
  inset: 1em,
  align: left,

  [
    #text(1.9em)[#align(center)[*DESIDERABILI*]
    #list(
      [*Bulk import CSV avanzato* : Caricamento massivo CSV con mappatura campi, validazioni e report riga-per-riga],
      [*Badge informativi nella lista aziende* : Indicatori rapidi nell’elenco, es. prossima attività pianificata o stati sintetici.],
      [*Mini-KPI nella testata elenco* : Piccoli widget con conteggi per stato/settore basati sul filtro attivo],
    )
    ]
  ],

  [
    #text(1.9em)[#align(top+center)[*EXTRA*]
    #v(-0.6em)
    #list(
      [*Sistema campagne email automatizzate* : Invio sequenziale di 3 email con delay personalizzato tra un invio e l’altro],
      [*Pagina gestione campagne* : Tabella completa delle campagne con filtri, dettagli, e possibilità di modifica tramite form dedicato],
    )
    ]
  ]
)

])
#slide("Progetto SmartProspect - Cosa è stato sviluppato",[
  #place(dx: 370pt, dy: 0pt)[
    #rect(stroke: 1pt + white, inset: 0pt)[
        #image("../images/filtrocampagne.jpg", width: 40%) 
    ]
  ]
  #place(dx: 470pt, dy: 60pt)[
    #rect(stroke: 1pt + white, inset: 0pt)[
        #image("../images/mappasingoleaziende.jpg", width: 40%) 
    ]
  ]
  #place(dx: 330pt, dy: 120pt)[
    #rect(stroke: 1pt + white, inset: 0pt)[
        #image("../images/vislog.jpg", width: 40%) 
    ]
  ]
  #place(dx:  490pt, dy: 180pt)[
    #rect(stroke: 1pt + white, inset: 0pt)[
        #image("../images/elencoaziende.jpg", width: 40%) 
    ]
  ]
#align(horizon)[
  #set text(size: 2.5em)

  #let riga(icona, testo) = {
    grid(
      columns: (auto, 1fr),
      gutter: 0.6em,
      align: horizon,
      box(height: 1em, align(horizon)[#icona]), 
      testo
    )
  }

  #grid(
    columns: (1fr),
    row-gutter: 0.8em,
    
    riga(image("../images/icons/map.png") , [Mappa combinata con i filtri]),
    riga(image("../images/icons/ai.png") , [AI Area Finder]),
    riga(image("../images/icons/list.png"), [Elenco aziende]),
    riga(image("../images/icons/log.png"), [Log e monitoraggio]),
    riga(image("../images/icons/newsletter.png"), [Campagne Email]),
    riga(image("../images/icons/documentation.png"), [Documentazione e Test])
  )
]
])

#slide("Mappa combinata con i filtri 1° parte",[
  #let freccia(lunghezza) = box(width: lunghezza, align(horizon)[
      #place(line(length: lunghezza, stroke: 2pt))
      #place(right, polygon(fill: black, (0pt, 0pt), (-6pt, 3.5pt), (-6pt, -3.5pt)))
  ])

  #place(dx: 0pt, dy: 0pt)[
    #rect(stroke: 1pt + white, inset: 0pt)[
        #image("../images/filtrimappa.png", width: 50%)
    ]
  ]
  #place(dx: 680pt, dy: 60pt)[
    #text(size: 2em, weight: "bold", style: "italic")[ Filtri ]
  ]
  #place(dx: 480pt, dy: 95pt)[
    #rotate(180deg)[#freccia(250pt)]
  ]

  #place(dx: 370pt, dy: 150pt)[
    #rect(stroke: 1pt + white, inset: 0pt)[
        #image("../images/mappasingoleaziende.jpg", width: 50%)
    ]
  ]

  #place(dx: 0pt, dy: 260pt)[
    #text(size: 2em, weight: "bold", style: "italic")[ Mappa Iterativa ]
    #rotate(0deg)[#freccia(250pt)]
  ]
])



#slide("Mappa combinata con i filtri 2° parte",[
  #place(dx: 0pt, dy: -10pt)[
    #text(size: 2.5em, weight: "bold", style: "italic")[Se l'utente diminuisce]
  ]
  #place(dx: 30pt, dy: 10pt)[
    #text(size: 2.5em, weight: "bold", style: "italic")[lo zoom sulla mappa?]
  ]
  #place(dx: 720pt, dy: -20pt)[
    #text(size: 2em, weight: "bold", style: "italic")[ Città ]
  ]
    #place(dx: 280pt, dy: 40pt)[
    #text(size: 2em, weight: "bold", style: "italic")[ Provincia ]
  ]
    #place(dx: 95pt, dy: 100pt)[
    #text(size: 2em, weight: "bold", style: "italic")[ Regione ]
  ]
  #place(dx: 370pt, dy: 0pt)[
    #rect(stroke: 1pt + white, inset: 0pt)[
        #image("../images/città.jpg", width: 55%) 
    ]
  ]
  #place(dx:  170pt, dy: 60pt)[
    #rect(stroke: 1pt + white, inset: 0pt)[
        #image("../images/province.jpg", width: 55%) 
    ]
  ]
  #place(dx:  0pt, dy: 120pt)[
    #rect(stroke: 1pt + white, inset: 0pt)[
        #image("../images/regione.jpg", width: 55%) 
    ]
  ]
])

#slide("AI Area Finder", [
  #let icon(name) = box(image("../images/icons/" + name, height: 2em), baseline: 20%)
  #place(dx: 0pt, dy: 0pt)[
    #rect(stroke: 1pt + white, inset: 0pt)[
        #image("../images/menu.png", width: 100%)
    ]
  ]

  #place(dx: 40pt, dy: 50pt)[
    #curve(
      tip: triangle,
      toe: none,
      stroke: black + 1.5pt,
      std.curve.cubic(
        (20pt, 0pt),
        (10pt, 40pt),
        (30pt, 50pt)
      )
    )
  ]
  
  #place(dx: 75pt, dy: 87pt)[
    #icon("monitor.png")
    #text(size: 1.6em, weight: "bold", style: "italic")[ Ricavo dati ]
  ]
  #place(dx: 175pt, dy: 110pt)[
    #curve(
      tip: triangle,
      toe: none,
      stroke: black + 1.5pt,
      std.curve.cubic(
        (0pt, 10pt),
        (0pt, 10pt),
        (40pt, 10pt)
      )
    )
  ]
  #place(dx: 220pt, dy: 110pt)[
    #icon("data.png")
    #text(size: 1.6em, weight: "bold", style: "italic")[ Controlli ]
  ]
  #place(dx: 305pt, dy: 130pt)[
    #curve(
      tip: triangle,
      toe: none,
      stroke: black + 1.5pt,
      std.curve.cubic(
        (0pt, 10pt),
        (0pt, 10pt),
        (40pt, 10pt)
      )
    )
  ]
  #place(dx: 350pt, dy: 130pt)[
    #icon("workflow.png")
    #text(size: 1.6em, weight: "bold", style: "italic")[ n8n ]
  ]
  #place(dx: 400pt, dy: 150pt)[
    #curve(
      tip: triangle,
      toe: none,
      stroke: black + 1.5pt,
      std.curve.cubic(
        (0pt, 10pt),
        (0pt, 10pt),
        (40pt, 10pt)
      )
    )
  ]
  #place(dx: 445pt, dy: 150pt)[
    #icon("data-collection.png")
    #text(size: 1.6em, weight: "bold", style: "italic")[ Integrazione dati ]
  ]
  #place(dx: 590pt, dy: 170pt)[
    #curve(
      tip: triangle,
      toe: none,
      stroke: black + 1.5pt,
      std.curve.cubic(
        (0pt, 10pt),
        (0pt, 10pt),
        (40pt, 10pt)
      )
    )
  ]
  #place(dx: 630pt, dy: 170pt)[
    #icon("workflow.png")
    #text(size: 1.6em, weight: "bold", style: "italic")[ n8n ]
  ]
  #place(dx: 670pt, dy: 195pt)[
    #curve(
      tip: triangle,
      toe: none,
      stroke: black + 1.5pt,
      std.curve.cubic(
        (0pt, 0pt),
        (0pt, 20pt),
        (0pt, 40pt)
      )
    )
  ]
  #place(dx: 610pt, dy: 235pt)[
    #icon("diskette.png")
    #text(size: 1.6em, weight: "bold", style: "italic")[ Salvataggio ]
  ]

  #place(dx:  0pt, dy: 180pt)[
    #rect(stroke: 1pt + white, inset: 0pt)[
        #image("../images/n8n2.jpg", width: 70%) 
    ]
  ]
])

#slide("Elenco aziende",[
  #let icon(name) = box(
    image("../images/icons/" + name, height: 1.4em),
    baseline: 60%
  )

  #place(dx:  0pt, dy: 0pt)[
    #rect(stroke: 1pt + white, inset: 0pt)[
        #image("../images/aziendeInMappaButton.png", width: 20%) 
    ]
  ]
  #place(dx: 150pt, dy: 17pt)[
    #curve(
      tip: triangle,
      toe: none,
      stroke: black + 1.5pt,
      std.curve.cubic(
        (0pt, 0pt),
        (20pt, 0pt),
        (210pt, 0pt)
      )
    )
  ]
  #place(dx:  362pt, dy: 0pt)[
    #rect(stroke: 1pt + white, inset: 0pt)[
        #image("../images/ModaleElencoAziende.png", width: 50%) 
    ]
  ]
  #place(dx:  -10pt, dy: 50pt)[
    #grid(
      columns: (50%,50%),
      inset: 1em,
      align: left,

      [
        #text(1.80em)[#align(top+center)[*Cosa fa?*]
        #list(
          marker : [‣],
          [Mostra le aziende dentro al poligono/i selezionato/i],
          [Mostra le aziende tramite con solo l'utilizzo del filtro],
        )
        ]
        #v(1em)
        #text(1.80em)[#align(top+center)[*Cosa è stato sviluppato?*]
        #list(
          marker : [*+*],
          [Ottimizzato il caricamento del modale],
          [Sostituito lo scroll con load infinito con la paginazione],
          [Migliorato lo stile nel rappresentare i dati],
        )
        ]
      ],

      [
      ]
    )
  ]
])

#slide("Log e monitoraggio",[
  #let icon(name) = box(
    image("../images/icons/" + name, height: 1.4em),
    baseline: 60%
  )

  #place(dx:  -30pt, dy: 0pt)[
    #rect(stroke: 1pt + white, inset: 0pt)[
        #image("../images/bottonelog.png", width: 20%) 
    ]
  ]
  #place(dx: 117pt, dy: 220pt)[
    #curve(
      tip: triangle,
      toe: none,
      stroke: black + 1.5pt,
      std.curve.cubic(
        (0pt, 0pt),
        (20pt, 0pt),
        (60pt, 0pt)
      )
    )
  ]
  #place(dx:  182pt, dy: 0pt)[
    #rect(stroke: 1pt + white, inset: 0pt)[
        #image("../images/PaginaLog.png", width: 80%) 
    ]
  ]
])

#slide("Campagne Email 1° parte",[
  #let icon(name) = box(
    image("../images/icons/" + name, height: 1.4em),
    baseline: 60%
  )

  #place(dx:  470pt, dy: 200pt)[
    #rect(stroke: 1pt + white, inset: 0pt)[
        #image("../images/bottonecampagna.png", width: 20%) 
    ]
  ]
  #place(dx:  590pt, dy: 235pt)[
    #rect(stroke: 0pt, inset: 0pt)[
        #image("../images/icons/icons8-cursore.svg", width: 7%) 
    ]
  ]
  #place(dx: 540pt, dy: 17pt)[
    #curve(
      tip: triangle,
      toe: none,
      stroke: black + 1.5pt,
      std.curve.cubic(
        (0pt, 0pt),
        (0pt, 20pt),
        (0pt, 180pt)
      )
    )
  ]
  /*#place(dx:  362pt, dy: 0pt)[
    #rect(stroke: 1pt + white, inset: 0pt)[
        #image("../images/ModaleElencoAziende.png", width: 50%) 
    ]
  ]*/
  #place(dx:  -10pt, dy: -20pt)[
    #grid(
      columns: (50%,50%),
      inset: 1em,
      align: left,

      [
        #text(2.5em)[#align(top+center)[*Cosa fa?*]]
        #text(1.80em)[
        #list(
          marker : [‣],
          [Permettere la ricerca delle aziende tramite sistema di filtraggio],
          [Invio delle campagne email],
          [Visualizzazione delle campagne effettuate],
        )
        ]
        #v(1em)
        #text(2.5em)[#align(top+center)[*Cosa è stato sviluppato?*]]
        #text(1.80em)[
        #list(
          marker : [*+*],
          [Ottimizzato il caricamento della pagina tramite aggiunta/modifica filtro],
          [Migliorato lo stile nel rappresentare i dati],
          [Pagina di visualizzazione delle campagne effettuate],
          [Pagina di visualizzazione della singola campagna con possibile modifica],
        )
        ]
      ],

      [
        #text(size: 2.5em, weight: "bold", style: "italic")[#align(top+center)[Dove si comincia?]]
      ]
    )
  ]
])

#slide("Campagne Email 2° parte",[
  #place(dx:  30pt, dy: 10pt)[
    #rect(stroke: 1pt + white, inset: 0pt)[
        #image("../images/filtrocampagne.png", width: 92%) 
    ]
  ]
])

#slide("Campagne Email 3° parte",[
  #place(dx:  0pt, dy: 00pt)[
    #rect(stroke: 1pt + white, inset: 0pt)[
        #image("../images/risultatoricercacampagna.jpg", width: 100%) 
    ]
  ]
])

#slide("Campagne Email 4° parte",[
  #place(dx:  0pt, dy: 00pt)[
    #rect(stroke: 1pt + white, inset: 0pt)[
        #image("../images/modaleEmail.jpg", width: 35%) 
    ]
  ]
  #place(dx:  -10pt, dy: -20pt)[
    #grid(
      columns: (50%,50%),
      inset: 1em,
      align: left,

      [
      ],

      [
        #text(2.5em)[#align(top+center)[*Cosa è stato implementato?*]]
        #text(1.80em)[
        #list(
          marker : [*+*],
          [Invio della prima email],
          [Invio della seconda e terza email con delay programmate],
        )
        ]
        #text(2.5em)[#align(top+center)[*Risultato*]]
        #image("../images/emailmandate.png", width: 100%) 
      ]
    )
  ]
])

#slide("Campagne Email 5° parte",[
  #place(dx:  0pt, dy: 00pt)[
    #rect(stroke: 1pt + white, inset: 0pt)[
        #image("../images/viscampagnaemail.jpg", width: 100%) 
    ]
  ]
])

#slide("Campagne Email 6° parte",[
  #place(dx:  0pt, dy: 00pt)[
    #rect(stroke: 1pt + white, inset: 0pt)[
        #image("../images/dettaglicampagne2.jpg", width: 60%) 
    ]
  ]
    #place(dx:  0pt, dy: 170pt)[
    #rect(stroke: 1pt + white, inset: 0pt)[
        #image("../images/dettaglicampagne.jpg", width: 60%) 
    ]
  ]
  #place(dx:  475pt, dy: 00pt)[
    #rect(stroke: 1pt + white, inset: 0pt)[
        #image("../images/modifiche.jpg", width: 35%) 
    ]
  ]
])

#slide("Obiettivi raggiunti 1° parte",[
#grid(
  columns: (50%,50%),
  inset: 1em,
  align: left,

  [
    #text(1.66em)[#align(center)[*OBBLIGATORI*]
    #list(
      marker: image("../images/icons/icons8-verificato.svg", width: 1em),

      [*Prima versione di AI Area Finder* : individua le aziende in un’area (poligono, comune, CAP) e assegna uno score di pertinenza per i servizi associati],
      [*Elenco aziende con filtri avanzati* : visualizza le aziende con ricerca, filtri combinabili e paginazione server-side],
      [*Anteprima import da AI/Scraping* : mostra i dati estratti, controlla duplicati e registra gli esiti],
      [*Documentazione + test* : include documentazione tecnica/utente e test su funzionalità critiche],
    )
    ]
  ],

  [
    #text(1.66em)[#align(top+center)[*FACOLTATIVI*]
    #v(-0.6em)
    #list(
      marker: image("../images/icons/icons8-rimuovi.svg", width: 1em),
      [*Hook UI* per richiesta di arricchimento su selezione multipla],
      [*Esposizione endpoint* per consumo esterno (webhook/API) con token di servizio],
    )

    #list(
      marker: image("../images/icons/icons8-verificato.svg", width: 1em),
      [*Integrazione base n8n* per orchestrare il flusso AI → arricchimento → import]
    )
    ]
  ]
)
])

#slide("Obiettivi raggiunti 2° parte",[
#grid(
  columns: (50%,50%),
  inset: 1em,
  align: left,

  [
    #text(1.9em)[#align(center)[*DESIDERABILI*]
    #list(
      marker: image("../images/icons/icons8-rimuovi.svg", width: 1em),

      [*Bulk import CSV avanzato* : Caricamento massivo CSV con mappatura campi, validazioni e report riga-per-riga],
      [*Badge informativi nella lista aziende* : Indicatori rapidi nell’elenco, es. prossima attività pianificata o stati sintetici.],
      [*Mini-KPI nella testata elenco* : Piccoli widget con conteggi per stato/settore basati sul filtro attivo],
    )
    ]
  ],

  [
    #text(1.9em)[#align(top+center)[*EXTRA*]
    #v(-0.6em)
    #list(
      marker: image("../images/icons/icons8-verificato.svg", width: 1em),
      [*Sistema campagne email automatizzate* : Invio sequenziale di 3 email con delay personalizzato tra un invio e l’altro],
      [*Pagina gestione campagne* : Tabella completa delle campagne con filtri, dettagli, e possibilità di modifica tramite form dedicato],
    )
    ]
  ]
)
])

#slide("Tecnologie Utilizzate",[
  #place(dx:  -10pt, dy: 0pt)[
    #grid(
      columns: (50%,50%),
      inset: 1em,
      align: left,

      [
        #text(2.2em)[#align(top+center)[*Scelte da vincoli aziendali*]
        #list(
          marker : [‣],
          [Laravel 12],
          [PHP 8.4],
          [Filament 4],
          [Tailwind CSS],
          [n8n],
          [Gitea],
          [DDEV],
          [MySQL], 
        )
        ]
      ],

      [
        #text(2.2em)[#align(top+center)[*Scelte personali*]
        #list(
          marker : [*‣*],
          [Visual Studio Code],
          [Firecrawl Scrape],
          [Jina AI Reader],
        )
        ]
      ]
    )
  ]
#place(dx: 120pt, dy: 140pt)[
  #rect(stroke: 1pt + white, inset: 0pt)[
    #image("../images/tecnologie/laravel.png", width: 15%)
  ]
]

#place(dx: 215pt, dy: 80pt)[
  #rect(stroke: 1pt + white, inset: 0pt)[
    #image("../images/tecnologie/Gitea.png", width: 15%)
  ]
]

#place(dx: 320pt, dy: 150pt)[
  #rect(stroke: 1pt + white, inset: 0pt)[
    #image("../images/tecnologie/n8n.png", width: 15%)
  ]
]

#place(dx: 200pt, dy: 200pt)[
  #rect(stroke: 1pt + white, inset: 0pt)[
    #image("../images/tecnologie/MySQL.jpg", width: 15%)
  ]
]

#place(dx: 420pt, dy: 240pt)[
  #rect(stroke: 1pt + white, inset: 0pt)[
    #image("../images/tecnologie/filament.png", width: 10%)
  ]
]

#place(dx: 60pt, dy: 270pt)[
  #rect(stroke: 1pt + white, inset: 0pt)[
    #image("../images/tecnologie/php.png", width: 10%)
  ]
]

#place(dx: 560pt, dy: 250pt)[
  #rect(stroke: 1pt + white, inset: 0pt)[
    #image("../images/tecnologie/tailwind.png", width: 10%)
  ]
]

#place(dx: 560pt, dy: 60pt)[
  #rect(stroke: 1pt + white, inset: 0pt)[
    #image("../images/tecnologie/JinaAI.png", width: 10%)
  ]
]

#place(dx: 650pt, dy: 150pt)[
  #rect(stroke: 1pt + white, inset: 0pt)[
    #image("../images/tecnologie/vscode.png", width: 10%)
  ]
]

#place(dx: 490pt, dy: 160pt)[
  #rect(stroke: 1pt + white, inset: 0pt)[
    #image("../images/tecnologie/firecrawl.png", width: 15%)
  ]
]

#place(dx: 240pt, dy: 270pt)[
  #rect(stroke: 1pt + white, inset: 0pt)[
    #image("../images/tecnologie/ddev.jpg", width: 15%)
  ]
]
])

#slide("Conclusione",[

#text(3em)[*Opinioni sull'esperienza trascorsa*]
  #show grid: set text(2em)
  #align(center)[
  #grid(
    columns: (100%),
    align: (x,y) => if(x==0) {left} else {center+horizon},
    [  
      - *Esperienza* complessivamente *positiva*
      - Molto interessante l'utilizzo di *n8n* e dei metodi di *Filament* con framework *Laravel*
      - Il punto critico è stato ambiente di lavoro
  ],
  )]
  #align(center+horizon)[
    #text(2em)[
      Infine\
      *Domande e Risposte*
    ]
    ]
]
)