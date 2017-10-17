require "minitest/redefine_detector/version"
require "minitest"

module Minitest
  module RedefineDetector
    class RedefineError < StandardError
      def initialize(name, trace)
        super("'#{name}' is already defined.")
        set_backtrace(trace)
      end
    end


    @@added_test_methods = []

    def method_added(name)
      super

      return unless name.to_s.start_with?("test_")
      test_name = "#{self}##{name}"

      if @@added_test_methods.include?(test_name)
        raise RedefineError.new(test_name, caller)
      end

      @@added_test_methods << test_name
    end
  end
end

Minitest::Test.extend(Minitest::RedefineDetector)
