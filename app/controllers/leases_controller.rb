class LeasesController < ApplicationController

    def create
        new_lease = Lease.create!(lease_params)
        render json: new_lease, status: :created
    end

    # def index
    #     leases = Lease.all
    #     render json: leases
    # end

    def destroy
        lease = Lease.find(params[:id])
        lease.destroy
        render json: {message: "deleted"}
    end

    private 
    def lease_params
        params.permit(:rent,:tenant_id, :apartment_id)
    end

end
