class PigLatinizer
    attr_accessor :text

    def piglatinize(text)
        @text = text

        vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
        
        a = @text.split(" ")

        if a.length == 1

            if vowels.include?(text[0])
                "#{@text}way"
            else
                consonants = []
                consonants << @text[0]
                if vowels.include?(@text[1]) == false
                    consonants << @text[1]
                    if vowels.include?(@text[2]) == false
                    consonants << @text[2]
                    end
                end
                "#{@text[consonants.length..-1]}#{consonants.join}ay"
            end
        else
            self.pig_sentence
        end
    end

    def pig_sentence
        a = @text.split(" ")
        b = a.map {|word| piglatinize(word)}
        b.join(" ")
    end

end
