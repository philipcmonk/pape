/?    310
=>  |%
    ++  article
      $:  url/tape
          from/@p
          inserted-at/@da
      ==
    --
|_  arts/(list article)
++  grow
  |%
  ++  json
    =+  e=enjs:format
    :-  %a
    %+  turn  arts
    |=  article  ^-  ^json
    %-  pairs:e
    ^-  (list {@t ^json})
    :~  url+(tape:e url)
        from+(ship:e from)
        insertedat+(time:e inserted-at)
    ==
  --
--
