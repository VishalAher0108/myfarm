class PlotController < ApplicationController
	def new
    	@plot = Plot.new
    	puts" =================this is plot controller ===================="
  	end

  	def create
	    # @plot = Plot.new(user_registration_params)
	    # puts"=========== Create ================="
	    # puts @user_registration.to_json
	    # puts"============================"

	    # respond_to do |format|
	    #   if @user_registration.save
	    #     # flash[:success] = "User registration was successfully created."
	    #     # redirect_to @user_registration
	    #     format.html { redirect_to @user_registration, notice: 'User registration was successfully created.' }
	    #     format.json { render :show, status: :created, location: @user_registration }
	    #   else
	    #     format.html { render :new }
	    #     format.json { render json: @user_registration.errors, status: :unprocessable_entity }
	    #   end
	    # end
  	end

end
