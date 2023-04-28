module Validate
    def file(game_data)
        return false if game_data.length < 10
        return false if game_data.any?{|row| isValidNumber(row[1])}

        true
    end

    def validate_game_data(game_data)
    end

    def isValidNumber(input)
        isNumber = input.bytes.any? { |ascii| ascii >= 0 && ascii <= 10 }

        isNumber && ["F", "X"].include?(input)
    end
end