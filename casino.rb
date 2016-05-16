#require_relative 'mencahnics/dice'
Dir[File.dirname(__FILE__) + '/mechanics/*.rb'].each {|file| require file}
class Casino
  include Mechanics

  def play
    puts Mechanics::Dice.roll
  end
end

@game = Casino.new
@game.play
