class PriceMaker < ActiveModelSerializers::Model
  
  def initialize(name)
    @name = name 
  end

  def info
    @info ||= service.get_info(@name)
  end

  def price
    service.get_price(get_condition)[:results][0][:price]
  end

  def image
    info[:results][0][:image]
  end
  
  def name
    info[:results][0][:productName]
  end

  private

    def service
      TCGPlayerService.new
    end

    def get_condition(condition = 'Near Mint', language = 'English')
      condition_ids.find do |con|
        con[:name] == condition && con[:language] == language
      end[:productConditionId]
    end

    def condition_ids
      info[:results][0][:productConditions]
    end
end
