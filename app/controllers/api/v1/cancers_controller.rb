class Api::V1::CancersController < ApplicationController
	def index
		@cancers = Cancer.where(patient_id: params[:id])
	end

	def create	
		@new_cancer = Cancer.create({:cancer_type => params[:cancer_type], :age_of_diagnosis => params[:age_of_diagnosis], :patient_id => params[:patient_id]})
		@cancers = Cancer.where(patient_id: params[:id])
	end
end
