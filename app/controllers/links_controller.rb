class LinksController < ApplicationController

    def show
      link = Link.find_by(lookup_code: params[:lookup_code])
      redirect_to link.original_url, allow_other_host: true
    end

    def index
      @links = Link.all
      @link = Link.new
    end

    def create
      shortner = Shortner.new(link_params[:original_url])
      @link = shortner.generate_link

      if @link.save
        redirect_to links_path
      end
    end

    private

    def link_params
        params.require(:link).permit(:original_url)
    end
end