class Round 
  include ActiveModel::Model

  ENUM_GROUP = { grupo_1: 1, grupo_2: 2, grupo_3: 3}

  attr_accessor :index, :player, :group, :play, :name, :group, :step
  
  def initialize(index, group, name)
    self.index   = index.present? ? index.to_i : 1
    self.group   = group
    self.name    = name
  end

  def next_index
    self.index + 1
  end

  def step
    case self.round.to_i
    when 0..10
     "FASE 1"
    when 10..50
     "FASE 2"
    when 50..90
     "FASE 3"
    end
  end

  def play!(choice)
    if self.index == 180 
      return false
    else
      return true
    end
  end

  def round 
    self.index / 2
  end

  def player
    if (self.index % 2) == 0
      "Sua vez"
    elsif self.group != "1"
      "Vez do Computador"
    else
     "Sua vez" 
    end 
  end
 
end
