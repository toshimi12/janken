def janken
  puts "じゃんけん・・・"
  puts "\n 0(グー)\n 1(チョキ)\n 2(パー)\n 3(戦わない)"
  
  player_hand=gets.to_i
  program_hand=rand(3)
  
  jankens=["グー", "チョキ","パー", "戦わない"]
 
  puts "ホイ！"
  
  puts"------------------------------"
  
  puts "あなた:#{jankens[player_hand]}を出しました,\n相手:#{jankens[program_hand]}を出しました"
  
    if player_hand == program_hand
    puts "あいこで・・・"
    return janken
    
    elsif (player_hand == 0 && program_hand == 1) || (player_hand == 1 && program_hand == 2) || (player_hand == 2 && program_hand == 0)    
    @janken_result = "win"
    p yubisashi
    
    elsif 
    player_hand == 3
    puts "終わります"
    
    else 
    @janken_result = "lose"
    p yubisashi
  end
end
  def yubisashi
  puts "あっち向いて〜"
  
  puts "\n 0(上)\n 1(下)\n 2(左)\n 3(右)"
    
  player_yubi=gets.to_i
  program_yubi=rand(4)
  
  yubi=["上","下","左","右"]
  
  puts "ホイ！"
  puts "--------------------"
  puts "あなた:#{yubi[player_yubi]}をだしました"
  puts "相手:#{yubi[program_yubi]}をだしました"
  
   if (player_yubi == program_yubi) && (@janken_result == "win")
    puts "あなたの勝利です"
    
  else if (player_yubi == program_yubi) && (@janken_result == "lose")
    puts "あなたの負けです"
  else
    return janken
  end
  end
end
  
  next_game = true
  while next_game
    next_game = janken
  end
  
  acchimuitehoi = false
  while acchimuitehoi
    acchimuitehoi = yubisashi
  end

  