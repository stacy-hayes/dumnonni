require "rails_helper"
require "yaml"

RSpec.describe "Alchemy tile configuration" do
  let(:elements) do
    YAML.load_file(Rails.root.join("config/alchemy/elements.yml"))
  end

  let(:page_layouts) do
    YAML.load_file(Rails.root.join("config/alchemy/page_layouts.yml"))
  end

  let(:elements_by_name) do
    elements.index_by { |element| element.fetch("name") }
  end

  let(:layouts_by_name) do
    page_layouts.index_by { |layout| layout.fetch("name") }
  end

  it "defines a tile element" do
    expect(elements_by_name).to have_key("tile")
  end

  it "allows each tile to have an image, linked page, title, and description" do
    tile = elements_by_name.fetch("tile")
    ingredient_roles = tile.fetch("ingredients").map { |ingredient| ingredient.fetch("role") }

    expect(ingredient_roles).to include("image")
    expect(ingredient_roles).to include("linked_page")
    expect(ingredient_roles).to include("title")
    expect(ingredient_roles).to include("description")
  end

  it "uses a page ingredient for the tile link" do
    linked_page = elements_by_name
                    .fetch("tile")
                    .fetch("ingredients")
                    .find { |ingredient| ingredient.fetch("role") == "linked_page" }

    expect(linked_page).to include("type" => "Page")
  end

  it "allows tiles on standard pages" do
    standard_elements = layouts_by_name.fetch("standard").fetch("elements")

    expect(standard_elements).to include("tile")
  end
end