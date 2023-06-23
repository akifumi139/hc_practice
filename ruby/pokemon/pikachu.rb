# frozen_string_literal: true

require './pokemon'

class Pikachu < Pokemon
  def attach
    super
    puts "#{name}の10万ボルト!"
  end
end
