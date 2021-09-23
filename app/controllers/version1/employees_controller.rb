class Version1::EmployeesController < ApplicationController
    def index
        @employees=Employee.all
        render json:@employees,status:200
    end
    def create
        @employees=Employee.new(employee_params)
        @employees.save
        render json:@employees,status:201
    end
    
    private

    def employee_params
        params.require(:employee).permit(:first_name,:last_name,:company_name)
    end
end
