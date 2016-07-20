class ChangeTableTweetInfosController < ApplicationController
  before_action :set_change_table_tweet_info, only: [:show, :edit, :update, :destroy]

  # GET /change_table_tweet_infos
  # GET /change_table_tweet_infos.json
  def index
    @change_table_tweet_infos = ChangeTableTweetInfo.all
  end

  # GET /change_table_tweet_infos/1
  # GET /change_table_tweet_infos/1.json
  def show
  end

  # GET /change_table_tweet_infos/new
  def new
    @change_table_tweet_info = ChangeTableTweetInfo.new
  end

  # GET /change_table_tweet_infos/1/edit
  def edit
  end

  # POST /change_table_tweet_infos
  # POST /change_table_tweet_infos.json
  def create
    @change_table_tweet_info = ChangeTableTweetInfo.new(change_table_tweet_info_params)

    respond_to do |format|
      if @change_table_tweet_info.save
        format.html { redirect_to @change_table_tweet_info, notice: 'Change table tweet info was successfully created.' }
        format.json { render :show, status: :created, location: @change_table_tweet_info }
      else
        format.html { render :new }
        format.json { render json: @change_table_tweet_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /change_table_tweet_infos/1
  # PATCH/PUT /change_table_tweet_infos/1.json
  def update
    respond_to do |format|
      if @change_table_tweet_info.update(change_table_tweet_info_params)
        format.html { redirect_to @change_table_tweet_info, notice: 'Change table tweet info was successfully updated.' }
        format.json { render :show, status: :ok, location: @change_table_tweet_info }
      else
        format.html { render :edit }
        format.json { render json: @change_table_tweet_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /change_table_tweet_infos/1
  # DELETE /change_table_tweet_infos/1.json
  def destroy
    @change_table_tweet_info.destroy
    respond_to do |format|
      format.html { redirect_to change_table_tweet_infos_url, notice: 'Change table tweet info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_change_table_tweet_info
      @change_table_tweet_info = ChangeTableTweetInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def change_table_tweet_info_params
      params.require(:change_table_tweet_info).permit(:tweetid)
    end
end
