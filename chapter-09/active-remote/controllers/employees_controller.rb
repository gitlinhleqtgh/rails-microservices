class EmployeesController < ApplicationController
  def index
    @employees = Employee.search({})
  end

  def new
    @employee = Employee.new(guid: SecureRandom.uuid)
  end


  def set_employee
    @employee = Employee.search(guid: params[:id]).first
  end
end
