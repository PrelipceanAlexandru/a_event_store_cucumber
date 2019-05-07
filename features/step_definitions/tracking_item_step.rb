Given("uid {int} and name {string}") do |uid, name|
  @data = { uid: uid, name: name }
end

When("{string} event is published") do |event|
  stream_name = "Item$#{@data[:uid]}"

  event = event_type(event).new(data: @data)
  event_store.publish(event, stream_name: stream_name)
end

Then("an {string} event should be published once for item {int}") do |event, uid|
  expect(event_store).to have_published(
    an_event(event_type(event))).in_stream("Item$#{uid}").once
end

Then("there should be {int} events published for item stream {string}") do | event_numbers, stream_name|
  expect(event_store.read.stream(stream_name).to_a.count).to eq event_numbers
end

def event_type(event)
  "Events::#{event}".constantize
end
