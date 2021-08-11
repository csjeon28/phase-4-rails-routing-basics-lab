class StudentsController < ApplicationController

    def index
        students = Student.all
        render json: students 
    end

    def grades
        students = Student.order(grade: :desc)
        render json: students
    end

    def highest_grade
        student = Student.order(grade: :asc).last
        render json: student
        # either of these would work to obtain the highest grade student of the students
        # student = Student.order(grade: :desc).first
        # render json: student
    end
end
