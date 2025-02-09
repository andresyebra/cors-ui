module Cors
  module Ui
    class ApplicationRecord < ActiveRecord::Base
      self.abstract_class = true
    end
  end
end
