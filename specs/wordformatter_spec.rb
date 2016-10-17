require 'minitest/autorun'
require 'minitest/rg'
require_relative '../models/wordformatter'
require 'pry-byebug'
class TestWordformatter < MiniTest::Test

    def setup

        @single_word = WordFormatter.new("mother123")
        @many_words = WordFormatter.new("Now is the time")
    end

    def test_uppercase
        result = @single_word.uppercase
        assert_equal("MOTHER123", result)
    end

    def test_camelize
        result = @many_words.camelize
        assert_equal("NowIsTheTime", result)
    end

binding.pry
end