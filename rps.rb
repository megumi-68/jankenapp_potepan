def game
puts "じゃんけん..."
  
def janken
  puts "0(グー) 1(チョキ) 2(パー) "

  my_hand = gets.to_i
  program_hand = rand(3)

  jankens = ["グー", "チョキ", "パー"]
  puts "あなた:#{jankens[my_hand]}, 相手:#{jankens[program_hand]}"

  if my_hand == program_hand
    puts "あいこで"
    puts "-----------------"
    return true
  elsif(my_hand == 0 && program_hand == 1)||(my_hand == 1 && program_hand == 2)||(my_hand == 2 && program_hand == 0)
    puts "あなたの勝ちです"
    puts "-----------------"
    @result = "win"
    return false
  else
    puts "あなたの負けです"
    puts "-----------------"
    @result = "lose"
    return false
  end
end

next_game = true

while next_game
  next_game = janken
end

if @result == "win"
    puts "あっち向いて..."
    puts "0:上 1:下 2:右 3:左"
    
    my_hoi = gets.to_i
    program_hoi = rand(4)
    
    hois = ["上" , "下" , "右" , "左"]
    
    puts "ホイ！"
    
    if my_hoi == program_hoi
        puts "あなた:#{hois[my_hoi]} 相手:#{hois[program_hoi]}"
        puts "あなたの勝ち！"
        puts "-----------------"
        return false
    else
        puts "あなた:#{hois[my_hoi]} 相手:#{hois[program_hoi]}"
        puts "引き分け"
        puts "-----------------"
        return true
    end
end

 if @result == "lose"
    puts "あっち向いて..."
    puts "0:上 1:下 2:右 3:左"
    
    my_hoi = gets.to_i
    program_hoi = rand(4)
    
    hois = ["上" , "下" , "右" , "左"]
    
    puts "ほい！"
    
    if my_hoi == program_hoi
         puts "あなた:#{hois[my_hoi]} 相手:#{hois[program_hoi]}"
        puts "あなたの負け！"
        puts "-----------------"
        return false
    else
        puts "あなた:#{hois[my_hoi]} 相手:#{hois[program_hoi]}"
        puts "引き分け"
        puts "-----------------"
        return true
    end
 end
end
 
next_game = true

while next_game
  next_game = game
end
  