class EnrollmentsController < ApplicationController
	before_action :authenticate_user!

	# def new
	# end


	def create
		if !current_course.free?
			# Amount in cents - STRIPE FUNCTIONALITY
		  @amount = (current_course.cost * 100).to_i

		  customer = Stripe::Customer.create(
		    :email => current_user.email,
		    :source  => params[:stripeToken]
		  )

		  charge = Stripe::Charge.create(
		    :customer    => customer.id,
		    :amount      => @amount, # Can never be less than .50
		    :description => 'Flixter-EDUK8 Course Content',
		    :currency    => 'usd'
		  )
		end

		current_user.enrollments.create(:course => current_course)
		redirect_to course_path(current_course)

	rescue Stripe::CardError => e
	  flash[:error] = e.message
	  redirect_to root_path

	end

	private

	def current_course
		@current_course ||= Course.find(params[:course_id])
	end

end
