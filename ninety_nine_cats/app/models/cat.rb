# == Schema Information
#
# Table name: cats
#
#  id          :bigint           not null, primary key
#  birth_date  :date             not null
#  color       :string           not null
#  name        :string           not null
#  sex         :string           not null
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'action_view'

class Cat < ApplicationRecord
    include ActionView::Helpers::DateHelper

    CAT_COLORS = ['Red', 'Blue', 'Green', 'Brown', 'Black', 'White']
    validates :birth_date, :color, :name, :sex, presence: true
    validates :color, inclusion: {in: CAT_COLORS}
    validates :sex, inclusion: {in: ['M', 'F']}
    validate :birth_date_cannot_be_future

        def birth_date_cannot_be_future
            if birth_date.present? && birth_date > Date.today
                errors.add(:birth_date, "can't be in the future")
            end
        end

        def age
            time_ago_in_words(birth_date)
        end
end
