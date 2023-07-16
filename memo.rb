require "csv"
puts "1 → 新規でメモを作成する / 2 → 既存のメモを編集する"

memo_type = gets.to_i # ユーザーの入力値を取得し、数字へ変換しています
 
 # if文を使用して続きを作成していきましょう。
 # 「memo_type」の値（1 or 2）によって処理を分岐させていきましょう。
if memo_type === 1
    puts "拡張子を除いたファイルを入力してください"
    memo_sentence = gets.chomp
    if memo_sentence
        CSV.open(memo_sentence + '.csv','w') do |memo_sentence|
            puts "メモしたい内容を記入してください"
            puts "入力したらCtrl+Dを押します"
            memo_container = gets.chomp
            memo_sentence << [memo_container]
        end
    end
elsif memo_type === 2
    puts "既存のファイルを拡張子を除いて入力してください"
    memo_sentence = gets.chomp
    if memo_sentence
        CSV.open(memo_sentence + '.csv','a') do |memo_sentence|
            puts "内容を追記してください"
            memo_container = gets.chomp
            memo_sentence << [memo_container]
        end
    end
end