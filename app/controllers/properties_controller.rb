class PropertiesController < ApplicationController
	before_action :owner_user, only: [:new, :create, :destroy]

	def index
    @properties = Property.paginate(page: params[:page])
	end

	def show
		@property = Property.find(params[:id])
	end

	def edit
		@property = Property.find(params[:id])
	end

	def new
    @property = Property.new
	end

  def update
    @property = Property.find(params[:id])
    if @property.update(property_params)
      flash[:success] = "Property updated"
      redirect_to @property
    else
      render 'edit'
    end
  end

	def create
	   @property = current_user.properties.build(property_params)
    	if @property.save
      		flash[:success] = "Property Added"
      		redirect_to @property
    	else
      		render 'properties/new'
    	end
  	end

  def destroy
    @property = Property.find(params[:id])
  	@property.destroy
    flash[:success] = "Property deleted"
    redirect_to :back
  end

   private

    def property_params
      params.require(:property).permit(:property_type, :address, :location, :bedroom, :bathroom, :other, :rent, :picture, :picture2, :picture3, :picture4, :picture5 )
    end

end
