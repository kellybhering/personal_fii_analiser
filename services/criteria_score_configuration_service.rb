class CriteriaScoreConfigurationService
  class << self
    def create(params)
      criteria_score_configuration = CriteriaScoreConfiguration.new(params)
      
      if criteria_score_configuration.invalid?
        #TODO: Improve error managment
        return criteria_score_configuration.errors.details
      end

      repository = CriteriaScoreConfigurationRepository.new(gateway: criteria_score_configuration)
      repository.add(params)
    end
  end
end