class UsersController < ApplicationController

  def show
    user = User.find_by(id: params[:id])
    user_data(user)
  end

  def get_auth_user_data
    if session[:user_id]
      user = User.find_by(id: session[:user_id])
      user_data(user)
    else
      render json: { error: 'No user found' }, status: 400
    end
  end
  

  def sign_in
    user = User.find_by({email: user_params[:email].downcase})

    if user && user.authenticate(user_params[:password_digest])
      session[:user_id] = user.id
      user_data(user)
    else
      render json: { error: "User credentials are invalid."}, status: 400
    end 
  end

  def sign_out
    session.delete(params[:user_id])
    render json: { message: "User has signed out." }
  end

  private

    def user_params
      params.require(:user).permit(:email, :password_digest)
    end

    def user_data (user)
      render json: { 
          user: filtered_user(user),
          userMedGroupArr: user_med_group_data(user),
          bond: user_bond_data(user),
          pendingInvite: user_pending_bond_invites(user)
        }
    end
  
    def user_med_group_data (user)
      user.med_groups.map do |med_group|
        {
          id: med_group.id, # <== blame aaron: added this line
          name: med_group.name,
          detail: med_group.detail,
          complianceTime: med_group.compliance_time,
          isCompliedToday: med_group.med_histories.where("created_at > '#{Date.today.to_s(:long)}'")[0] ? true: false
        }
      end
    end

    def user_bond_data (user)
      Bond.find_by(id: user.bond_id)
    end

    def user_pending_bond_invites (user)
      BondInvite.where(user_id: user.id)
    end

end
