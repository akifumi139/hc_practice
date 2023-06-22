# frozen_string_literal: true

class Suica
  def initialize
    @credit = 500
  end

  def charge(amount)
    raise(StandardError, '100円未満はチャージできません') if amount < 100

    @credit += amount
    puts "#{amount}円チャージしました"
  end

  def pay(price)
    @credit -= price
  end

  def credit
    @credit
  end
end
