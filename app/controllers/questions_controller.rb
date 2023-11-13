class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = params[:answer]
    @coach_answer = ''
    if params[:answer] == 'I am going to work'
      @coach_answer = 'Great!'
    elsif params[:answer].include? '?'
      @coach_answer = 'Silly question, get dressed and go to work!'
    elsif params[:answer].include? '!'
      @coach_answer = "I don't care, get dressed and go to work!"
    end
  end
end
