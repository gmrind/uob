class Bankslip < ActiveRecord::Base
    belongs_to  :bank
    belongs_to  :department
    belongs_to  :purpose
    has_many    :departments
    
  extend FriendlyId
  friendly_id :slug_candidates, use: :slugged

  def slug_candidates
    [
      [:aname, "bankslip-no", :id]  
    ]
  end
    validates_presence_of   :aname, :fname, :cnic
end
