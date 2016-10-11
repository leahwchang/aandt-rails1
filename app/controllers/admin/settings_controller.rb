class Admin::SettingsController < ApplicationController
  def index
  	@settings = Setting.all
  end

  def update
  	setting_params.each do |key, value|
  		Setting.where(key: key).first.update_attribute :value, value
  	end

  	Rails.application.reload_routes!
  	redirect_to admin_settings_path, notice: "Settings saved."
  end

  private

  def setting_params
  	params.require(:settings).permit(:homepage)
  end
  
end
