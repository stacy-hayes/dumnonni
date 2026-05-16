require "rails_helper"

RSpec.describe "Alchemy tile partial" do
  let(:partial) do
    Rails.root.join("app/views/alchemy/elements/_tile.html.erb").read
  end

  it "uses Alchemy element values for tile content" do
    expect(partial).to include("element.value_for(:linked_page)")
    expect(partial).to include("element.value_for(:title)")
    expect(partial).to include("element.value_for(:description)")
    expect(partial).not_to include("el.ingredient")
  end

  it "links the tile image and title to the selected page" do
    expect(partial).to include('link_to page_url, class: "tile-image-link"')
    expect(partial).to include('link_to title, page_url, class: "tile-title-link"')
  end

  it "renders the image beside the text content" do
    expect(partial).to include("tile")
    expect(partial).to include("tile-image")
    expect(partial).to include("tile-content")
  end

  it "renders description as plain text rather than a link" do
    expect(partial).to include("tile-description")
    expect(partial).not_to include('link_to description')
  end
end