require "rails_helper"

RSpec.describe "Alchemy Google map partial" do
  let(:partial) do
    Rails.root.join("app/views/alchemy/elements/_google_map.html.erb").read
  end

  it "uses Alchemy element values for map content" do
    expect(partial).to include("element.value_for(:title)")
    expect(partial).to include("element.value_for(:embed_url)")
    expect(partial).not_to include("el.ingredient")
  end

  it "renders a responsive iframe for the Google map" do
    expect(partial).to include("google-map")
    expect(partial).to include("google-map-frame")
    expect(partial).to include("<iframe")
    expect(partial).to include('src="<%= embed_url %>"')
  end

  it "does not render a map iframe without an embed URL" do
    expect(partial).to include("if embed_url.present?")
  end

  it "renders the optional map title" do
    expect(partial).to include("google-map-title")
    expect(partial).to include("title.present?")
  end
end