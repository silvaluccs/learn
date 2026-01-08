
module Port

  IDENTIFIER = :"PALE"

  def self.get_identifier(city)
    identifier_city = city[0..3]
    identifier_city.upcase.to_sym
  end
  def self.get_terminal(ship_identifier)
    identifier_city = ship_identifier[0..2].to_s

    if identifier_city == "OIL" || identifier_city == "GAS"
        :"A"
    else
        :"B"
    end
  end
end
