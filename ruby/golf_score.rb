# frozen_string_literal: true

def calc(regulation_shot, shot)
  return 'コンドル' if regulation_shot == 5 && shot == 1

  return 'ホールインワン' if shot == 1

  socre = shot - regulation_shot

  case socre
  when -3
    'アルバトロス'
  when -2
    'イーグル'
  when -1
    'バーティ'
  when 0
    'パー'
  when 1
    'ボギー'
  else
    "#{socre}ボギー"
  end
end

arg = ARGF.read

input_data = arg.split(/\r\n|\r|\n/)
regulation_shot_list = input_data[0].split(',')
regulation_shot_list = regulation_shot_list.map(&:to_i)
shot_list = input_data[1].split(',')
shot_list = shot_list.map(&:to_i)

if regulation_shot_list.length != 18
  puts '18ホールのデータを準備してください'
  return
end

regulation_shot_list.each do |shot|
  if shot < 3 || shot > 5
    puts '入力された規定打数リストに範囲外の値が入っている'
    return
  end
end

shot_list.each do |shot|
  if shot < 1
    puts '入力された規定打数リストに範囲外の値が入っている'
    return
  end
end

regulation_shot = 2
shot = 2

score_list = []
for regulation_shot, shot in regulation_shot_list.zip(shot_list)
  score_list.push(calc(regulation_shot, shot))
end

p score_list.join(',')
