Feature: The system tracks items as they go through different processes
  Scenario: Check if ItemCreated event is published
            Given uid 1 and name "item_1"
            When "ItemCreated" event is published 
            Then item 1 raises an "Events::ItemCreated" event

  Scenario: Check if ItemCreated event is published
            Given uid 2 and name "item_2"
            When "ItemCreated" event is published 
            Then item 2 raises an "Events::ItemCreated" event
            When "ItemUpdated" event is published 
            Then item 2 raises an "Events::ItemUpdated" event
            When "ItemDeleted" event is published 
            Then item 2 raises an "Events::ItemDeleted" event
            And there should be 3 events published for item stream "Item$2"