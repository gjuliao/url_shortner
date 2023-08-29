class ClicksController < ApplicationController

  def create
    @click = Click.new(click_params)
    if @click.save
        flash[:success] = 'Click saved successfully'
        redirect_to links_path
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
