class MapController < ApplicationController
  def index
    curiosity = Rover.new('Curiosity', [33, 24], [79, 79])
    real_curiosity = Rover.new('Real Curiosity', [-4.59109782, 137.43825674], [-4.76847437, 137.34592438])
    endeavor = Rover.new('Endeavor', [22, 78], [12, 77])
    @rovers = []
    @rovers.push(curiosity)
    @rovers.push(real_curiosity)
    @rovers.push(endeavor)
  end
end
