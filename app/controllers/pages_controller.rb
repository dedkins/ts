class PagesController < ApplicationController
  def landing
  	render layout: "landing"
  end

  def home
  	unless member_signed_in?
  		redirect_to pages_landing_path
  	end
  end
  
end
