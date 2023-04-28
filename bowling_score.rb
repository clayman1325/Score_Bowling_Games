require_relative "parser"
require_relative "validate"
require_relative "file"
require 'set'

include Parser
include Validate


class BowlingScore
    attr_accessor :games
    def initialize
        @file = File.new
        # @games = @file.file_names
    end

    def start(file_name)
        file      = @file.get_file(file_name)
        game_data = file.readlines.map { |row| row.chomp.split("\t") }
        return false unless file(game_data)
        game_data = parse(game_data)
        p game_data
    end

    def calculate_score
    end
end