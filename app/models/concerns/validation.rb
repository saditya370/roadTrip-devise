module Validation 
    extend ActiveSupport::Concern

    included do 
        validates :name, presence: true
        # validates :address, presence: true
    end


end