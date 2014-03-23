module Refinery
  module Quotations
    class Quotation < Refinery::Core::BaseModel
      self.table_name = 'refinery_quotations'

      attr_accessible :title, :name, :quote, :position

      validates :title, :presence => true, :uniqueness => true
    end
  end
end
