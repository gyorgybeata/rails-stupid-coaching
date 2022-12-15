class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    if @question == "hello"
      @answer = "Hello"
    elsif @question == "What time it is?"
      @answer = "Time: #{Time.now}"
    elsif @question == "What time it is?"
      @answer = "Great!"
    elsif @question[-1] == "?"
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
