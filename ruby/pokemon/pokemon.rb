# frozen_string_literal: true

class Pokemon
  attr_reader :name

  def initialize(_name, _type1, _type2, _hp)
    @name = _name
    @type1 = _type1
    @type2 = _type2
    @hp = _hp
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
