class TaskCompletionsController < ApplicationController
  # GET /task_completions
  # GET /task_completions.json
  def index
    @task_completions = TaskCompletion.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @task_completions }
    end
  end

  # GET /task_completions/1
  # GET /task_completions/1.json
  def show
    @task_completion = TaskCompletion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @task_completion }
    end
  end

  # GET /task_completions/new
  # GET /task_completions/new.json
  def new
    @task_completion = TaskCompletion.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @task_completion }
    end
  end

  # GET /task_completions/1/edit
  def edit
    @task_completion = TaskCompletion.find(params[:id])
  end

  # POST /task_completions
  # POST /task_completions.json
  def create
    @task_completion = TaskCompletion.new(params[:task_completion])

    respond_to do |format|
      if @task_completion.save
        format.html { redirect_to @task_completion, notice: 'Task completion was successfully created.' }
        format.json { render json: @task_completion, status: :created, location: @task_completion }
      else
        format.html { render action: "new" }
        format.json { render json: @task_completion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /task_completions/1
  # PUT /task_completions/1.json
  def update
    @task_completion = TaskCompletion.find(params[:id])

    respond_to do |format|
      if @task_completion.update_attributes(params[:task_completion])
        format.html { redirect_to @task_completion, notice: 'Task completion was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @task_completion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /task_completions/1
  # DELETE /task_completions/1.json
  def destroy
    @task_completion = TaskCompletion.find(params[:id])
    @task_completion.destroy

    respond_to do |format|
      format.html { redirect_to task_completions_url }
      format.json { head :no_content }
    end
  end
end
