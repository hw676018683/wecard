class PeopleController < ApplicationController
	before_filter:authenticate_user!, except: 'show'
	def index

	if  current_user.person.nil?
		redirect_to new_person_path
		return 
	end

	@person = current_user.person
	@shared_people = []
	@people = current_user.person.shared_people
		@people.each do |person|
			@f_person = Person.find(person.shared_id)			
			@shared_people << @f_person
		end
	end



	def new  
		@person = Person.new
	end

	def create
		@person = current_user.build_person(person_params)
		if @person.save
			redirect_to people_path
		else
			render :new
		end
	end

	def edit
		@person = Person.find(params[:id])
	end

	def update
		@person = current_user.person
		if @person.update(person_params)
			redirect_to people_path
		else
			render :edit	
		end
	end

	def show
		@person = Person.find(params[:id])
		session[:url] = request.url
	end	

	def list
		@persons = []
		@person_ids = current_user.person.shared_people
		@person_ids.each do |id|
			@person = Person.find(id.shared_id)
			@persons << @person
		end
	end

	def collect
		@person = Person.find(params[:id])
		@relation = SharedPerson.new(person_id: current_user.person.id, shared_id: @person.id)
		begin
			 @relation.save
			 redirect_to people_path
			
		rescue ActiveRecord::RecordNotUnique
			flash.now[:error] = "has collected!"
			render 'show'
		end
		
	end

	def delete
		@relation = SharedPerson.find_by(person_id: current_user.person.id,shared_id: params[:id])
		@relation.destroy
		redirect_to people_path
	end


	private

	def person_params
		params.require(:person).permit(:name,:wechat_num,:phone,:qq,:email,:address, :picture, :skype, :MSN, :location, :conpany, :job)
	end
end
