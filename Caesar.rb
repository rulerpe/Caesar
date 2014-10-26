
class Caesar_cipher
    
    def initialize(input,num_shift)
        up_ch = ("A".."Z").to_a
        low_ch = ("a".."z").to_a
    
        while num_shift>25
            num_shift-=26
        end
        @output = ""
        input.each_char do |ch|
            if is_char(ch)
                if ch == ch.upcase
                    cas = up_ch
                else
                    cas = low_ch
                end
                chr_num = cas.index(ch)
                chr_num += num_shift
                if chr_num > 25
                    chr_num -= 26
                end
                @output += cas[chr_num]
            else
                @output += ch
            end
            
        end
    end
    
    def result
        puts @output 
    end
    
    def is_char(chr)
        up_ch = "A".."Z"
        low_ch = "a".."z"
        return (low_ch.include?(chr))||(up_ch.include?(chr))? true : false
    end
end

text = Caesar_cipher.new("What a string!",5)
text.result