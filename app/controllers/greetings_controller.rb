class GreetingsController < ApplicationController
  def random
    random_greeting = Message.order('RANDOM()').first
    render json: { greeting: random_greeting.greeting }
  end
end
