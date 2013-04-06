class PlayersController < ProtectedController 
  # GET /players
  # GET /players.json
  def index
    @players = Player.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @players }
    end
  end

  def save 
    @players = Player.all
    params[:players].each do |player|
        @player = Player.find_by_name(player[1][:name])
        @player.score = player[1][:score].to_i
        @player.save
    end

    respond_to do |format|
      format.json { head :ok }
    end
  end

  def load
    @players = Player.all
    
    respond_to do |format|
      format.json { render json: @players}
    end
  end


  ## POST /players
  ## POST /players.json
  #def create
    #@player = Player.new(params[:player])

    #respond_to do |format|
      #if @player.save
        #format.html { redirect_to @player, notice: 'Player was successfully created.' }
        #format.json { render json: @player, status: :created, location: @player }
      #else
        #format.html { render action: "new" }
        #format.json { render json: @player.errors, status: :unprocessable_entity }
      #end
    #end
  #end

  ## PUT /players/1
  ## PUT /players/1.json
  #def update
    #@player = Player.find(params[:id])

    #respond_to do |format|
      #if @player.update_attributes(params[:player])
        #format.html { redirect_to @player, notice: 'Player was successfully updated.' }
        #format.json { head :no_content }
      #else
        #format.html { render action: "edit" }
        #format.json { render json: @player.errors, status: :unprocessable_entity }
      #end
    #end
  #end

end

