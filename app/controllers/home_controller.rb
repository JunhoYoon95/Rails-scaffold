class HomeController < ApplicationController
  def index
    # 게시글들을 보여야겠지. Article 이라는 변수 안에서 모두 post 라는 변수 안에다가 저장을 한다
    @post = Article.all
  end

  def create
  end

  def update
  end

  def delete
  end

  def create_form
    
  end

  def update_form
  end
end