// This is an example typst template (based on the default template that ships
// with Quarto). It defines a typst function named 'article' which provides
// various customization options. This function is called from the 
// 'typst-show.typ' file (which maps Pandoc metadata function arguments)
//
// If you are creating or packaging a custom typst template you will likely
// want to replace this file and 'typst-show.typ' entirely. You can find 
// documentation on creating typst templates and some examples here: 
//   - https://typst.app/docs/tutorial/making-a-template/
//   - https://github.com/typst/templates

#let article(
  title: none,
  
  cols: 2,
  margin: (left: 20mm, right: 20mm, top: 3cm, bottom: 20mm),
  paper: "a4",
  font: ("libertine"),
  fontsize: 12pt,
  sectionnumbering: none,
  toc_title: false,
  toc_depth:0,
  doc
) = {
  set page(
    paper: paper,
    margin: margin,
    //numbering: "1",
    header: align(right)[
      #image("unistuttgartlogo.png", width: 40%)
    ]
  )
  set par(justify: true)
  set text(font: font,
           size: fontsize)
  set heading(numbering: sectionnumbering)
  show heading.where(level: 1): set align(center)
  
 
    doc
 
}
