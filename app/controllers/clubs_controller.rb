class ClubsController < ApplicationController

before_action :authenticate_club!, only: [:edit, :update, :destroy, :new, :create]
  def index
    if params[:tag]
    @clubs = Club.tagged_with(params[:tag])
  else
    @clubs = Club.all
  end

    if params[:tag_name]
      @clubs = @clubs.tagged_with("#{params[:tag_name]}")
    end

  end

  def show
    @club = Club.find(params[:id])
  end

  def new
    @club = Club.new
  end

  def create
    club = Club.new(club_params)
    if club.save!
      redirect_to clubs_path
    else
      redirect_to :action => "new"
    end
  end

  def edit
    @club = Club.find(params[:id])
  end

  def update
   @club = Club.find(params[:id])
   if @club.update(club_params)
     redirect_to :action => "show", :id => @club.id
   else
     redirect_to :action => "new"
   end
  end

  def destroy
    Club.find(params[:id]).destroy
    redirect_to action: :index
  end


  private

    def club_params
      params.require(:club).permit(:club_name, :club_id, :club_description,:club_college,:club_number,:club_place,:club_frequency,:club_twitter,:club_instagram,:img,:tag_list,:january_plans,:february_plans,:march_plans,:april_plans,:may_plans,:june_plans,:july_plans,:august_plans,:september_plans,:october_plans,:november_plans,:december_plans,:active_plans )
    end




end
