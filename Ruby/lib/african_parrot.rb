class AfricanParrot < Parrot

  def speed
    [0, base_speed - load_factor * @number_of_coconuts].max
  end

  private
  def load_factor
    9.0
  end
end
