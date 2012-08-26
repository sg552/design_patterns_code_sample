class Apple
  methods = ["hi", "goodbye", "goodday"]
  methods.each do |method_name|
    define_method method_name do
      puts method_name
    end
  end
end

apple = Apple.new
apple.hi
apple.goodbye

class Delegator
  def initialize(apple)
    @apple = apple
  end
  extends Forwardable
  def_delegators :apple, :hi, :goodbye, :goodday
end
delegator = Delegator.new(apple)
delegator.hi
delegator.goodbye
delegator.goodday
