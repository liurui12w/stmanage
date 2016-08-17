class Admin::StudentsController <  Admin::BaseController
  def index
    @stus = Student.all
  end
  def new
    @stu = Student.new
    @de = Department.all
  end
  def create
    @stu = Student.new(stu_params)
    @stu.save
    redirect_to :action => 'index'
  end
  def edit
    @stus = Student.find(params[:id])
    @dep = Department.all
  end
  def update
    @stus = Student.find(params[:id])
    @stus.update(stu_params)
    redirect_to :action => 'index'
  end
  def destroy
    @stus =Student.find(params[:id])
    @stus.destroy
    redirect_to :action => 'index'
  end
  def stu_params
    params.require(:student).permit!
  end
end
