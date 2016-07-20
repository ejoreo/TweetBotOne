class TweetDeetsController < ApplicationController
  before_action :set_tweet_deet, only: [:show, :edit, :update, :destroy]

  # GET /tweet_deets
  # GET /tweet_deets.json
  def index
    @tweet_deets = TweetDeet.all
  end

  # GET /tweet_deets/1
  # GET /tweet_deets/1.json
  def show
  end

  # GET /tweet_deets/new
  def new
    @tweet_deet = TweetDeet.new
  end

  # GET /tweet_deets/1/edit
  def edit
  end

  # POST /tweet_deets
  # POST /tweet_deets.json
  def create
    @tweet_deet = TweetDeet.new(tweet_deet_params)

    respond_to do |format|
      if @tweet_deet.save
        format.html { redirect_to @tweet_deet, notice: 'Tweet deet was successfully created.' }
        format.json { render :show, status: :created, location: @tweet_deet }
      else
        format.html { render :new }
        format.json { render json: @tweet_deet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tweet_deets/1
  # PATCH/PUT /tweet_deets/1.json
  def update
    respond_to do |format|
      if @tweet_deet.update(tweet_deet_params)
        format.html { redirect_to @tweet_deet, notice: 'Tweet deet was successfully updated.' }
        format.json { render :show, status: :ok, location: @tweet_deet }
      else
        format.html { render :edit }
        format.json { render json: @tweet_deet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tweet_deets/1
  # DELETE /tweet_deets/1.json
  def destroy
    @tweet_deet.destroy
    respond_to do |format|
      format.html { redirect_to tweet_deets_url, notice: 'Tweet deet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tweet_deet
      @tweet_deet = TweetDeet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tweet_deet_params
      params.fetch(:tweet_deet, {})
    end
end
