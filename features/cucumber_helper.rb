include ::RailsEventStore::RSpec::Matchers

def event_store
  Rails.configuration.event_store
end
