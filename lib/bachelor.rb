def get_first_name_of_season_winner(data, season)
  data.each do |timeOfYear, dataArray|
    if timeOfYear == season
      dataArray.each do |dataHash|
        dataHash.each do |key, value|
          if key == "status" && value == "Winner"
            winnerFullName = dataHash["name"]
            winnerFirstName = winnerFullName.split[0]
            return winnerFirstName
          end
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |timeOfYear, dataArray|
    dataArray.each do |dataHash|
      dataHash.each do |key, value|
        if key == "occupation" && value == occupation
          name = dataHash["name"]
          return name
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |timeOfYear, dataArray|
    dataArray.each do |dataHash|
      dataHash.each do |key, value|
        if key == "hometown" && value == hometown
          counter += 1
        end
      end
    end
  end
  return counter
end

def get_occupation(data, hometown)
  data.each do |timeOfYear, dataArray|
    dataArray.each do |dataHash|
      dataHash.each do |key, value|
        if key == "hometown" && value == hometown
          job = dataHash["occupation"]
          return job
        end
      end
    end
  end
end

def get_average_age_for_season(data, season)
  ageAdd = 0
  dividedBy = 0
  data.each do |timeOfYear, dataArray|
    if timeOfYear == season
      dataArray.each do |dataHash|
        dataHash.each do |key, value|
          if key == "age"
            age = value.to_f
            ageAdd += age
            dividedBy += 1
          end
        end
      end
    end
  end
  averageAge = ageAdd / dividedBy
  roundedAverageAge = averageAge.round
  return roundedAverageAge
end
