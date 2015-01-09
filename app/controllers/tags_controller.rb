class TagsController < ApplicationController

  def display_article_related_to_tags
    @linked_tag = (Tag.find(params[:query]))
    @linked_tag_articles = @linked_tag.articles
    p @linked_tag_articles
  end
end
