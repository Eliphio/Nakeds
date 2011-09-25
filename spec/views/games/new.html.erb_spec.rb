require 'spec_helper'

describe "games/new.html.erb" do
  before(:each) do
    assign(:game, stub_model(Game,
      :name => "MyString",
      :responsable => "MyString",
      :place => "MyString"
    ).as_new_record)
  end

  it "renders new game form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => games_path, :method => "post" do
      assert_select "input#game_name", :name => "game[name]"
      assert_select "input#game_responsable", :name => "game[responsable]"
      assert_select "input#game_place", :name => "game[place]"
    end
  end
end
