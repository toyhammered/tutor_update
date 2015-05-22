class Tutor < ActiveRecord::Base
    has_many :availability
    belongs_to :course
end