class MatchMailer < ApplicationMailer
	default from: 'RideMatcher@ridematcher.com'
	
	def requester_email(user)
		@case = user
		@url = "http://localhost:3000/accepts/index"
		@requester = Signup.where("username" => @case.request_id)
		@accepter = Signup.where("username" => @case.accept_id)
		@requester.each do |t|
			@first_name_r = t.first_name
			@last_name_r = t.last_name
			@email_r = t.email
			@mobile_r = t.phone_number
		end	
		
		@accepter.each do |t|
			@first_name_a = t.first_name
			@last_name_a = t.last_name
			@email_a = t.email
			@mobile_a = t.phone_number
		end		
		mail(to: @email_r, subject: 'Your ride post has been matched!')
	end
	
	def accepter_email(user)
		@case = user
		@url = "http://localhost:3000/accepts/index"
		@requester = Signup.where("username" => @case.request_id)
		@accepter = Signup.where("username" => @case.accept_id)
		@requester.each do |t|
			@first_name_r = t.first_name
			@last_name_r = t.last_name
			@email_r = t.email
			@mobile_r = t.phone_number
		end	
		
		@accepter.each do |t|
			@first_name_a = t.first_name
			@last_name_a = t.last_name
			@email_a = t.email
			@mobile_a = t.phone_number
		end	
		mail(to: @email_a, subject: 'Thank you for your acceptance!')
	end
end
