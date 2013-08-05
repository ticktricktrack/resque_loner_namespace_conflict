class Dummy

  @queue = "high"

  def self.perform
    sleep 1
  end
end