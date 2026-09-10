// Por Micael Baruch
#let cdoc(title, author, date, n, doc) = [
  #set page(columns:n)
  #set text(lang: "pt", region: "BR")
  #show math.equation: set math.mat(delim:"[")
  #show math.equation: set block(breakable:true)
  #let ip(x, y) = $lr(angle.l #x, #y angle.r)$

  #let make_title(title, author, date) = {
    align(center)[
      #text(2em, weight: "bold", title)

      #author

      #date.display("[day]/[month]/[year]")
    ]
    v(2em) // Espaço extra após o título
  }

  // Chama a função no início do documento
  #place(top + center, scope:"parent", float: true, [#make_title(
    title,
    author,
    date,
  )]
)

  #doc
]
