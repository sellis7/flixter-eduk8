class LessonsController < ApplicationController
	before_action :authenticate_user!
	before_action :require_authorized_for_current_lesson, :only => [:show]

	def show
	end

	private

	helper_method :current_lesson
	def current_lesson
		@current_lesson ||= Lesson.find(params[:id])
	end

	def require_authorized_for_current_lesson
		if !lesson_access
				redirect_to course_path(current_lesson.section.course), :alert => 'Lesson content only viewable when enrolled.'
		end
	end

	def lesson_access
		current_user.enrolled_in?(current_lesson.section.course) || current_user.id == current_lesson.section.course.user_id
	end

end
