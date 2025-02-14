module Spree
  module Admin
    class RecaptchaSettingsController < Spree::Admin::BaseController
      include Spree::Backend::Callbacks

      def edit
        @preferences_security = []
      end

      def update
        params.each do |name, value|
          # # next unless Spree::Config.has_preference? name
          # Spree::Config[name] = value
          next unless Spree::ContactUs::Config.has_preference? name
          Spree::ContactUs::Config[name] = value
        end

        flash[:success] = Spree.t(:successfully_updated, resource: Spree.t(:general_settings))
        redirect_to edit_admin_recaptcha_settings_path
      end
    end
  end
end
