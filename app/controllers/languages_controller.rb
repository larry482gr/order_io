class LanguagesController < ApplicationController
  # GET /languages.json
  def index
    @languages = Language.all.order(:id)
  end
end
