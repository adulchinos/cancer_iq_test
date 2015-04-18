class PatientsController < ApplicationController

	def index
		@patients = Patient.all
	end

	def new
		@patient = Patient.new
	end

	def create
		@patient = Patient.create({:first_name => params[:first_name], :last_name => params[:last_name], :date_of_birth => params[:date_of_birth]})
		redirect_to '/'
	end

	def show
		@patient = Patient.find(params[:id])
		@cancers = Cancer.where(patient_id: params[:id])
	end

	def edit
		@patient = Patient.find(params[:id])
	end

	def update
		@patient = Patient.find(params[:id])
		@patient.update({:first_name => params[:first_name], :last_name => params[:last_name], :date_of_birth => params[:date_of_birth]})
		redirect_to '/patients/' + @patient.id.to_s
	end

end
