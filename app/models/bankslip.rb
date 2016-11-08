class Bankslip < ActiveRecord::Base
    belongs_to  :bank
    belongs_to  :department
    belongs_to  :purpose
    has_many    :departments
end
