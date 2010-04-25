# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
	
	def javascript(*files)
		content_for(:head) { javascript_include_tag(*files) }
	end

	def stylesheet(*files)
		content_for(:head) { stylesheet_link_tag(*files) }
	end


	#show titles for the drop down list
	def title_list
		title_list = Array.new
		title_list[0] = ["Mr", "Mr"]
		title_list[1] = ["Ms", "Ms"]
		title_list[2] = ["Miss", "Miss"]
		title_list[3] = ["Mrs", "Mrs"]

		title_list
		#will return array like this     [["Mr", "Mr"], ["Ms", "Ms"], ["Mrs", "Mrs"]] 
	end
	
	def booking_week_list
		booking_week_list = Array.new
		booking_week_list[1] = ["1", "1 week"]
		booking_week_list[2] = ["2", "2 weeks"]
		booking_week_list[3] = ["3", "3 weeks"]

		booking_week_list
		#will return array like this     [["Mr", "Mr"], ["Ms", "Ms"], ["Mrs", "Mrs"]] 
	end
	
	#show titles for the drop down list
	def month_list
		month_list = Array.new
		month_list[0] = ["1", "Jan"]
		month_list[1] = ["2", "Feb"]
		month_list[2] = ["3", "Mar"]
		month_list[3] = ["4", "Apr"]
		month_list[3] = ["5", "May"]
		month_list[3] = ["6", "Jun"]
		month_list[3] = ["7", "Jul"]
		month_list[3] = ["8", "Aug"]
		month_list[3] = ["9", "Sep"]
		month_list[3] = ["10", "Oct"]
		month_list[3] = ["11", "Nov"]
		month_list[3] = ["12", "Dec"]

		month_list
		#will return array like this     [["Mr", "Mr"], ["Ms", "Ms"], ["Mrs", "Mrs"]] 
	end
end
