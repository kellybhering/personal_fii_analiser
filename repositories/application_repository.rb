# TODO: Dependence injection to be implemented
class ApplicationRepository
  def initialize(gateway:)
    @gateway = gateway
  end

  def add!(params = {})
    @gateway.create!(params)
  end

  def find(id)
    @gateway.find(id)
  end

  private

  attr_reader :gateway
end