# frozen_string_literal: true

class Pokemon
  attr_reader :name

  def initialize(name, type1, type2, hp)
    @name = name
    @type1 = type1
    @type2 = type2
    @hp = hp
  end

  def attach
    puts "#{name}のこうげき！"
  end

  def chage_name(new_name)
    if name == 'うんこ'
      puts '不適切な名前です'
      return
    end

    @name = new_name
  end
end
