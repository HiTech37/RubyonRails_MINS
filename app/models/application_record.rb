class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  def university
    raise NotImplementedError
  end
end
