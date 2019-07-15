class Player
  def hand
    p '数字を入力してください'
    player_hand = gets.to_i
    #if ((player_hand == 0) || (player_hand == 1) || (player_hand == 2))
    #  print ("ok")
    #end

    until ((player_hand == 0) || (player_hand == 1) || (player_hand == 2))
      print("0~2の数字を入力してください\n")
      player_hand = gets.to_i
    end


   print("\n Player: #{player_hand}")
    return player_hand
    # コンソールを入力待ち状態にし、プレイヤーがコンソールから打ち込んだ値を出力する処理のメソッドの処理をこの中に作成する
  end
end

class Enemy
  def hand
    # グー、チョキ、パーの値をランダムに出力するメソッドの処理をこの中に作成する
    enemy_hand = rand(0..2)
    print("\n Enemy: #{enemy_hand}")
    return enemy_hand
  end
end

class Janken
  def pon(player_hand, enemy_hand)
    deff = player_hand - enemy_hand
   if(deff%3==0)
     print("\n 引き分け\n")
     player = Player.new
     enemy = Enemy.new
     pon(player.hand, enemy.hand)
   elsif(deff%3==1)
     print("\n 負け\n")
   else
     print("\n 勝ち\n")
   end

    #が打ち込んだ値と、Enemyがランダムに出した値でじゃんけんをさせ、その結果をコンソール上に出力するメソッドをこの中に作成する
    # その際、あいこもしくはグー、チョキ、パー以外の値入力時には、もう一度ジャンケンをする
    # 相手がグー、チョキ、パーのうち、何を出したのかも表示させる

  end
end

player = Player.new
enemy = Enemy.new
janken = Janken.new

# 下記の記述で、ジャンケンメソッドが起動される
janken.pon(player.hand, enemy.hand)
