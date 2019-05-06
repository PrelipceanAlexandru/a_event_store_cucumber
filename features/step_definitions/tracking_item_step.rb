Given("uid {int} and name {string}") do |uid, name|
  @data = { uid: uid, name: name }
end

When("{string} event is published") do |event_name|
  stream_name = "Item$#{@data[:uid]}"
  event_name = "Events::#{event_name}".constantize

  event = event_name.new(data: @data)
  event_store.publish(event, stream_name: stream_name)
end

Then("item {int} publishes an {string} event") do |uid, event|
  expect(event_store).to have_published(
    an_event(event.constantize)).in_stream("Item$#{uid}").once
end

Then("there should be {int} events published for item stream {string}") do | event_numbers, stream_name|
  expect(event_store.read.stream(stream_name).to_a.count).to eq event_numbers
end
