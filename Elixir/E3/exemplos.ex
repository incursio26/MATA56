#funções anônimas: são as funções que não posusem nomes.
exp = fn (a, b) -> :math.pow(a,b) end
exp.(2, 3)

#funções nomeadas: são aquelas que têm o defmodule como cabeçalho, possuem nomes e uma estrutura bem estabelecida.
defmodule Aleatorio0 do
  def ale do
    "Aqui vai um número aleatório: " 
    Enum.random(0..10000)
  end
end

#funções privadas: são as funções que ficam restritas para execução de outros módulos, só podendo ser acionadas dentro de seus próprios módulos.

defmodule Aleatorio0 do
  def ale do
    "Aqui vai um número aleatório: " 
    Enum.random(0..10000)
  end
   defp aleTwo do
   	"Aqui vão dois números aleatórios: " 
    Enum.random(0..10000)
    Enum.random(0..10000)
   end
end