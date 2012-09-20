class TasksController < ApplicationController
  add_breadcrumb "Topics", "/topics"



  # GET /tasks
  # GET /tasks.json
  def index
    @topic = Topic.find(params[:topic_id])
    @tasks = @topic.tasks

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tasks }
    end
  end

  # GET /tasks/1
  # GET /tasks/1.json
  def show
 
  
    @topic = Topic.find(params[:topic_id])
    @task = @topic.tasks.find(params[:id])
    add_breadcrumb @topic.name, topic_path(@topic)
    add_breadcrumb @task.name, topic_task_path(@topic,@task)
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @task }
    end
  end

  # GET /tasks/new
  # GET /tasks/new.json
  def new
    @topic = Topic.find(params[:topic_id])
    @task = @topic.tasks.build(params[:task])

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @task }
    end
  end

  # GET /tasks/1/edit
  def edit
    @topic = Topic.find(params[:topic_id])
    @task = @topic.tasks.find(params[:id])
  end

  # POST /tasks
  # POST /tasks.json
  def create
    @topic = Topic.find(params[:topic_id])
    @task = @topic.tasks.build(params[:task])

    respond_to do |format|
      if @task.save
        format.html { redirect_to topic_task_path(@topic,@task), notice: 'Task was successfully created.' }
        format.json { render json: @task, status: :created, location: @task }
      else
        format.html { render action: "new" }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tasks/1
  # PUT /tasks/1.json
  def update
    @topic = Topic.find(params[:topic_id])
    @task = @topic.tasks.find(params[:id])

    respond_to do |format|
      if @task.update_attributes(params[:task])
        format.html { redirect_to topic_task_path, notice: 'Task was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tasks/1
  # DELETE /tasks/1.json
  def destroy
    @task = Task.find(params[:id])
    @task.destroy

    respond_to do |format|
      format.html { redirect_to tasks_url }
      format.json { head :no_content }
    end
  end
end
