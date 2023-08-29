class ClicksController < ApplicationController

  def show
    link = Link.find_by(id: @click.link_id)
    redirect_to link.original_url, allow_other_host: true
  end

  def create
    @click = Click.new(click_params)
    link = Link.find_by(id: @click.link_id)
    

    if @click.save
        flash[:success] = 'Click saved successfully'
        redirect_to link.original_url, allow_other_host: true, status: :found
    else
        flash[:error] = "Click failed"
        redirect_to links_path
    end
  end

  private

  def click_params
    params.permit(:link_id)
  end
end
