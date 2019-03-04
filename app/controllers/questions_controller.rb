class QuestionsController < ApplicationController
  def ask
  end

  def answer
     @question = params[:domanda]

  if @question == "I am going to work right now!"
    @message = ""
  elsif @question.include?("?")
    @message = "Silly question, get dressed and go to work!"
  else
    @message = "I don't care, get dressed and go to work!"
  end
    # params["question"].include?("?")
  end
end


# def coach_answer(your_message)
#   if your_message == "I am going to work right now!"
#     return ""
#   elsif your_message.include?("?")
#     return "Silly question, get dressed and go to work!"
#   else
#     return "I don't care, get dressed and go to work!"
#   end
#   # TODO: return coach answer to your_message
# end

# def coach_answer_enhanced(your_message)
#   if your_message == "I AM GOING TO WORK RIGHT NOW!"
#     return ""
#   else
#     return "I can feel your motivation! #{coach_answer(your_message)}"
#   end
#   # TODO: return coach answer to your_message, with additional custom rules of yours!
# end
