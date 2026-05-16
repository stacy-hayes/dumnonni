require "rails_helper"

RSpec.describe "Tailwind components" do
  let(:tailwind_entrypoint) { Rails.root.join("app/assets/tailwind/application.css").read }
  let(:components) { Rails.root.join("app/assets/tailwind/components.css").read }

  it "imports the reusable components file" do
    expect(tailwind_entrypoint).to include('@import "tailwindcss";')
    expect(tailwind_entrypoint).to include('@import "./components.css";')
  end

  it "defines reusable layout classes" do
    expected_classes = %w[
      page-body
      skip-link
      site-header
      site-header-inner
      site-logo-link
      site-logo
      desktop-nav
      desktop-nav-list
      nav-link
      mobile-nav-details
      mobile-nav-summary
      mobile-menu
      mobile-nav-list
      mobile-nav-link
      site-main
      site-footer
      site-footer-inner
      footer-heading
      footer-text
      footer-description
      footer-list
      footer-link
      footer-bottom
    ]

    expected_classes.each do |class_name|
      expect(components).to include(".#{class_name}")
    end
  end

  it "keeps the site header sticky and above page content" do
    expect(components).to match(/\.site-header\s*\{[^}]*@apply[^;]*sticky[^;]*top-0[^;]*z-50/m)
  end

  it "positions the mobile menu below the header rather than beside the logo" do
    expect(components).to match(/\.site-header\s*\{[^}]*@apply[^;]*relative/m)
    expect(components).to match(/\.mobile-menu\s*\{[^}]*@apply[^;]*absolute[^;]*left-0[^;]*top-full[^;]*w-full/m)
  end

  it "shows desktop nav from medium screens upwards" do
    expect(components).to match(/\.desktop-nav\s*\{[^}]*@apply[^;]*hidden[^;]*md:block/m)
  end

  it "hides mobile nav from medium screens upwards" do
    expect(components).to match(/\.mobile-nav-details\s*\{[^}]*@apply[^;]*md:hidden/m)
  end

  it "does not use invalid Tailwind utility classes" do
    expect(components).not_to include("text-m")
  end
end