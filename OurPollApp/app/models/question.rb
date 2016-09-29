class Question < ActiveRecord::Base
  validates :text, :poll_id, presence: true

  has_many :answer_choices,
    primary_key: :id,
    foreign_key: :question_id,
    class_name: 'AnswerChoice'

  belongs_to :poll,
    primary_key: :id,
    foreign_key: :poll_id,
    class_name: 'Poll'

  has_many :responses,
    through: :answer_choices,
    source: :responses

  def results
    # answer_choices = self.answer_choices
    #
    # answer_counts = {}
    # answer_choices.each do |answer|
    #   answer_counts[answer.text] = answer.responses.count
    # end
    #
    # answer_counts

    answer_choices = self.answer_choices.includes(:responses)

    answer_counts = {}
    answer_choices.each do |answer|
      answer_counts[answer.text] = answer.responses.count
    end

    answer_counts
  end
end
