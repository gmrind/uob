class Bankslip < ActiveRecord::Base
    belongs_to  :bank
    belongs_to  :department
    belongs_to  :purpose
    has_many    :departments
    
    
    validates_presence_of   :aname, :fname, :cnic
end
