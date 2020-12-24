require 'rails_helper'
RSpec.describe EventDetail, type: :model do
  let(:event_detail) {create :event_detail}
  
  it "is updated if event_title is changed" do
    event_detail.event_title = "運動会" 
    expect(event_detail.event_title).not_to eq '【ポケごみ】親子deゴミ拾い散歩'
  end
end
