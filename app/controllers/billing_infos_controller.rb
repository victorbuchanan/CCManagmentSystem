class BillingInfosController < ApplicationController
  # GET /billing_infos
  # GET /billing_infos.json
  def index
    @billing_infos = BillingInfo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @billing_infos }
    end
  end

  # GET /billing_infos/1
  # GET /billing_infos/1.json
  def show
    @billing_info = BillingInfo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @billing_info }
    end
  end

  # GET /billing_infos/new
  # GET /billing_infos/new.json
  def new
    @billing_info = BillingInfo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @billing_info }
    end
  end

  # GET /billing_infos/1/edit
  def edit
    @billing_info = BillingInfo.find(params[:id])
  end

  # POST /billing_infos
  # POST /billing_infos.json
  def create
    @billing_info = BillingInfo.new(params[:billing_info])

    respond_to do |format|
      if @billing_info.save
        format.html { redirect_to @billing_info, notice: 'Billing info was successfully created.' }
        format.json { render json: @billing_info, status: :created, location: @billing_info }
      else
        format.html { render action: "new" }
        format.json { render json: @billing_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /billing_infos/1
  # PUT /billing_infos/1.json
  def update
    @billing_info = BillingInfo.find(params[:id])

    respond_to do |format|
      if @billing_info.update_attributes(params[:billing_info])
        format.html { redirect_to @billing_info, notice: 'Billing info was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @billing_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /billing_infos/1
  # DELETE /billing_infos/1.json
  def destroy
    @billing_info = BillingInfo.find(params[:id])
    @billing_info.destroy

    respond_to do |format|
      format.html { redirect_to billing_infos_url }
      format.json { head :no_content }
    end
  end
end
