class MblogsController < ApplicationController
  # GET /mblogs
  # GET /mblogs.json
  def index
    @mblogs = Mblog.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mblogs }
    end
  end

  # GET /mblogs/1
  # GET /mblogs/1.json
  def show
    @mblog = Mblog.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mblog }
    end
  end

  # GET /mblogs/new
  # GET /mblogs/new.json
  def new
    @mblog = Mblog.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mblog }
    end
  end

  # GET /mblogs/1/edit
  def edit
    @mblog = Mblog.find(params[:id])
  end

  # POST /mblogs
  # POST /mblogs.json
  def create
    @mblog = Mblog.new(params[:mblog])

    respond_to do |format|
      if @mblog.save
        format.html { redirect_to @mblog, notice: 'Mblog was successfully created.' }
        format.json { render json: @mblog, status: :created, location: @mblog }
      else
        format.html { render action: "new" }
        format.json { render json: @mblog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mblogs/1
  # PUT /mblogs/1.json
  def update
    @mblog = Mblog.find(params[:id])

    respond_to do |format|
      if @mblog.update_attributes(params[:mblog])
        format.html { redirect_to @mblog, notice: 'Mblog was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @mblog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mblogs/1
  # DELETE /mblogs/1.json
  def destroy
    @mblog = Mblog.find(params[:id])
    @mblog.destroy

    respond_to do |format|
      format.html { redirect_to mblogs_url }
      format.json { head :no_content }
    end
  end
end
