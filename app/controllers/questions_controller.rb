class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer = coach_answer_enhanced(@question)
  end

  private

  def coach_answer(your_message)
    if your_message == "I am going to work right now!"
    elsif your_message.include? "?"
      "Silly question, get dressed and go to work!"
    else
      "I don't care, get dressed and go to work!"
    end
  end

  def coach_answer_enhanced(your_message)
    if your_message == "I AM GOING TO WORK RIGHT NOW!"
    elsif your_message == your_message.upcase && your_message.include?("?")
      "I can feel your motivation! Silly question, get dressed and go to work!"
    elsif your_message == your_message.upcase
      "I can feel your motivation! I don't care, get dressed and go to work!"
    else
      coach_answer(your_message)
    end
  end
end
