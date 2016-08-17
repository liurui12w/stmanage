class Admin::DepartmentsController < Admin::BaseController
  def index
    @deps = Department.all
  end

  def new
    @dep = Department.new
  end

  def create
    @dep = Department.new(dep_params)
    @dep.save
    redirect_to  :action => 'index'
  end

  def edit
    @deps = Department.find(params[:id])
  
  end

  def update
    @deps = Department.find(params[:id])
    @deps.update(dep_params)
    redirect_to :action => 'index'
  end


  def dep_params
    params.require(:department).permit!
  end
end
