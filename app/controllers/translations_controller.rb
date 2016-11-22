class TranslationsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_models, only: [:index, :show]
  before_action :set_translation, only: [:show, :edit, :update, :destroy]

  # GET /translations
  # GET /translations.json
  def index
    @languages = Language.all.order(:id)
  end

  # GET /translations/1
  # GET /translations/1.json
  def show
    @languages = Language.all.order(:id)
    @fields = @selected_model.classify.constantize::TRANSLATION_FIELDS
  end

  # GET /translations/new
  def new
    @translation = Translation.new
  end

  # GET /translations/1/edit
  def edit
  end

  # POST /translations
  # POST /translations.json
  def create
    @translation = Translation.new(translation_params)

    respond_to do |format|
      if @translation.save
        format.html { redirect_to @translation, notice: 'Translation was successfully created.' }
        format.json { render :show, status: :created, location: @translation }
      else
        format.html { render :new }
        format.json { render json: @translation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /translations/1
  # PATCH/PUT /translations/1.json
  def update
    respond_to do |format|
      if @translation.update(translation_params)
        format.html { redirect_to @translation, notice: 'Translation was successfully updated.' }
        format.json { render :show, status: :ok, location: @translation }
      else
        format.html { render :edit }
        format.json { render json: @translation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /translations/1
  # DELETE /translations/1.json
  def destroy
    @translation.destroy
    respond_to do |format|
      format.html { redirect_to translations_url, notice: 'Translation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_models
      @models = ['categories', 'products', 'product_infos', 'sizes']
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_translation
      init_locale = I18n.locale
      index = params[:id].to_i
      @selected_model = @models[index - 1]
      @translations = {}
      I18n.locale = :en
      default = @selected_model.classify.constantize.all.order(:id)
      puts default
      @translations[I18n.locale] = default
      @languages = Language.where.not(locale: 'en').order(:id)
      @languages.each do |lang|
        I18n.locale = lang.locale.to_sym
        translation = @selected_model.classify.constantize.all.order(:id)
        puts translation
        @translations[lang.locale.to_sym] = translation
      end

      I18n.locale = init_locale
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def translation_params
      params.require(:translation).permit(:table_name, :locale, :reference_id, fields: [ :label, :description ])
    end
end
