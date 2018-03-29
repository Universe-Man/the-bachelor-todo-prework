require "pry"

def get_first_name_of_season_winner(data, season)
  data.each do |timeOfYear, dataArray|
    if timeOfYear == season
      dataArray.each do |dataHash|
        dataHash.each do |key, value|
          if key == "status" && value == "Winner"
            winnerFullName = dataHash["name"]
            winnerFirstName = winnerFullName.split[0]
          end
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
end

def count_contestants_by_hometown(data, hometown)
  # code here
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
