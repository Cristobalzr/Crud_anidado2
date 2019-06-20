class EmployeesController < ApplicationController
  def create
    @employee = Employee.new(employee_params)
    @employee.save
    redirect_to company_path(params[:company_id])
  end

    def destroy
      @employee = Employee.find(params[:id])
      @employee.destroy
      redirect_to @employee.company
    end

  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :email, :company_id, :area_id)
  end
end
