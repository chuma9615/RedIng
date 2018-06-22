class ActivitiesController < ApplicationController
  def index
    @activities = PublicActivity::Activity.order(:created_at)
    @activities_filtradas = []
    @activities.each do |activity|
      if activity.key.split(".")[1] == "update"
        next
      end

      if current_user.forums.include?(activity.trackable)
        activity.trackable.articles.each do |article|
          @activities_filtradas << [article, activity]
        end


      end
    end
  @activities_filtradas = @activities_filtradas.paginate(:page => params[:page], :per_page => 6)
  end


end
