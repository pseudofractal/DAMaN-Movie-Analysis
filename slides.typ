#import "@preview/polylux:0.4.0": *
#import "@preview/pinit:0.2.2": *
#set page(paper: "presentation-16-9", fill: rgb("#1e1e2e"))

#let text-size = 20pt
#let heading-size = 1.5 * text-size
#let important-size = 1.2 * text-size
#let funsies-size = 0.8 * text-size

#set text(size: text-size, fill: rgb("#cdd6f4"), font: "Maple Mono")
#show figure: set text(size: text-size * 0.8)
#show heading: set text(fill: rgb("#74c7ec"))
#show heading: set align(center)

#let emph(term) = text(fill: rgb("#94e2d5"), term)
#let important(term, size: important-size) = text(
  fill: rgb("#b4befe"),
  size,
  align(
    center,
    box(
      stroke: 0.1 * text-size + rgb("#94e2d5"),
      outset: important-size * 0.75,
    )[#term],
  ),
)

#let funsies(term) = place(
  bottom + center,
  dx: 0pt,
  dy: heading-size,
  block(
    width: 100%,
    align(center)[#text(size: funsies-size, fill: rgb("#fab387"), term)],
  ),
)

#let split-pane(img, description, body) = {
  let auto-desc = img.split(".").first()
  let final-desc = if description == "" { auto-desc } else { description }
  columns(2, gutter: 0.25 * text-size)[
    #set par(justify: false)
    #body
    #colbreak()
    #figure(
      image("images/" + img, width: 100%),
      caption: final-desc,
    )
  ]
}

#let movie-frame(img, subtitle, rot: 0deg, fitting: "contain") = align(
  center,
  block(
    height: 100%,
    inset: 0pt,
  )[
    #rotate(rot, image("images/" + img, width: 100%, fit: fitting))
    #align(center)[
      #text(
        size: text-size * 0.8,
        fill: rgb("#f9e2af"),
        style: "italic",
        subtitle,
      )
    ]
  ],
)

#slide[
  #movie-frame("daman-poster.jpg", "Malaria Eradication in Inaccessible Areas.")
  #place(dx: 150pt, dy: -20pt)[Presented by: Kshitish Kumar Ratha (MS22174)]
]

#slide[
  #heading[Brief Summary of the Film]

  - Set in #emph[2015]
  - Siddharth, a young doctor, is posted to a #emph[remote tribal area of Odisha]
  - The region has #emph[151 villages] with minimal facilities
  - Villagers suffering from malaria often rely on #emph[traditional beliefs] instead of treatment
  - Early interventions fail despite medicines and mosquito nets
  - Over time, a #emph[structured campaign] reduces malaria cases

  #v(0.5em)

  #important[
    The film is not just about one doctor.
    Its about the conditions under which healthcare fails.
  ]
]

#slide[
  #movie-frame(
    "there-is-nothing-here.jpeg",
    "There is nothing here.. How is someone supposed to work like this?"
  )
]

#slide[
  #split-pane("swades.jpg", "Swades")[#figure(
    image("images/abhijit-banerjee.jpg", height: 100%),
    caption: "Abhijit Banerjee",
  )]
]

#slide[
  #movie-frame(
    "it-is-malaria.jpeg",
    "You think this is a spirit? This is an illness",
  )
]

#slide[
  #split-pane("pad-man.jpg", "Pad-Man")[#figure(
    image("images/arthur-klienman.jpg", height: 100%),
    caption: "Arthur Kleinmann",
  )]
]

#slide[
  #movie-frame(
    "we-have-to-carry-her.jpeg",
    "We have to carry her... There is no other way.",
  )
]

#slide[
  #heading[Three Layers of Healthcare]

  #v(1em)

  We can think of healthcare in three layers:

  - #emph[Availability] — does care exist?
  - #emph[Accessibility] — can people physically reach it?
  - #emph[Usability] — can they actually make use of it?

  #v(0.5em)

  The film shows that rural healthcare fails
  even when availability is partially solved.

  #v(1em)

  #important[
    If a patient cannot reach a hospital,
    then for that patient, the hospital does not exist.
  ]
]

#slide[
  #movie-frame(
    "malaria-nets-misused.jpeg",
    "They are using the nets... but not for sleeping",
  )
]

#slide[
  #heading[Why Good Interventions Still Fail]

  #v(1em)

  Policies often assume that once a solution is provided,
  people will use it in the intended way.

  But people use objects according to:

  - immediate needs
  - habits
  - environment
  - local priorities

  #v(1em)

  So the gap is not just between policy and people.

  It is between #emph[design] and #emph[lived reality].

]

#slide[
  #heading[The Limits of Individual Effort]

  #v(0.25em)

  Siddharth is doing far more than one person should.  He is:
  - transporting patients
  - explaining medical knowledge
  - distributing resources
  - coordinating action across villages

  #v(0.5em)

  They are functions that should belong to
  #emph[institutions, infrastructure, and networks].

  #v(1em)

  #important[
    He is not only treating malaria.
    He is compensating for the absence of a system.
  ]
]

#slide[
  #movie-frame(
    "there-are-so-many-villages.jpeg",
    "There are so many villages, how can one person reach all of them?",
  )
]

#slide[
  #movie-frame(
    "if-we-dont-go.jpeg",
    "If we don't go, no one will!",
  )
]

#slide[
  #movie-frame(
    "it-needs-to-become-a-system.jpeg",
    "It can not depend on one person... It has to become a system.",
  )

]

#slide[
  #heading[Final Argument]

  #v(1em)

  Across the film, the same pattern appears again and again.

  Healthcare does not fail only at the point of treatment. It fails in the conditions that make treatment possible:

  - access
  - communication
  - policy design
  - system structure

  #v(1em)

  #important[
    What looks like a medical problem
    is often a systemic one.
  ]
]

#slide[
  #heading[Conclusion]

  #v(0.8em)

  *DAMaN* is not just a story about a doctor fighting malaria.

  It is a story about how healthcare actually works.
  The film shows that:

  - Medicine must be reachable
  - Treatment must be trusted
  - Policy must fit everyday life
  - Care must be supported by systems, not just sacrifice

  #v(1.2em)

  #important[
    Effort can start change,
    but only systems can sustain it.
  ]

]

#slide[
  #movie-frame("system-working.jpeg", "System Working!")
]

#slide[
  #movie-frame(
    "malaria-nets-working.jpeg",
    "People Using Malaria Nets Properly!",
  )
]

#slide[
  #split-pane(
    "dr-hota.jpg",
    "Dr. Omkar Hota carrying a bleeding pregnant women to Malkangiri hospital.",
  )[
    #heading[Cases Decreased from 40% to 4% in span of 2 years.]
  ]
]
