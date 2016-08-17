class Admin::StudentsController <  Admin::BaseController
  def index
    @stu = Student.all
  end
  def new
    @stus = Student.new
    @de = Department.all
  end
  def create
    @stus = Student.new(stu_params)
    @stus.save
    redirect_to :action => 'index'
  end
  def stu_params
    params.require(:student).permit!
  end
end
