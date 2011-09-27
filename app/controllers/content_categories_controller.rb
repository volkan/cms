class ContentCategoriesController < ApplicationController
  # GET /content_categories
  # GET /content_categories.json
  def index
    @content_categories = ContentCategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @content_categories }
    end
  end

  # GET /content_categories/1
  # GET /content_categories/1.json
  def show
    @content_category = ContentCategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @content_category }
    end
  end

  # GET /content_categories/new
  # GET /content_categories/new.json
  def new
    @content_category = ContentCategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @content_category }
    end
  end

  # GET /content_categories/1/edit
  def edit
    @content_category = ContentCategory.find(params[:id])
  end

  # POST /content_categories
  # POST /content_categories.json
  def create
    @content_category = ContentCategory.new(params[:content_category])

    respond_to do |format|
      if @content_category.save
        format.html { redirect_to @content_category, notice: 'Content category was successfully created.' }
        format.json { render json: @content_category, status: :created, location: @content_category }
      else
        format.html { render action: "new" }
        format.json { render json: @content_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /content_categories/1
  # PUT /content_categories/1.json
  def update
    @content_category = ContentCategory.find(params[:id])

    respond_to do |format|
      if @content_category.update_attributes(params[:content_category])
        format.html { redirect_to @content_category, notice: 'Content category was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @content_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /content_categories/1
  # DELETE /content_categories/1.json
  def destroy
    @content_category = ContentCategory.find(params[:id])
    @content_category.destroy

    respond_to do |format|
      format.html { redirect_to content_categories_url }
      format.json { head :ok }
    end
  end
end
