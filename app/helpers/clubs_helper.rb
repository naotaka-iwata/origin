module ClubsHelper

  def check(club)
    if club == current_user.id 
      return true
    end
  end
end
