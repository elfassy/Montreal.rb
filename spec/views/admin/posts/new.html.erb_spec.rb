require 'spec_helper'

describe "admin/posts/new" do
  before(:each) do
    assign(:post, stub_model(Post,
      :title => "MyString",
      :text => "",
      :tags => "MyString",
      :user_id => 1
    ).as_new_record)
  end

  it "renders new post form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", admin_posts_path, "post" do
      assert_select "input#post_title[name=?]", "post[title]"
      assert_select "textarea#post_content[name=?]", "post[content]"
      assert_select "input#post_tags[name=?]", "post[tags]"
    end
  end
end
