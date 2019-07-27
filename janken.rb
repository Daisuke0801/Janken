class Player
  def hand
    p '数字を入力してください'
    p '0:グー'
    p '1:チョキ'
    p '2:パー'

    player_hand = gets.chomp

    until ((player_hand == 0.to_s) || (player_hand == 1.to_s) || (player_hand == 2.to_s))
      print("0~2の数字を入力してください\n")
      player_hand = gets.chomp
    end

  if(player_hand == 0.to_s)
    p 'Player:グー'
  elsif(player_hand == 1.to_s)
    p 'Player:チョキ'
  else
    p 'Player:パー'
  end

    return player_hand.to_i
    # コンソールを入力待ち状態にし、プレイヤーがコンソールから打ち込んだ値を出力する処理のメソッドの処理をこの中に作成する
  end
end

class Enemy
  def hand
    # グー、チョキ、パーの値をランダムに出力するメソッドの処理をこの中に作成する
    enemy_hand = rand(0..2)

    if(enemy_hand == 0)
      p 'Enemy:グー'
    elsif(enemy_hand == 1)
      p 'Enemy:チョキ'
    else
      p 'Enemy:パー'
    end

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
