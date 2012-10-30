class ContentsController < ApplicationController
  # GET /contents
  # GET /contents.json
  def index
    @topic = Topic.find(params[:topic_id])
    @contents = @topic.contents.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @contents }
    end
  end

  # GET /contents/1
  # GET /contents/1.json
  def show
    @topic = Topic.find(params[:topic_id])
    @content = Content.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @content }
    end
  end

  # GET /contents/new
  # GET /contents/new.json
  def new
    @topic = Topic.find(params[:topic_id])
    @content = @topic.contents.build(params[:content])

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @content }
    end
  end

  # GET /contents/1/edit
  def edit
    @topic = Topic.find(params[:topic_id])
    @content = Content.find(params[:id])
  end

  # POST /contents
  # POST /contents.json
  def create
    @topic = Topic.find(params[:topic_id])
    @content = @topic.contents.build(params[:content])

    respond_to do |format|
      if @content.save
        format.html { redirect_to topic_path(@topic), notice: 'Content was successfully created.' }
        format.json { render json: @content, status: :created, location: @content }
      else
        format.html { render action: "new" }
        format.json { render json: @content.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /contents/1
  # PUT /contents/1.json
  def update
    @topic = Topic.find(params[:topic_id])
    @content = Content.find(params[:id])

    respond_to do |format|
      if @content.update_attributes(params[:content])
        format.html { redirect_to @topic, notice: 'Content was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @content.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contents/1
  # DELETE /contents/1.json
  def destroy
    @topic = Topic.find(params[:topic_id])
    @content = Content.find(params[:id])
    @content.destroy

    respond_to do |format|
      format.html { redirect_to contents_url }
      format.json { head :no_content }
    end
  end
end
