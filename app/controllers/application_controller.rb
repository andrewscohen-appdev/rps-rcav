class ApplicationController < ActionController::Base
  layout("wrapper.html.erb")

  # Add your actions below this line
  # ================================

  def homepage
    render({ :template => "game_templates/rules.html.erb" })
  end

  def play_rock
    @comp_move1 = ["rock", "paper", "scissors"].sample

    if @comp_move1 == "rock"
      @outcome1 = "tied"
    elsif @comp_move1 == "paper"
      @outcome1 = "lost"
    elsif @comp_move1 == "scissors"
      @outcome1 = "won"
    end

    render({ :template => "game_templates/user_rock.html.erb" })

  end

  def play_paper
    @comp_move2 = ["rock", "paper", "scissors"].sample

    if @comp_move2 == "rock"
      @outcome2 = "won"
    elsif @comp_move2 == "paper"
      @outcome2 = "tied"
    elsif @comp_move2 == "scissors"
      @outcome2 = "lost"
    end

    render({ :template => "game_templates/user_paper.html.erb"})

  end

  def play_scissors
    @comp_move3 = ["rock", "paper", "scissors"].sample

    if @comp_move3 == "rock"
      @outcome3 = "lost"
    elsif @comp_move3 == "paper"
      @outcome3 = "won"
    elsif @comp_move3 == "scissors"
      @outcome3 = "tied"
    end

    render({ :template => "game_templates/user_scissors.html.erb"})

  end

end
