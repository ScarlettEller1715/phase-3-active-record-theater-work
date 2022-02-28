class Audition < ActiveRecord::Base
  belongs_to :role

  def role
    self.role
  end

  def call_back
    call_back_status = self.role.hired
    call_back_status.update(hired: true)
  end
end