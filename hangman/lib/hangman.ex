defmodule Hangman do
  def score_guess({secret, rights, wrongs, attempts}, guess) do
    if secret =~ guess do
      {secret, rights <> guess, wrongs, attempts}
    else
      {secret, rights, wrongs <> guess, attempts - 1}      
    end 
  end
end