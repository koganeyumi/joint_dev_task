# 課題の回答は task.rb をご利用下さい。
# 回答の出力を確認される際は，「ruby main.rb」をターミナルから実行して下さい。

require './management'
require './message'

management = Management.new
management.prompt_input
management.output_answer


class UserQ20
  # 以下に回答を記載
  attr_accessor :user_name, :user_age

  def initialize(**params)
    @user_name = params[:name]
    @user_age = params[:age]
  end
end

class Zoo
  # 以下に回答を記載
   attr_accessor :name, :entry_fee
  
  def initialize(**params)
    @zoo_name = params[:name]
    @entry_fee = params[:entry_fee]
  end

  def info_entry_fee(user)
  
    case user.user_age
    when 0..5
      p "#{user.user_name}さんの入場料金は#{@entry_fee[:infant]}円です。"

    when 6..12
      p "#{user.user_name}さんの入場料金は#{@entry_fee[:children]}円です。"
    when 13..64
      p "#{user.user_name}さんの入場料金は#{@entry_fee[:adult]}円です。"

    when 65..120
      p "#{user.user_name}さんの入場料金は#{@entry_fee[:senior]}円です。"
    end   
  end
end

# def q20
  # ここは変更しないで下さい（動物園・ユーザー情報は変更していただいてOKです）
  zoo = Zoo.new(name: "旭山動物園", entry_fee: { infant: 0, children: 400, adult: 800, senior: 500 })

  users = [
    UserQ20.new(name: "たま", age: 3),
    UserQ20.new(name: "ゆたぼん", age: 10),
    UserQ20.new(name: "あじー", age: 32),
    UserQ20.new(name: "ぎん", age: 108)
  ]

  users.each do |user|
    zoo.info_entry_fee(user)
  end
# end