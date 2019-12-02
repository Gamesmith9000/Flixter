class EnrollmentsController < ApplicationController
	before_action :authenticate_user!

	def create
		if current_course.premium?
			# Amount in cents
			@amount = (current_course.cost * 100).to_i

			customer = Stripe::Customer.create(
			email: params[:stripeEmail],
			source: params[:stripeToken],
			)
		
			charge = Stripe::Charge.create(
			customer: customer.id,
			amount: @amount,
			description: ('Flixter Course: ' + current_course.title),
			description: ('Rails Stripe customer - Flixter Course ' + current_course.id.to_s + ' - ' + current_course.title),
			currency: 'usd',
			)
		end
		
		current_user.enrollments.create(course: current_course)
		redirect_to course_path(current_course)
		rescue Stripe::CardError => e
			flash[:error] = e.message
			# redirect_to root_path
			redirect_to root_path
		end

	private

	def current_course
		@current_course ||= Course.find(params[:course_id])
	end

end
