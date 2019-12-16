class UserRegistrationsController < ApplicationController
  before_action :set_user_registration, only: [:show, :edit, :update, :destroy]

  # GET /user_registrations
  # GET /user_registrations.json
  def index
    @user_registrations = UserRegistration.all
  end

  # GET /user_registrations/1
  # GET /user_registrations/1.json
  def show
  end

  # GET /user_registrations/new
  def new
    @user_registration = UserRegistration.new
  end

  # GET /user_registrations/1/edit
  def edit
  end

  # POST /user_registrations
  # POST /user_registrations.json
  def create
    @user_registration = UserRegistration.new(user_registration_params)
    puts"============================"
    puts @user_registration.to_json
    puts"============================"

    respond_to do |format|
      if @user_registration.save
        # flash[:success] = "User registration was successfully created."
        # redirect_to @user_registration
        format.html { redirect_to @user_registration, notice: 'User registration was successfully created.' }
        format.json { render :show, status: :created, location: @user_registration }
      else
        format.html { render :new }
        format.json { render json: @user_registration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_registrations/1
  # PATCH/PUT /user_registrations/1.json
  def update
    respond_to do |format|
      if @user_registration.update(user_registration_params)
        format.html { redirect_to @user_registration, notice: 'User registration was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_registration }
      else
        format.html { render :edit }
        format.json { render json: @user_registration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_registrations/1
  # DELETE /user_registrations/1.json
  def destroy
    @user_registration.destroy
    respond_to do |format|
      format.html { redirect_to user_registrations_url, notice: 'User registration was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_registration
      @user_registration = UserRegistration.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_registration_params
      # params.permit(:user_name, :state, :District, :taluka, :village,:address)
       params.require(:user_registration).permit(:user_name, :state, :District, :taluka, :village,:address)
    end
end
