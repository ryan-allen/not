class Object
  
  class NotProxy

    @@methods_to_keep = /^__/, /class/, /instance_eval/, /method_missing/
  
    instance_methods.each do |m|
      undef_method m unless @@methods_to_keep.find { |r| r.match m }
    end
    
    def initialize(target)
      @target = target
    end

    def method_missing(method, *args, &block)
      !@target.send(method, *args, &block)
    end

  end

  def not
    NotProxy.new(self)
  end

end


if __FILE__ == $0

  class BoringStuff
    def boring?
      true
    end
  end

  class Tester
    def true?(op = nil, &block)
      if block
        !!block.call
      else
        !!op
      end
    end
  end

  require 'test/unit'

  class NotTest < Test::Unit::TestCase

    def assert_true(op)
      assert(op)
    end

    def assert_false(op)
      assert(!op)
    end
    
    def test_true_is_true
      assert_true true == true
    end

    def test_true_is_not_true_is_false
      assert_false true.not == true
    end

    def test_nil_is_nil_is_true
      assert_true nil == nil
    end

    def test_nil_is_not_nil_is_false
      assert_false nil.not == nil
    end

    def test_boring_stuff_is_boring_is_true
      assert_true BoringStuff.new.boring?
    end

    def test_boring_stuff_is_not_boring_is_false
      assert_false BoringStuff.new.not.boring?
    end

    def test_we_can_pass_in_args_with_not
      assert_true Tester.new.not.true?(false)
      assert_false Tester.new.true?(false) # for sanity's sake.
    end

    def test_we_can_pass_in_blocks_with_not
      assert_true Tester.new.not.true? do
        false
      end
      assert_false Tester.new.true? do # for sanity's sake.
        false 
      end
    end

    def test_chaining_despite_it_is_silly_but_is_sure_is_fun!
      assert_true true.not.not == true
      assert_false true.not.not.not == true
      assert_true true.not.not.not.not.not == false # lol!
    end

  end

end
