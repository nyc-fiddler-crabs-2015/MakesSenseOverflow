module ApplicationHelper
	def nice_date(date)
		date.strftime(" %m/%d/%Y at %I:%M%p ")
	end
end
