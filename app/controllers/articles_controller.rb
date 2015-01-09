class ArticlesController < ApplicationController


  def display_article
    @linked_article = Article.find(params[:query])
    p @linked_article
  end

  def search
    @articles = Article.search_by_title(params[:search_input])
  end
end
