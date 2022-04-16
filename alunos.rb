class Aluno
  attr_accessor :nome, :idade,  :notas
  def initialize(nome, idade, notas)
    @nome = nome
    @idade = idade
    @notas = notas
  end
  def aluno_situacao
    if aluno_aprovado?
      "O aluno #{@nome} foi Aprovado com a media: #{media}"
    elsif aluno_reprovado?
       "O aluno #{@nome} foi Reprovado com a media: #{media}"
    elsif aluno_recuperacao?
      "O aluno #{@nome} esta em Recuperacao com a media: #{media}"
    elsif aluno_modelo?
      "O aluno #{@nome} foi aprovado como aluno Modelo com a media: #{media}!"
    end
  end
  private
  def media
    @notas.inject(:+) / @notas.size
  end
  def aluno_aprovado?
    media >  6 && media <= 7.5
  end
  def aluno_reprovado?
    media < 5
  end
  def aluno_recuperacao?
    media >= 5 && media <= 6
  end
  def aluno_modelo?
    media >= 7.6 && media <= 10
  end
end