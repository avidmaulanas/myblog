class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy, :remove_avatar,
    :account, :account_update , :password, :password_update]
  skip_before_filter :authenticate_user!, :only => [:show]

  # GET /users
  # GET /users.json
  def index
    @user = User.current
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to profile_url, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    if params[:user][:avatar].present?
      @user.avatar_crop_x = params[:user][:avatar_crop_x]
      @user.avatar_crop_y = params[:user][:avatar_crop_y]
      @user.avatar_crop_w = params[:user][:avatar_crop_w]
      @user.avatar_crop_h = params[:user][:avatar_crop_h]
      @user.avatar = params[:user][:avatar]
      @user.save
    end

    @user.slug = nil
    @user.account_required = false
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to profile_url, notice: 'Profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def remove_avatar
    @user.remove_avatar!
    @user.save
    redirect_to profile_url, notice: 'Avatar was successfully removed.'
  end

  def account
  end

  def account_update
    respond_to do |format|
      @user.skip_reconfirmation!
      if @user.update_without_password(account_params)
        format.html { redirect_to profile_account_url, notice: 'Account was successfully updated.' }
      else
        format.html { render :account }
      end
    end
  end

  def password
  end

  def password_update
    if @user.update_with_password(password_params)
      # Sign in the user by passing validation in case their password changed
      sign_in @user, bypass: true
      redirect_to profile_password_url, notice: 'Password was successfully changed.'
    else
      render :password
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = current_user || User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:username, :firstname, :lastname, :biographical_info,
        :avatar_crop_x, :avatar_crop_y, :avatar_crop_w, :avatar_crop_h, :avatar, :avatar_cache)
    end

    def account_params
      params.require(:user).permit(:email)
    end

    def password_params
      params.require(:user).permit(:current_password, :password, :password_confirmation)
    end
end
