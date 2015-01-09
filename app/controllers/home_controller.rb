class HomeController < ApplicationController
  def index
    @articles = Article.all
    @tags = Tag.all
    respond_to do |format|
      format.html
      format.json {render json: @articles}
    end
  end
end
