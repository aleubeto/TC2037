defmodule Bowling do

  #C.f: Fin de función recursiva
  def score([]) do
    0
  end

  #C.f: Caso "one spare"
  def score([[primer,segundo|_]|resto]) when primer + segundo == 10 do
    primer + segundo + hd(hd(resto)) + score(resto)
  end

  #C.f: Caso "one strike"
  def score([[primer,_segundo|_]|resto]) when primer == 10 do # "segundo" con "_" pues no está siendo usada
    primer + hd(hd(resto)) + (hd(tl(hd(resto)))) + score(resto)
  end

  def score([[primer,segundo|_]|resto]) do
    primer + segundo + score(resto)
  end
  
end