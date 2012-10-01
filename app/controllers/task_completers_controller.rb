class TaskCompletersController < ApplicationController
  # GET /task_completers
  # GET /task_completers.json
  def index
  
   
    @task_completers = TaskCompleter.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @task_completers }
    end
  end

  # GET /task_completers/1
  # GET /task_completers/1.json
  def show
    @user = User.find(current_user)
    @task_completer = @user.task_completers.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @task_completer }
    end
  end

  # GET /task_completers/new
  # GET /task_completers/new.json
  def new
    @user = User.find(current_user)
    @task = Task.find(params[:task_id])
    @task_completer = @user.task_completers.build(:task_id => @task)
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @task_completer }
    end
  end

  # GET /task_completers/1/edit
  def edit
    @task_completer = TaskCompleter.find(params[:id])
  end

  # POST /task_completers
  # POST /task_completers.json
  def create
    @user = User.find(current_user)
    @task_completer = @user.task_completers.build(params[:task_completer])

    respond_to do |format|
      if @task_completer.save
        format.html { redirect_to @task_completer, notice: 'Task completer was successfully created.' }
        format.json { render json: @task_completer, status: :created, location: @task_completer }
      else
        format.html { render action: "new" }
        format.json { render json: @task_completer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /task_completers/1
  # PUT /task_completers/1.json
  def update
    @task_completer = TaskCompleter.find(params[:id])

    respond_to do |format|
      if @task_completer.update_attributes(params[:task_completer])
        format.html { redirect_to @task_completer, notice: 'Task completer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @task_completer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /task_completers/1
  # DELETE /task_completers/1.json
  def destroy
    @task_completer = TaskCompleter.find(params[:id])
    @task_completer.destroy

    respond_to do |format|
      format.html { redirect_to task_completers_url }
      format.json { head :no_content }
    end
  end
end
