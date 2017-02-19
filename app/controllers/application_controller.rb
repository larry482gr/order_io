class ApplicationController < ActionController::Base
  protect_from_forgery unless: -> { request.format.json? }, prepend: true, with: :exception
  before_action :set_locale

  rescue_from ActionController::UnpermittedParameters, with: :invalid_params

  def default_url_options(options={})
    logger.debug "default_url_options is passed options: #{options.inspect}\n"
    { locale: I18n.locale }
  end

  protected

  def invalid_params
    flash[:alert] = 'Invalid parameters.'
    redirect_to :root
  end

  def set_locale
    unless current_user.nil?
      begin
        language = current_user.language
        params[:locale] = language.locale
      rescue ActiveRecord::RecordNotFound
        params[:locale] = 'gr'
      end
    end
    I18n.locale = params[:locale]
  end

  def not_found
    raise ActionController::RoutingError.new('Not Found')
  end

  def go_back
    redirect_to (session[:return_to] || root_path) and return
  end

  def debug_inspect (obj)
    puts "\n\n==============================\n"
    puts obj.inspect
    puts "\n==============================\n\n"
  end
end
