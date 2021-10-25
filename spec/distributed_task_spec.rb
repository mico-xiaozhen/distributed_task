# frozen_string_literal: true

RSpec.describe DistributedTask do
  it "has a version number" do
    expect(DistributedTask::VERSION).not_to be nil
  end
end
