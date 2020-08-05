class Student < ActiveRecord::Base
  # attribute :active, :boolean, default: false
  
  def to_s
    self.first_name + " " + self.last_name
  end

  # def status
  #   if self.active
  #     return "active"
  #   else
  #     return "inactive"
  #   end
  # end

  # def toggle_active
  #   if self.active
  #     self.active = false
  #   else
  #     self.active = true
  #   end
  # end

end