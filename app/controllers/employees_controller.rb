class EmployeesController < ApplicationController
  SORTABLE_FIELDS = ['last_name',
                     'first_name',
                     'position',
                     'separation_date']
  def index
    @employees = Employee.all.order sort_field
  end

  private

  def sort_params
    params.permit :sort_field
  end

  def sort_field
    if SORTABLE_FIELDS.include? sort_params[:sort_field]
      sort_params[:sort_field]
    else
      :last_name
    end
  end

end
