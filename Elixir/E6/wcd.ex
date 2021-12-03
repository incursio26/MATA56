#Esse é um programa que conta palavras
IO.puts "Olá! Contaremos as palavras de um arquivo!"
filename = IO.gets("Insira o nome do arquivo para saber quantas palavras tem nele: ") |>String.trim
IO.puts "A quantidade de palavras do seu arquivo é: "
_ = filename
#Leitura do arquivo
|>File.read!
#Parâmetros de Filtro
|>String.split(~r{(\\n|[^\w'])+})
|>Enum.filter(fn x -> x != "" end )
#Contagem
|>Enum.count
#Exibindo na tela
|>IO.puts