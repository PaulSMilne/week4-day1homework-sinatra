class WordFormatter
    att_reader :word

    def initialize(word)
        @word = word
    end

    def uppercase
        @word.uppercase
    end

    def camelize
        words = @word.split('')
        capitalized_words = words.map{|word| word.capitalize}
        camelized = capitalized_words.join
        return camelized
    end



end