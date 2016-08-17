class Admin::TeachersController < Admin::BaseController
  def index
    @tea = Teacher.all
  end
  def new
    @teas = Teacher.new
    @de = Department.all
  end
  def create
    @teas = Teacher.new(tea_params)
    @teas.save
    redirect_to :action => 'index'
  end
  def tea_params
    params.require(:teacher).permit!
  end
end
