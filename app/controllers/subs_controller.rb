class SubsController < ApplicationController

  def new
    render :new
  end

  def create
    params[:sub][:moderator_id] = current_user.id

    @sub = Sub.new(params[:sub])

    if @sub.save
      redirect_to sub_url(@sub)
    else
      render :new
    end
  end

  def show
    @sub = Sub.find(params[:id])

    render :show
  end

  def edit
    @sub = Sub.find(params[:id])

    render :edit
  end

  def update
    @sub = Sub.find(params[:id])
    if current_user.id != @sub.moderator_id
      render text: "No."
    elsif @sub.update_attributes(params[:sub])
      redirect_to sub_url(@sub)
    else
      render :edit
    end
  end

  #

end
