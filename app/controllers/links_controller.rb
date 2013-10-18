class LinksController < ApplicationController

  def new
    render :new
  end

  def create
    params[:link][:user_id] = current_user.id
    sub_ids = params[:link][:subs]
    params[:link].delete(:subs)
    @link = Link.new(params[:link])

    sub_ids.each do |sub_id|
      @link.subs << Sub.find(sub_id)
    end

    if @link.save
      redirect_to link_url(@link)
    else
      render :new
    end
  end

  def show
    @link = Link.find(params[:id])

    render :show
  end

  def edit
    @link = Link.find(params[:id])

    render :edit
  end

  def update
    @link = Link.find(params[:id])
    if current_user.id != @link.moderator_id
      render text: "No."
    elsif @link.update_attributes(params[:link])
      redirect_to link_url(@link)
    else
      render :edit
    end
  end
end
