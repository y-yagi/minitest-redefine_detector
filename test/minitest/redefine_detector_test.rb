require "test_helper"

class Minitest::RedefineDetectorTest < Minitest::Test
  def test_detect_redefine_test
    e = assert_raises(Minitest::RedefineDetector::RedefineError) do
      Class.new(Minitest::Test) do
        def test_name
        end

        def test_name
        end
      end
    end

    assert_match("test_name' was redefined", e.message)
  end
end
