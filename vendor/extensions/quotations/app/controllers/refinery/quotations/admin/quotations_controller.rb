module Refinery
  module Quotations
    module Admin
      class QuotationsController < ::Refinery::AdminController

        crudify :'refinery/quotations/quotation',
                :title_attribute => 'name',
                :xhr_paging => true

      end
    end
  end
end
