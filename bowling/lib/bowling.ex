defmodule Bowling do

  def score([]) do
    0
  end

  def score([[primer,segundo|_]|resto]) when primer + segundo == 10 do
    primer + segundo + hd(hd(resto)) + score(resto)
  end

  def score([[primer,segundo|_]|resto]) do
    primer + segundo + score(resto)
  end
  
end