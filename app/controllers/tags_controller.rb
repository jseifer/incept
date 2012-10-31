class TagsController < ApplicationController
 
  
  def index
    query = params[:q]
    if query[-1,1] == " "
      query = query.gsub(" ", "")
     ActsAsTaggableOn::Tag.find_or_create_by_name(query)
    end

    #Do the search in memory for better performance

    @tags = ActsAsTaggableOn::Tag.all
    @tags = @tags.select { |v| v.name =~ /#{query}/i }
    respond_to do |format|
      format.json{ render :json => @tags.map(&:attributes) }
    end
  end
  
  
end
