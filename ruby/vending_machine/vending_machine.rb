# frozen_string_literal: true

require './juice'
require './suica'

class VendingMachine
  def initialize
    @sales = 0
    @stock = []

    5.times { @stock.push(Juice.new('ペプシ', 150)) }
    5.times { @stock.push(Juice.new('モンスター', 230)) }
    5.times { @stock.push(Juice.new('いろはす', 120)) }
  end

  def show_stock
    items = []

    @stock.each do |item|
      items.push("#{item.name}(#{item.amount}円)")
    end

    item_list = items.group_by(&:itself).transform_values(&:count)

    item_menu = []
    item_list.each do |item, count|
      item_menu.push("#{item}:#{count}本")
    end

    item_menu
  end

  def buy(suica, select_item)
    index = @stock.find_index { |juice| juice.name == select_item }

    raise(StandardError, '該当する商品がありません') unless index

    juice = @stock.delete_at(index)
    @sales += juice.amount
    suica.pay(juice.amount)

    puts "#{juice.name}を買いました"
  end

  def restock(juice, number)
    number.times { @stock.push(juice) }
    puts "#{juice.name}(#{juice.amount}円)を#{number}本補充しました"
  end

  def sales
    @sales
  end
end
