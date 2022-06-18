require "csv"
 
puts "1(新規でメモを作成) 2(既存のメモ編集する)"
 memo_type = gets.to_s
 puts "選択" + memo_type
 input_number = memo_type.chomp

#1の場合
if input_number == "1"
puts "ファイル名を入力してください"
file_name = gets.chomp

puts "メモしたい内容を記入してください"
puts "完了したらCtrl+Dを押してね（保存）"
input_memo = STDIN.read
memo = input_memo.chomp

CSV.open("#{file_name}.csv","w") do |csv|
csv.puts ["#{memo}"]
end

#2の場合
elsif input_number == "2"
puts "既存のメモ名を入力してください"
file_name = gets.chomp
puts "メモしたい内容を記入してください"
puts "完了したらCtrl+Dを押してね"
input_memo = STDIN.read
memo = input_memo.chomp
CSV.open("#{file_name}.csv","a") do |csv|
csv.puts ["#{memo}"]
end

else
puts "1か2の数字を入力してください"
end
