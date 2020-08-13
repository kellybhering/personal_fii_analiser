# frozen_string_literal: true

require 'rake'

require 'active_record'
require './initializers/db_connection.rb'

Dir['./db/migrations/*.rb'].sort.each { |file| require file }

# TODO: Maybe move this rakes for specific files in lib/tasks folder
namespace :migrate do
  task :up do
    CreateFiis.migrate(:up)
    CreateFiiAdministrators.migrate(:up)
    CreateCriteriaScoreConfigurations.migrate(:up)
  end

  task :down do
    CreateFiis.migrate(:down)
    CreateFiiAdministrators.migrate(:down)
    CreateCriteriaScoreConfigurations.migrate(:down)
  end
end
