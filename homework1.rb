# homework1
# 剪刀石頭布
# 先要使用者輸入剪刀石頭或布的其中一個選項
# 接下來讓電腦亂數選出一個選項
# 比較兩個選項，決定誰贏誰輸
# 輸出結果
# 問使用者是否再玩一次

begin #可以美化輸出
  puts "|===============================================|" 
  puts "|Welcome to Rock Paper Scissors!!!              |"
  puts "|===============================================|"

  begin 
    puts "please choose one of the following: R / P / S" # R / P / S 選一個
    user_input = gets.chomp.upcase # 使用者input
  end while !["R", "P", "S"].include?(user_input) #結束這一回合，前提：使用者input要有 R / P / S 之一

  #接下來請把剩下的部份寫出來...

  
  # 做一個 random 的 R / P / S
  RockPaperSissorArr = ["R","P","S"]
  # 電腦出拳
  computer_input = RockPaperSissorArr.sample

  



  # 如果
  if user_input == computer_input
    puts "竟然平手！"

  elsif user_input == "R"
    if computer_input == "P"
      puts "嫩咖～你輸了！"
    elsif computer_input == "S"
      puts "算你厲害，你贏了！"
    end

  elsif user_input == "P"
    if computer_input == "R"
      puts "算你厲害，你贏了！"
    elsif computer_input == "S"
      puts "嫩咖～你輸了！"
    end

  elsif user_input == "S"
    if computer_input == "R"
      puts "嫩咖～你輸了！"
    elsif computer_input == "P"
      puts "算你厲害，你贏了！"
    end


  end

  puts "電腦出：#{computer_input}；你出：#{user_input}" 

  



  #問使用者是否還要再玩 
  begin
    puts 'Play Again?: Y / N'
    continue = gets.chomp.upcase
  end while !["Y", "N"].include?(continue)

end while continue == 'Y'
# 若使用者回答 "N"，印出離開的訊息，不是就回到迴圈的上層繼續玩
puts 'Good Bye! Thanks for playing!'