class Guest < ActiveRecord::Base

  after_create :assign_code
  belongs_to :rsvp

  def assign_code
    code = (0...6).map { ('A'..'Z').to_a[rand(26)] }.join
    self.update_attributes(:code => code)
  end

end
