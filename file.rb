class File
    def get_file(name)
        file_name = get_file_name(input)
        File.open("./spec/fixtures/#{file_name}")
    end

    def file_names
        files = %w(empty extra-score free-text invalid-score negative perfect scores)
        Set.new(files)
    end

    def get_file_name(input)
        file = ""

        return file unless @games.include?(input)

        file = (input == "scores" || input == "perfect") ? "positive/" : "negative/"

        file + "#{input}.txt"
    end
end