class QuestionsController < ApplicationController

  #preguntar
  def ask_me
  end

  #responder
  def answer
    @question = params[:question]
    @answer = begin
      if @question == "i am going to work right now!"
        "Great!"
      elsif @question.blank
        @answer = "i can't hear you!"
      elsif @question.end_with?("?")
        "Silly question, get dressed and go to work!"
      else
       "I don't care, get dressed and go to work!"
      end
    end
  end
end

