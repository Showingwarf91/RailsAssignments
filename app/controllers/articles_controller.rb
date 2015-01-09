class ArticlesController < ApplicationController

  def display_article
    @linked_article = Article.find(params[:query])
    p @linked_article
  end

end
