module Spree
  module ContactUs
    module StoreControllerDecorator
      def self.included(base)
        base.helper 'spree/recaptcha'
        include Spree::RecaptchaHelper
      end
    end
  end
end

::Spree::StoreController.include(::Spree::ContactUs::StoreControllerDecorator)