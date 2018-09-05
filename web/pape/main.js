console.log("hey")

function ourmain(args) {
  console.log("loading", args)
  urb.appl = "pape"
  urb.bind("/sentinel", receive_articles)
}

function receive_articles(err, arts) {
  if (err != null) {
    throw new Error("printer error", err)
  }

  console.log("receive", arts)

  arts.data.forEach((art) => {
    date = new Date(art.insertedat).toLocaleString()
    $("#articles").append(
      "<li><a href=\"" + art.url + "\">" + art.url +
      "</a> (~" + art.from + ", " + date + ")</li>"
    )
  })
}

window.urb.init(ourmain)
