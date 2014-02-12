class PagesController < ApplicationController
	before_filter :require_login, :only => :client_resources

	def home
	end

	def client_resources
	end

	def contact
	end

	def services
	end

	def programs
	end

	def testimonials
	end

	def track_record
	end

	def approach
	end

	def background
	end

	def visits
	end
	
end