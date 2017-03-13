library(htmltools)

feature <- function(title="", img="", href="", desc="", dpkg="", codedin="") {
  
  if (codedin != "") {
    codedin = paste(br(),br(),"Languages/Libraries: ",codedin)
  }
  
  if (dpkg != "") {
    dpkg = paste(br(),br(),"Debian Package/Source - ",
                 a(href=dpkg,HTML(dpkg)))
  }
  
  div(class = "book",
      a(href=href,
        div(class = "bookImage",
            style=paste("background-image:url(",img,")")
        ),
        div(class = "bookMeta",
            div(class = "title",
                a(href=href,HTML(title))
            ),
            div(class = "overview",
                HTML(desc),
                HTML(codedin),
                HTML(dpkg)
            )
        )
      )
  )
}