class Response < ActiveRecord::Base
  validates :answer_choice_id, :user_id, presence: true
  validate :respondent_already_answered?
  validate :respondent_is_author?

  belongs_to :respondent,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: 'User'

  belongs_to :answer_choice,
    primary_key: :id,
    foreign_key: :answer_choice_id,
    class_name: 'AnswerChoice'

  has_one :question,
    through: :answer_choice,
    source: :question

  def sibling_responses
    self
      .question
      .responses
      .where.not(id: self.id)
  end

  private
  def respondent_already_answered?
    if sibling_responses.any? { |response| response.user_id == self.user_id}
      errors[:respondent_error] << "Respondent has already responded!"
    end
  end

  def respondent_is_author?
    poll_author = self.answer_choice.question.poll.author

    if self.respondent == poll_author
      errors[:author_error] << "This responder is the author of this poll!"
    end
  end
end
