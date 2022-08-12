require "csv"
 
    puts "1(新規でメモを作成) 2(既存のメモ編集する)"
 
    memo_type = gets.chomp.to_i

    if memo_type == 1
        puts "拡張子を除いたファイルを入力してください"
        file_name = gets.chomp
        puts "メモしたい内容を記入してください"
        puts "完了したら Ctrl+D をおします"
        memo = STDIN.read

        CSV.open("#{file_name}.CSV","w") do |csv|
        csv << ["#{memo}"]
    
    end 

    elsif memo_type == 2
        puts "ファイル名を入力してください"
        file_name = gets.chomp
        puts "内容を入力後　Ctrl+D をおしてください"
        memo = STDIN.read
        CSV.open("#{file_name}.CSV","a") do |csv|
        csv << ["#{memo}"]
    end
end
