require_relative 'alunos'

puts "Bem vindo ao sistema de cadastro de alunos"

alunos = []

2.times do |i|
  indice = i + 1
  puts "Digite o nome do aluno #{indice}"
  nome = gets.chomp.to_s
  puts "Idade do aluno #{indice}"
  idade = gets.chomp.to_i
  puts "Notas do aluno separadas por virgula #{indice}"
  notas = gets.chomp.to_s.split(",")
  notas = notas.map(&:to_f)

  aluno = Aluno.new(nome, idade, notas)
  alunos << aluno
  system("clear")
end

puts alunos.map(&:aluno_situacao)