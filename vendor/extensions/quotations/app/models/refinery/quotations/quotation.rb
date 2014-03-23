module Refinery
  module Quotations
    class Quotation < Refinery::Core::BaseModel
      self.table_name = 'refinery_quotations'

      attr_accessible :name, :quote, :position

      validates :name, :presence => true, :uniqueness => true
    end
  end
end
