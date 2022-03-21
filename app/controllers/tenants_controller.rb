class TenantsController < ApplicationController
    
    def create
        new_tenant = Tenant.create!(tenant_params)
        render json: new_tenant, status: :created
    end

    def index
        tenants = Tenant.all
        render json: tenants
    end

    def destroy
        tenant = Tenant.find(params[:id])
        tenant.destroy
        head :no_content
    end

    def update
        tenant = Tenant.find(params[:id])
        tenant.update!(tenant_params)
        render json: {message: "#{tenant.name} updated"},status: :ok
    end

    def show
        tenant = Tenant.find(params[:id])
        render json: tenant, status: :ok
    end


    private 
    def tenant_params
        params.permit(:name,:age)
    end




end
