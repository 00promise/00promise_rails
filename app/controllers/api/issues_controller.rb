class Api::IssuesController < Api::BaseController
  def index
    count = params[:count] || 20
    page = params[:page] || 1
    @issues = Issue.includes(link: [:politician]).order("updated_at desc").page(page).per(count)
  end
  def show
    @issue = Issue.find(params[:id])
  end
end
