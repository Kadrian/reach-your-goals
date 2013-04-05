class BarsController < ProtectedController 
  # GET /bars
  # GET /bars.json
  def index
    @bars = Bar.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bars }
    end
  end

  def save 
    @bars = Bar.all
    params[:players].each do |player|
        @bar = Bar.find_by_name(player[1][:name])
        @bar.score = player[1][:score].to_i
        @bar.save
    end

    respond_to do |format|
      format.json { head :ok }
    end
  end

  def load
    @bars = Bar.all
    
    respond_to do |format|
      format.json { render json: @bars}
    end
  end


  ## POST /bars
  ## POST /bars.json
  #def create
    #@bar = Bar.new(params[:bar])

    #respond_to do |format|
      #if @bar.save
        #format.html { redirect_to @bar, notice: 'Bar was successfully created.' }
        #format.json { render json: @bar, status: :created, location: @bar }
      #else
        #format.html { render action: "new" }
        #format.json { render json: @bar.errors, status: :unprocessable_entity }
      #end
    #end
  #end

  ## PUT /bars/1
  ## PUT /bars/1.json
  #def update
    #@bar = Bar.find(params[:id])

    #respond_to do |format|
      #if @bar.update_attributes(params[:bar])
        #format.html { redirect_to @bar, notice: 'Bar was successfully updated.' }
        #format.json { head :no_content }
      #else
        #format.html { render action: "edit" }
        #format.json { render json: @bar.errors, status: :unprocessable_entity }
      #end
    #end
  #end

end

