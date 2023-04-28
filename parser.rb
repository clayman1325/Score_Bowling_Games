module Parser
    def initialize
        @game_data = {};
    end

    def parse(game_data)
        @game_data = separate_players(game_data);
    end

    def separate_players(game_data)
        players = {};
        game_data.reduce({}) do |players, row|
            row[1] = 0 if row[1] == "F"
            players[row[0]] = players[row[0]] ? players[row[0]].push(row[1]) : []
            players
        end
    end
end