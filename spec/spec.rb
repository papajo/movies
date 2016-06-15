require 'spec_helper'
require 'rails_helper'

describe 'movies/index', :type => :view do
  before(:all) do
    assign(:movies, [
      Movie.create(title: "Scarves", image: "scarves.jpg", release_year: "1989"),
      Movie.create(title: "Mason Jars", image: "jars.png", release_year: "2014")
    ])
  end

  context "Checkpoint 1" do
    it "displays movies" do
      render

      expect(rendered).to include("Scarves"), "Did you display a movie's title?"
      expect(rendered).to include("1989"), "Did you display a movie's release year?"

      expect(rendered).to include("Mason Jars"), "Did you display a movie's title?"
      expect(rendered).to include("2014"), "Did you display a movie's release year?"
    end
  end
end
