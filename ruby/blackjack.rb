module Blackjack
  def self.parse_card(card)

    case card.downcase
      when 'ace' then 11
      when 'two' then 2
      when 'three' then 3
      when 'four' then 4
      when 'five' then 5
      when 'six' then 6
      when 'seven' then 7
      when 'eight' then 8
      when 'nine' then 9
      when 'ten', 'jack', 'queen', 'king' then 10
      else 0
    end
  end

  def self.card_range(card1, card2)

    total = parse_card(card1) + parse_card(card2)

    case total
      when (4..11) then "low"
      when (12..16) then "mid"
      when (17..20) then "high" 
      when 21 then "blackjack"
    end

  end
  def self.first_turn(card1, card2, dealer_card)
    player_score = parse_card(card1) + parse_card(card2)
    dealer_score = parse_card(dealer_card)

    if player_score == 21
      return "blackjack"
    elsif player_score >= 17
      return "stand"
    elsif player_score >= 12 && dealer_score < 7
      return "stand"
    else
      return "hit"
    end
  end
end
