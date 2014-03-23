module Refinery
  module Quotations
    module Admin
      class QuotationsController < ::Refinery::AdminController

        crudify :'refinery/quotations/quotation',
                :xhr_paging => true

      end
    end
  end
end
