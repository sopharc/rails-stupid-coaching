# frozen_string_literal: true

class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @user_input = params[:user_input]
     if @user_input == "I'm going to work"
       @coach = 'Great!'
     elsif @user_input.include? '?'
       @coach = 'Silly question, get dressed and go to work!'
     else
       @coach = "I don't care, get dressed and go to work!"
     end
  end
end
