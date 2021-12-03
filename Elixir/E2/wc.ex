IO.puts "Olá! Contaremos as palavras de um arquivo!"
filename = IO.gets("Insira o nome do arquivo para saber quantas palavras tem nele: ") |>String.trim
IO.puts "A quantidade de palavras do seu arquivo é: "
_ = filename
|>File.read!
|>String.split(~r{(\\n|[^\w'])+})
|>Enum.filter(fn x -> x != "" end )
|>Enum.count
|>IO.puts