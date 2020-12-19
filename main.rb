# 課題の回答は task.rb をご利用下さい。
# 回答の出力を確認される際は，「ruby main.rb」をターミナルから実行して下さい。

require './management'
require './message'

management = Management.new
management.prompt_input
management.output_answer

class Item
  # 以下を修正して下さい
attr_reader :name

  def initialize(name:)
    @name = name
  end
end


  # ここは変更しないで下さい
  book = Item.new(name: "ゼロ秒思考")
  puts book.name
