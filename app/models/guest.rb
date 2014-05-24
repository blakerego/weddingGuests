class Guest < ActiveRecord::Base
  belongs_to :rsvp
  after_create :create_rsvp

  def create_rsvp
    rsvp = Rsvp.create
    self.rsvp = rsvp
    self.save
  end
end
