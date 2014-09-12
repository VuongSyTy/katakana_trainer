class QuestionsController < BaseController

  def create
    question = Question.create_for! current_user, params[:type]
    redirect_to new_question_answer_path(question)
  end

end
