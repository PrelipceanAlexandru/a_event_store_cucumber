module Events
  ItemCreated = Class.new(RailsEventStore::Event)
  ItemUpdated = Class.new(RailsEventStore::Event)
  ItemDeleted = Class.new(RailsEventStore::Event)
end