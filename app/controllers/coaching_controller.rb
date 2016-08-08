class CoachingController < ApplicationController
  def answer
    @query = params[:query]
    phrase = coach_answer(@query)
    if @query == @query.upcase
      if phrase == ""
        @stupid_answer = ""
      else
        @stupid_answer = "I can feel your motivation! " + phrase
      end
    else
      @stupid_answer = coach_answer(@query)
    end
  end

  def ask
  end
end

def coach_answer(your_message)
  # TODO: return coach answer to your_message
  if your_message.downcase == "i am going to work right now!"
    ""
  elsif your_message.include? "?"
    "Silly question, get dressed and go to work!"
  else
    "I don't care, get dressed and go to work!"
  end
end
