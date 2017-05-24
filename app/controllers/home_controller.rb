class HomeController < ApplicationController
  before_action :authenticate_user!
	def general
		render "general"
	end

end
