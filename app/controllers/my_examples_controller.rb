class MyExamplesController < ApplicationController
  def random_fortune
    index = rand(2)
    fortunes = ["You will be rich", "You will be poor", "You will be average"]
    render json: { message: fortunes[index] }
  end

  def lotto_numbers
    lottery = []
    6.times do
      number = rand(60)
      lottery << number
    end
    render json: { message: lottery }
  end

  def counter
    #In order to do this the server would need to be tracking how many times the get request was made.
  end

  def beer
    lyrics = []
    number = 99
    100.times do
      if number == 0
        lyrics << "No more bottles of beer on the wall, no more bottles of beer. Go to the store and buy some more, 99 bottles of beer on the wall."
      elsif number == 2
        lyrics << "#{number} bottles of beer on the wall, #{number} bottles of beer. Take one down and pass it around, #{number - 1} bottle of beer on the wall."
        number = number - 1
      elsif number == 1
        lyrics << " #{number} bottle of beer on the wall, #{number} bottle of beer. Take one down, and pass it around, no more bottles of beer on the wall."
        number = number - 1
      else
        lyrics << "#{number} bottles of beer on the wall, #{number} bottles of beer. Take one down and pass it around, #{number - 1} bottles of beer on the wall."
        number = number - 1
      end
    end
    render json: { message: lyrics }
  end
end
