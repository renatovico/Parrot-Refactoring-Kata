class NorwegianBlueParrot < Parrot

  def speed
    (@nailed) ? 0 : compute_base_speed_for_voltage(@voltage)
  end

  private

  def compute_base_speed_for_voltage voltage
    [24.0, voltage * base_speed].min
  end

end
