class Admin::TeachersController < Admin::BaseController
  def index
    @teas = Teacher.all
  end
  def new
    @tea = Teacher.new
    @de = Department.all
  end
  def create
    @tea = Teacher.new(tea_params)
    @tea.save
    redirect_to :action => 'index'
  end

  def edit
    @teas = Teacher.find(params[:id])
    @dep = Department.all
  end
  def update
    @teas = Teacher.find(params[:id])
    @teas.update(tea_params)
    redirect_to :action => 'index'
  end
  def destroy
    @teas =Teacher.find(params[:id])
    @teas.destroy
    redirect_to :action => 'index'
  end
  def tea_params
    params.require(:teacher).permit!
  end
end
