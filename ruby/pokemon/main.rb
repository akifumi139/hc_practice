# frozen_string_literal: true

require './pikachu'

def main
  pika = Pikachu.new('ピカチュウ', 'でんき', '', 100)

  puts pika.name
  pika.attach
end

main
