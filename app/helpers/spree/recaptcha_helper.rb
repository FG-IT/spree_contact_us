module Spree
  module RecaptchaHelper
    def recaptcha_enabled?
      if Spree::ContactUs::Config['enabled'].blank?
        return false
      end

      Spree::ContactUs::Config['site_key'].present? && Spree::ContactUs::Config['secret_key'].present?
    end

    def recaptcha_site_key
      Spree::ContactUs::Config['site_key']
    end

    def recaptcha_secret_key
      Spree::ContactUs::Config['secret_key']
    end
  end
end