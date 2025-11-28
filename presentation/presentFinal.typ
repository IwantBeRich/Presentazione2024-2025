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
    + Il progetto svolto durante lo stage
    + Obiettivi principali
    + Tecnologie utilizzate
    + Risultati delle implementazione
    + Obiettivi raggiunti
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

#slide("Introduzione dell'azienda - Spazio Dev S.r.l.",[



])

#slide("Progetto SmartProspect",[



])

#slide("Obiettivi principali",[



])

#slide("Risultati delle implementazioni",[



])

#slide("Conclusione",[



])
/*
#slide("RISKAPP S.R.L - CONTESTO AZIENDALE",[
  #align(left+horizon)[
  #show grid: set text(size: 2em)

  #grid(
    columns: (20%, 30%, 50%),
    [#image("../images/Riskapp.png")],[
      #list(marker: image("../images/icons/mdi--people.svg"), indent: 1em, align(top)[10+ dipendenti])
      #v(-0.5em)
      #list(marker: image("../images/icons/mdi--location.svg"), indent: 1em, align(top)[Conselve (PD)])
      #v(-0.5em)
      #list(marker: image("../images/icons/mdi--work.svg"), indent: 1em, align(top)[Insurtech])
      #v(-0.5em)
      #list(marker: image("../images/icons/mdi--partnership.svg"), indent: 1em,[Intesa Sanpaolo, Generali...]
      )
      #v(-0.5em)
      #list(marker: image("../images/icons/carbon--ibm-data-product-exchange.svg"), indent: 1em,[RiskApp #move(dx: 90pt, dy: -30pt)[#curve(
          tip: triangle, toe: none,
          std.curve.cubic((20pt, 0pt), (60pt, 90pt), (155pt, -60pt)),
        )]
        ]
      )
    ],
    
    [#move(dx: 50pt, dy: -50pt)[#image("../images/riskapp_app.png", width: 100%)]]
  )]

])

#slide("INTRODUZIONE - RISKAPP", [
  
  #text(size: 2em)[Cosa permette di fare RiskApp?]
  #show grid: set text(size: 2em)
  #grid(
    inset: 0.5em,
    columns: (40%,auto),
    align: (x,y) => if(x==0) {center+horizon} else {horizon},
    [#image("../images/icons/wpf--worldwide-location.svg", width: 15%)],[*Ricerca informazioni* sul cliente],
    [#image("../images/icons/mdi--building.svg", width: 15%)],
    [*Valutazione automatica* dei beni \ da assicurare],
    [#image("../images/icons/mdi--report-timeline.svg", width: 15%)], [Creazione guidata di *report sulle \ criticità* emerse],
    [#image("../images/icons/mdi--video-wireless-outline.svg", width: 15%)],
    [*Videoispezioni remote*],
  )
])

#slide("VIDEOISPEZIONE - RISKAPP", [
  #text(size: 2em)[Non è una semplice videochiamata...]
  #show grid: set text(size: 2em)
  #grid(
    inset: 0.5em,
    columns: (20%, auto,50%),
    align: (x,y) => if(x==0) {center+horizon} else {left+horizon},
    [#image("../images/icons/mdi--map.svg", width: 35%)], [Visualizzazione della *posizione in tempo reale*],
    grid.cell(rowspan: 3)[#move(dx: 70pt, dy: -65pt)[#image("../images/riskapp_pic.svg")]],
    [#image("../images/icons/mdi--photo-library.svg", width: 35%)],
    [*Acquisizione istantanee* del video ricevuto],
    [#image("../images/icons/carbon--recording-filled.svg", width: 35%)],[*Registrazione* della videoispezione],
  )
])

#slide("PROBLEMI - RISKAPP", [
  #text(size: 2em)[Se l'agente perde accesso alla rete?]
  #show grid: set text(2em)
  #grid(
    columns: (50%,50%),
    align: (x,y) => if (x==0) {center+horizon} else {center},
    inset: (x,y) => if(x==1){(x: 1em, y: 0em)} else {0em},
    [#place(top+left, dx: 4em, dy: 3em)[#image("../images/icons/carbon--recording-filled.svg", width: 20%)] #place(top+right, dx: -4em, dy: 3em)[#image("../images/icons/mdi--photo-library.svg", width: 20%)] #place(center+bottom, dy: -3em)[#image("../images/icons/mdi--video-wireless-outline.svg", width: 20%)] #place(center+horizon)[#image("../images/icons/qlementine-icons--forbidden-16.svg", width: 80%)]], [L'ispettore non vede quanto inquadrato dall'agente #move(dx: 0em,dy: 0em)[#curve(
  tip: triangle, toe: none,
  std.curve.cubic((0pt, 10pt), (0pt, 10pt), (0pt,40pt)),
)] \  Non può registrare e fotografare #move(dx: 0em,dy: -0em)[#curve(
  tip: triangle, toe: none,
  std.curve.cubic((0pt, 10pt), (0pt, 10pt), (0pt,40pt)),
)] \  Ricorrenza: *frequente* \
      Impatto: *elevato*
]
  )
  
])

#slide("SOLUZIONI - RISKAPP",[
  #text(2em)[L'agente deve poter:]
  #v(-1em)
  #show grid: set text(2em)
  #align(center)[
    #grid(
      columns: (15%, 35%),
      inset: 0.4em,
      align: (x,y) => if(x==0) {center+horizon} else {left+horizon},
      [#image("../images/icons/foundation--play-video.svg", width: 50%)], [*registrare audio e video*],
      [#image("../images/icons/mdi--photo-library.svg", width: 50%)], [*scattare istanze* del *video*]
    )
  ]
  #text(2em)[Il sistema:]
  #v(-1em)
    #align(center)[
    #grid(
      columns: (15%, 35%),
      inset: 0.4em,
      align: (x,y) => if(x==0) {center+horizon} else {left+horizon},
      [#image("../images/icons/mdi--wifi-strength-alert-outline.svg", width: 50%)], [*resiste* alla *perdita di connessione*],
      [#image("../images/icons/mdi--cloud-upload.svg", width: 50%)], [carica i contenuti con un *processo secondario*]
    )
  ]
])

#slide("OBIETTIVI PRINCIPALI", [
  #grid(
    columns: (50%,50%),
    inset: 1em,
    align: left,
    [#text(2em)[#align(center)[*OBBLIGATORI*]
    #list(marker: image("../images/icons/mdi--flag.svg"),
    [*Trasmissione in tempo reale* ad altri utenti connessi],
    [*Registrazione video/audio* trasmesso],
    [*Realizzazione istanze video* trasmesso],
    [*Raccolta minutaggi* di *inizio periodo senza connessione*],
    [*Caricamento in _background_* contenuti acquisiti]
    )
    
    ]],
    [#text(2em)[#align(top+center)[*FACOLTATIVI*]
  #v(-0.5em)
    #list(marker: image("../images/icons/mdi--flag-outline.svg"),
    [Implementazione *funzionalità di messaggistica*],
    [Creazione *interfacce* per la *visualizzazione* dei *contenuti multimediali* acquisiti],
    )
    ]
    #align(center)[#circle(fill: unipdColor, stroke: black+2pt, radius: 6.1em)[#image("../images/icons/ri--file-list-3-fill.svg", width: 100%)]]
    ]
  )
])

#slide("TECNOLOGIE UTILIZZATE (1/4)", [
  #hide()[""]
  #v(-2em)
  #show grid: set text(2em)
  #grid(
    columns: (33%,33%,33%),
    align: (x,y) => if(y==0 or y==1) {center+horizon} else {left},
    grid.cell(colspan: 3)[Scelte principalmente dettate da vincoli aziendali #v(1em)],
    [#image("../images/React.svg", width: 20%) #v(-2em) \ React],[#image("../images/antd.svg", width: 20%) #v(-2em) \ Ant Design],
    [#v(1em) #image("../images/axios.svg", width: 60%) #v(-1.5em) \ Axios],
    [ \ #list([*Realizzazione interfacce grafiche*], [*Sviluppo modulare* basato a componenti], [*Gestione stati* componenti])],
    [\ #list([*Sviluppo* di interfacce *semplificato*], [*Libreria di icone* come componenti React])],
    [ \ #list([*Realizzazione richieste a server* semplificata], [#box(inset: (x: 0em), outset: (y: 0.25em),fill: white,text()[*Maggiori automatismi*]) della fetch API #box(inset: (x: 0.125em), outset: (y: 0.25em),fill: white,"di") JavaScript])],
  )
])

#slide("TECNOLOGIE UTILIZZATE (2/4)", [
  #hide()[""]
  #v(-2em)
  #show grid: set text(2em)
  #grid(
    columns: (33%,33%,33%),
    align: (x,y) => if(y==0 or y==1) {center+horizon} else {left},
    grid.cell(colspan: 3)[Scelte principalmente dettate da vincoli aziendali #v(1em)],
    [#image("../images/reactrouter.svg", width: 30%) #v(-1.5em) \ React Router],
    [#image("../images/ts-logo-256.svg", width: 20%) #v(-1.5em) \ TypeScript],[#image("../images/js.svg", width: 20%) #v(-1.5em) \ JavaScript],
    [\ #list([*Semplifica* il sistema \ di *routing*])],
    [ \ #list([Variante di JavaScript con *controllo dei \ tipi*], [*Elimina* gli *errori di \ tipo*])],
    [\ #list([*MediaRecorder* API], [*IndexedDB* API], [*Service Worker*])]
  )
])

#slide("TECNOLOGIE UTILIZZATE (3/4)", [
  #hide()[""]
  #v(-2em)
  #show grid: set text(2em)
  #align(center)[
  #grid(
    columns: (40%,40%),
    align: (x,y) => if(y==0 or y==1) {center+horizon} else {left},
    grid.cell(colspan: 2)[Scelte principalmente dettate da vincoli aziendali #v(1em)],
    [#v(-1.5em) #image("../images/Go.svg", width: 50%) #v(-3em) \ Go],[#v(0.5em) #image("../images/docker.svg", width: 70%) #v(-1em) \ Docker],
    [ \ #list([Largamente adottato per sviluppare *microservizi*], [Interesse nell'approfondire il linguaggio])],
    [\ #list([*Esecuzione isolata* degli applicativi])]
  )]
])

#slide("TECNOLOGIE UTILIZZATE (4/4)", [
  #text(2em)[Altre tecnologie rilevanti]

  #show grid: set text(2em)
  
  #v(5em)

  #grid(
    columns: (30%,50%),
    [ #align(horizon)[#list([Twilio Video SDK],[HTML], [CSS], [GitHub])]], [
      #grid(
        columns: (50%,50%),
        align: center+horizon,
        [#image("../images/html5.svg", width: 50%)],[#image("../images/css.svg", width: 50%)],
        grid.cell(colspan: 2)[#image("../images/github.svg", width: 25%)]
      )
    ],
  )
])

#slide("RISULTATI (1/3)", [
  #text(2em)[Esempi d'uso dell'applicazione #v(-0.6em)]
  #show grid: set text(1.5em)
  #grid(
    columns: (33%,33%,33%),
    align: center+horizon,
    [#image("../images/login.png", width: 59%) #v(-1em) Schermata di accesso],
    [#image("../images/scatto.png", width: 59%) #v(-1em) Realizzazione immagini],
    [#image("../images/conn_assente.png", width: 59%) #v(-1em) #box(inset: (x: 0.125em), outset: (y: 0.25em), fill: white, "Avviso connessione assente")]
  )
])

#slide("RISULTATI (2/3)", [
  #text(2em)[Esempi d'uso dell'applicazione #v(-0.6em)]
  #show grid: set text(1.5em)
  #grid(
    columns: (33%,auto),
    align: center+horizon,
    [#image("../images/altri_utenti.png", width: 59%) #v(-1em) Video di altri utenti],
    [#grid(
      columns: (50%,50%),
      [#image("../images/rec_camera.png", width: 59%)],
      [#image("../images/rec_nocamera.png", width: 58.89%)],
      grid.cell(colspan: 2)[#box(inset: (x: 0.125em), outset: (y: 0.25em), fill: white,text(0.7em)[Registrazione - fotocamera attiva/inattiva])]
    )]
  )
])

#slide("RISULTATI (3/3)", [
  #text(2em)[Funzionamento dell'applicativo in tre passaggi]
  #show grid: set text(2em)
  #align(center+horizon)[
  #grid(
    columns: (25%,25%,28%),
    align: center+horizon,
    [#image("../images/icons/mdi--video-wireless-outline.svg", width: 25%)],
    [#image("../images/icons/mdi--multimedia.svg", width: 25%)],
    [#image("../images/icons/mdi--cloud-upload.svg", width: 25%)],
    [ \ Gli *agenti* e gli *assicuratori* si *connettono* alla videoispezione #v(3em) ],
    [ \ *Ogni agente produce* i propri *contenuti multimediali* #v(3em) ],
    [ \ *L'applicativo carica i contenuti* multimediali acquisiti in *_background_* #v(3em)]
  )]
])

#slide("OBIETTIVI RAGGIUNTI", [
  #grid(
    columns: (50%,50%),
    inset: 1em,
    align: left,
    [#text(2em)[#align(center)[*OBBLIGATORI*]
    #list(marker: image("../images/icons/mdi--check-bold.svg"),
  [*Trasmissione in tempo reale* ad altri utenti connessi],
    [*Registrazione video/audio* trasmesso],
    [*Realizzazione istanze video* trasmesso],
    [*Raccolta minutaggi* di *inizio periodo senza connessione*],
    [*Caricamento in _background_* contenuti acquisiti]
    )
    
    ]],[
    #text(2em)[#align(center)[*FACOLTATIVI*]
    #list(marker: image("../images/icons/fa--close.svg"),
    [Implementazione *funzionalità di messaggistica*],
    [Creazione *interfacce* per la *visualizzazione* dei *contenuti multimediali* acquisiti],
    )
    #v(-0.5em)
    #move(dx: 8em)[#curve(
    tip: triangle, toe: none,
    std.curve.cubic((0pt, 20pt), (0pt, 10pt), (0pt,20pt)),
  )
  ]
    #v(0.5em)
    #move(dx: 1.2em)[*Cambio tecnologie* inizialmente *pianificate*, varie #box(inset: (x: 0.125em), outset: (y: 0.25em),fill: white, text()[*problematiche*]) *riscontrate* per garantire #box(inset: (x: 0.125em), outset: (y: 0.25em),fill: white, text()[il])  *funzionamento* tra *vari* #box(inset: (x: 0.125em), outset: (y: 0.25em),fill: white, text()[*_browser_*...])]
    ]
    ]
  )
])

#slide("CONCLUSIONI (1/2)",[
  #text(2em)[Opinioni sull'esperienza svolta:]
  #show grid: set text(2em)
  #align(center)[
  #grid(
    columns: (60%, 40%),
    align: (x,y) => if(x==0) {left} else {center+horizon},
    [  - *Esperienza* complessivamente *positiva*: *possibile integrazione* in *RiskApp* //Spiegare che complessivamente perché non ho fatto i facoltativi
      - *React* e *Ant Design*: tecnologie *interessanti*, *meritano* ulteriore *approfondimento*
      - *TypeScript*: *sviluppo* molto *più efficiente* di JavaScript //Spiegare esperienza sul completamento, che dava i consigli, js è più complesso
      - *Go*: *rapido sviluppo di _endpoint_* e componenti logiche, ancora *poco adatto per* servire pagine *HTML* //spiegare che la modifca è più macchinosa rispetto a PHP
  ],
  [#circle(fill: unipdColor, stroke: black+2pt, radius: 5em)[#image("../images/icons/mage--goals.svg", width: 100%)]]
  )]
])

#slide("CONCLUSIONI (2/2)",[
  #align(center+horizon)[
  #text(2em)[
    *Domande & Risposte*
  ]
  #v(2em)
  #text(1em)[La cosa importante è di non smettere mai di interrogarsi. La curiosità esiste per ragioni proprie. \ #move(dx: 16.3em)[\- _Albert Einstein_]]
  ]
])
*/