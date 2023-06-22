require './suica'
require './vending_machine'

machine = VendingMachine.new
puts '自動販売機のラインナップはこれです'
p machine.show_stock

my_suica = Suica.new
puts "Suicaの残高には#{my_suica.credit}円です"

puts 'Suicaにいくらチャージしますか？'
amount = gets.chomp.to_i
my_suica.charge(amount)

puts '何を買いますか？'
select_juice = gets.chomp

machine.buy(my_suica, select_juice)
puts "現在の残高は #{my_suica.credit}円です"

machine.restock(Juice.new('モンスター', 230), 10)
puts "自動販売機の売上は#{machine.sales}円です"

puts '自動販売機のラインナップはこれです'
p machine.show_stock