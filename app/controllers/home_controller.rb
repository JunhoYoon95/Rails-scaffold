class HomeController < ApplicationController
  def index
    # 게시글들을 보여야겠지. Article 이라는 변수 안에서 모두 post 라는 변수 안에다가 저장을 한다
    @post = Article.all
  end

  def create
    # post는 Article 에다가 새로운것을 만든다
    @post = Article.new
    # post에는 무엇을 넣느냐면
    @post.title   = params[:title]
    @post.author  = params[:author]
    @post.content = params[:content]
    # 등록을 하는 것이지
    @post.save
    redirect_to "/"
  end

  def update
    @post = Article.find(params[:id])
    @post.title   = params[:title]
    @post.author  = params[:author]
    @post.content = params[:content]
    @post.save
    redirect_to "/"
  end

  def delete
    Article.find(params[:id]).destroy
    redirect_to "/"
  end

  def create_form
    
  end

  def update_form
    @post = Article.find(params[:id])
  end

  def reply_create
    @post = Reply.new
    @post.article_id   = params[:article_id]
    @post.content      = params[:content]
    # 등록을 하는 것이지
    @post.save
    redirect_to "/"
  end

  def reply_delete
    Reply.find(params[:reply_id]).destroy
    redirect_to "/"
  end

  def reply_update_form
    @reply = Reply.find(params[:reply_id])
  end

  def reply_update
    @reply = Reply.find(params[:reply_id])
    @reply.content = params[:content]
    @reply.save
    redirect_to '/'
  end
end