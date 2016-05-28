module PropertiesHelper

  def format_properties(properties)

    records = []

    properties.each do |property|
      d = {}
      d[:id] = property.id
      d[:full_address] = property.full_address
      d[:weekly_rent_formatted] = property.weekly_rent_formatted
      d[:bedrooms] = property.bedrooms
      d[:bathrooms] = property.bathrooms
      d[:car_spaces] = property.car_spaces

      records.push d
    end

    return records

  end
end
