library(htmltools)

feature <- function(title="", img="", href="", desc="", dpkg="", repo="", codedin="") {

  if (codedin != "") {
    codedin = paste(br(),
                    "Languages/Libraries: ",
                    codedin)
  }

  if (dpkg != "") {
    dpkg = paste(br(),
                 "Debian Package/Source: ",
                 a(href=dpkg,HTML(dpkg)))
  }

  if (repo != "") {
    repo = paste(br(),
                 "Repository: ",
                 a(href=repo,HTML(repo)))
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
                br(),
                HTML(codedin),
                HTML(dpkg),
                HTML(repo)
            )
        )
      )
  )
}
