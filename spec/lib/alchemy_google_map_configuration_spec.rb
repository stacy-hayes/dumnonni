require "rails_helper"
require "yaml"

RSpec.describe "Alchemy Google map configuration" do
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

  it "defines a google_map element" do
    expect(elements_by_name).to have_key("google_map")
  end

  it "allows the map to have a title and embed URL" do
    google_map = elements_by_name.fetch("google_map")
    ingredient_roles = google_map.fetch("ingredients").map { |ingredient| ingredient.fetch("role") }

    expect(ingredient_roles).to include("title")
    expect(ingredient_roles).to include("embed_url")
  end

  it "uses text ingredients for the map title and embed URL" do
    ingredients = elements_by_name.fetch("google_map").fetch("ingredients")

    title = ingredients.find { |ingredient| ingredient.fetch("role") == "title" }
    embed_url = ingredients.find { |ingredient| ingredient.fetch("role") == "embed_url" }

    expect(title).to include("type" => "Text")
    expect(embed_url).to include("type" => "Text")
  end

  it "allows google maps on standard pages" do
    standard_elements = layouts_by_name.fetch("standard").fetch("elements")

    expect(standard_elements).to include("google_map")
  end
end