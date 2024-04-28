autoload(:EuropeanParrot, 'european_parrot.rb')
autoload(:AfricanParrot, 'african_parrot.rb')
autoload(:NorwegianBlueParrot, 'norwegian_blue_parrot.rb')

class Parrot

  def initialize type=nil, number_of_coconuts=nil, voltage=nil, nailed=nil
    @type = type
    @number_of_coconuts = number_of_coconuts
    @voltage = voltage
    @nailed = nailed
  end

  def speed
    case @type
    when :european_parrot
      return EuropeanParrot.new.speed
    when :african_parrot
      return AfricanParrot.new(nil,@number_of_coconuts,nil,nil).speed
    when :norwegian_blue_parrot
      return NorwegianBlueParrot.new(nil,nil,@voltage, @nailed).speed
    end

    throw "Should be unreachable!"
  end

  private


  def base_speed
    12.0
  end
end
