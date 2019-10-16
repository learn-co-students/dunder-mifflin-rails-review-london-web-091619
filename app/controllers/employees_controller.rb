class EmployeesController < ApplicationController

    def index
        @employees = Employee.all
    end

    def show
        @employee = Employee.find(params[:id])
    end

    def new
        @employee = Employee.new
    end

    def create
        @employee = Employee.create(employee_params(:first_name, :last_name, :alias, :title, :office, :dog_id))
        if @employee.valid?
            redirect_to employee_path(@employee)
        else
            render :new
        end
    end

    def edit
        @employee = Employee.find(params[:id])
    end

    def update
        @employee = Employee.update(employee_params(:first_name, :last_name, :alias, :title, :office, :dog_id))
        if @employee.valid?
            redirect_to employee_path(@employee)
        else
            render :edit
        end
    end

    private 

    def employee_params(*args)
        params.require(:employee).permit(*args)
    end
end
