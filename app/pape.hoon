=>  |%
    ++  move  (pair bone card)
    ++  card
      $%  {$hiss wire *}
          {$diff %pape-articles (list article)}
      ==
    ++  state
      $:  press-time/@da
          articles/(list article)
      ==
    ++  article
      $:  url/tape
          from/@p
          inserted-at/@da
      ==
    --
=,  gall
|_  $:  hid/bowl
        state
    ==
++  print-article
  |=  art=article
  ^-  $~
  ~&  ;:  weld
        url.art
        " ("
        (scow %p from.art)
        " at "
        (scow %da inserted-at.art)
        ")"
      ==
  ~
::
++  peer
  |=  arg=*
  ^-  (quip move _+>)
  ~&  arg=arg
  [[ost.hid %diff %pape-articles articles]~ +>.$]
::
++  poke-pape-push
  |=  url/tape
  ^-  (quip move _+>)
  :-  ~
  %=  +>
      articles
    %-  flop  :_  (flop articles)
    [url=url from=src.hid inserted-at=now.hid]
  ==
::
++  poke-pape-peek
  |=  $~
  ^-  (quip move _+>)
  =>  =<  -  :-  .
    ?~  articles
      ~
    (print-article i.articles)
  [~ +>.$]
::
++  poke-pape-read
  |=  $~
  ^-  (quip move _+>)
  ~&  press-time=press-time
  =>  =<  -  :-  .
    |- 
    ?~  articles  ~ 
    :-  (print-article i.articles)
    $(articles t.articles)
  [~ +>.$]
::
++  prep
  |=  old/(unit noun)
  ^-  [(list move) _+>.$]
  ?~  old
    `+>.$
  =+  new=((soft state) u.old)
  ?~  new
    `+>.$
  `+>.$(+<+ u.new)
--
