require "csv"
 
    puts "1(新規でメモを作成) 2(既存のメモ編集する)"
 
    memo_type = gets.to_s.chomp
    
    if memo_type == "1"
        
        puts "拡張子を除いたファイル名を入力してください"
        memo_name = gets.chomp
        puts "メモしたい内容を記入してください"
        puts "Ctrl + Dで終了してください"
        memo_contents = gets(chomp: true)
        memo = CSV.open(memo_name + ".csv","w")
        memo.puts [memo_contents]
        
    elsif  memo_type == "2"
        
        puts "編集するファイル名を拡張子を除いて入力してください"
        memo_name = gets.chomp
        memo = CSV.read(memo_name+".csv")
        puts "メモの内容"
        puts "#{memo}"
        puts "1(追記する) 2(終了する)"
        
        edit_type = gets.to_s.chomp
        if edit_type == "1"
            puts "追記したい内容を記入してください"
            puts "Ctrl + Dで終了してください"
            memo_contents = gets(chomp: true)
            memo = CSV.open(memo_name + ".csv","a")
            memo.puts [memo_contents]
            puts "編集完了"

        elsif edit_type == "2"
            puts "終了します"
        
        else
            puts "正しい数字を入力してください"
        end
    else
        
        puts "正しい数字を入力してください"
    end
    