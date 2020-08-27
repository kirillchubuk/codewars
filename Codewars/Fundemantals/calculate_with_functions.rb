class Operation
  def initialize(num, op)
    @num = num
    @op = op
  end

  def perform(num)
    num.send(@op, @num.to_f)
  end
end

NUMBER_WORDS = %w(zero one two three four five six seven eight nine)
OPERATION_WORDS = {
    :"+" => "plus",
    :"-" => "minus",
    :"*" => "times",
    :"/" => "divided_by"
}

NUMBER_WORDS.each_with_index do |word, num|
  define_method word.to_sym do |operation = nil|
    operation ? operation.perform(num) : num
  end
end

OPERATION_WORDS.each do |method, word|
  define_method word.to_sym do |num|
    Operation.new(num, method)
  end
end


############
#
# %w(zero one two three four five six seven eight nine).each_with_index do |name, index|
#  define_method(name) do |proc = nil|
#    proc.nil? ? index : proc.call(index)
#  end
#end
#
#
#def times(right)
#  Proc.new {|left| left * right }
#end
#def plus(right)
#  Proc.new {|left| left + right }
#end
#def minus(right)
#  Proc.new {|left| left - right }
#end
#def divided_by(right)
#  Proc.new {|left| left.to_f / right }
#end
#
# #################################
#
# @numbers = { zero: "0.0", one: "1.0", two: "2.0", three: "3.0", four: "4.0",
#             five: "5.0", six: "6.0", seven: "7.0", eight: "8.0", nine: "9.0" }
#@operations = { plus: "+", minus: "-", times: "*", divided_by: "/"}
#
# def method_missing(name, *args)
#  @numbers.member?(name) ?
#      instance_eval(@numbers[name] + args[0].to_s) :
#      @operations[name] + args[0].to_s
#end
#
#
#
######################################
#
# {
#  :zero  => 0,
#  :one   => 1,
#  :two   => 2,
#  :three => 3,
#  :four  => 4,
#  :five  => 5,
#  :six   => 6,
#  :seven => 7,
#  :eight => 8,
#  :nine  => 9
#}.each do |meth, val|
#  define_method("#{meth}") { |op = nil| op.nil? ? val : val.send(*op) }
#end
#
#{
#  plus:       :+,
#  minus:      :-,
#  times:      :*,
#  divided_by: :fdiv
#}.each{ |meth, op| define_method(meth) {|other|  [op, other] } }
#
#
#
#
#
# ######
#
#
# def zero(m = nil)
#  return 0 unless m
#  op, num = m
#  0.to_f.send(op.to_sym, num.to_f)
#end
#
#def one(m = nil)
#  return 1 unless m
#  op, num = m
#  1.to_f.send(op.to_sym, num.to_f)
#end
#
#def two(m = nil)
#  return 2 unless m
#  op, num = m
#  2.to_f.send(op.to_sym, num.to_f)
#end
#
#def three(m = nil)
#  return 3 unless m
#  op, num = m
#  3.to_f.send(op.to_sym, num.to_f)
#end
#
#def four(m = nil)
#  return 4 unless m
#  op, num = m
#  4.to_f.send(op.to_sym, num.to_f)
#end
#
#def five(m = nil)
#  return 5 unless m
#  op, num = m
#  5.to_f.send(op.to_sym, num.to_f)
#end
#
#def six(m = nil)
#  return 6 unless m
#  op, num = m
#  6.to_f.send(op.to_sym, num.to_f)
#end
#
#def seven(m = nil)
#  return 7 unless m
#  op, num = m
#  7.to_f.send(op.to_sym, num.to_f)
#end
#
#def eight(m = nil)
#  return 8 unless m
#  op, num = m
#  8.to_f.send(op.to_sym, num.to_f)
#end
#
#def nine(m = nil)
#  return 9 unless m
#  op, num = m
#  9.to_f.send(op.to_sym, num.to_f)
#end
#
#def divided_by(m)
#  return '/', m
#end
#
#def plus(m)
#  return '+', m
#end
#
#def minus(m)
#  return '-', m
#end
#
#def times(m)
#  return '*', m
#end