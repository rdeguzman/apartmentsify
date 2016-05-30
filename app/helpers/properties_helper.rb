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
      d[:cover_photo] = 'http://apartmentsify.2rmobile.com' + property.photos.first.image().url(:medium)

      records.push d
    end

    return records

  end
end
