class ApplicationController < ActionController::Base
  add_flash_types :info, :error, :warning

  def current_user
    User.first
  end
end
