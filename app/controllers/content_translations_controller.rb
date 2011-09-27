class ContentTranslationsController < ApplicationController
  # GET /content_translations
  # GET /content_translations.json
  def index
    @content_translations = ContentTranslation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @content_translations }
    end
  end

  # GET /content_translations/1
  # GET /content_translations/1.json
  def show
    @content_translation = ContentTranslation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @content_translation }
    end
  end

  # GET /content_translations/new
  # GET /content_translations/new.json
  def new
    @content_translation = ContentTranslation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @content_translation }
    end
  end

  # GET /content_translations/1/edit
  def edit
    @content_translation = ContentTranslation.find(params[:id])
  end

  # POST /content_translations
  # POST /content_translations.json
  def create
    @content_translation = ContentTranslation.new(params[:content_translation])

    respond_to do |format|
      if @content_translation.save
        format.html { redirect_to @content_translation, notice: 'Content translation was successfully created.' }
        format.json { render json: @content_translation, status: :created, location: @content_translation }
      else
        format.html { render action: "new" }
        format.json { render json: @content_translation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /content_translations/1
  # PUT /content_translations/1.json
  def update
    @content_translation = ContentTranslation.find(params[:id])

    respond_to do |format|
      if @content_translation.update_attributes(params[:content_translation])
        format.html { redirect_to @content_translation, notice: 'Content translation was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @content_translation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /content_translations/1
  # DELETE /content_translations/1.json
  def destroy
    @content_translation = ContentTranslation.find(params[:id])
    @content_translation.destroy

    respond_to do |format|
      format.html { redirect_to content_translations_url }
      format.json { head :ok }
    end
  end
end
