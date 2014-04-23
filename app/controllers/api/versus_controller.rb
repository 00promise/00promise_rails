class Api::VersusController < Api::BaseController
  before_filter :auth_user, except: [:index, :show]
  def index
    @versus = Versus.includes([:politician_l, :politician_r, :replies]).order("updated_at desc").limit(1)
  end
  def show
    @versus = Versus.find(params[:id])
  end
  def vote
    @versus = Versus.find(params[:id])

    vote = @versus.votes.find_by_user_id current_user.id
    if vote != nil
      # 투표를 함
      vote.destroy
      #@code = CODE_FAIL
      #@message = vote.errors.full_messages.first
      #render_error
    end

    if params[:vote_id] == "0"
      vote = @versus.votes_l.create user_id: current_user.id
    elsif params[:vote_id] == "1"
      vote = @versus.votes_r.create user_id: current_user.id
    end
    @versus = Versus.find(params[:id])
  end
end
