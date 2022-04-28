class Spree::ContactUsConfiguration < Spree::Preferences::Configuration
  preference :contact_tracking_message, :string, default: nil
  preference :enabled, :boolean, default: true
  preference :site_key, :string
  preference :secret_key, :string
end
