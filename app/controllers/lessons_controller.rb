class LessonsController < ApplicationController
    before_action :authenticate_user!
    before_action :require_user_be_enrolled, only: [:show]

    def show
    end

    private

    helper_method :current_lesson

    def current_lesson
        @current_lesson ||= Lesson.find(params[:id])
    end

    def require_user_be_enrolled
        if !current_user.enrolled_in?(current_lesson.section.course)
            redirect_to course_path(current_lesson.section.course), alert: 'You must be enrolled in this course before you can view its lessons.'
        end
    end

end
