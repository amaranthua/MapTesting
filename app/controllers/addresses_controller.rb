class AddressesController < ApplicationController

	def new	
		@address = Address.new
	end

	# create an address
	def create
		@address = Address.new(address_params)

		if @address.save
			redirect_to @address
		else
			render 'new'
		end
	end

	def edit
		@address = Address.find(params[:id])
	end

	def update
		@address = Address.find(params[:id])

		if @address.update(address_params)
			redirect_to @address
		else
			render 'edit'
		end
	end

	# show one address
	def show
		@address = Address.find(params[:id])	
	end

	# listing all address records
	def index
		@addresses = Address.all	
	end

	def destroy
		@address = Address.find(params[:id])
		@address.destroy

		redirect_to addresses_path
	end

	private 
		def address_params
			params.require(:address).permit(:latitude, :longitude, :title, :address, :discription)	
		end
end
