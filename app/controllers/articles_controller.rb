class ArticlesController < ApplicationController

  def display_article
    p "ASdsadsa"
    @linked_article = Article.find_by_title(params[:query])
    p @linked_article
  end


end
