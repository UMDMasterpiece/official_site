require "test_helper"

describe BlogPost do
  let(:blog_post) { BlogPost.new }

  it "must be valid" do
    value(blog_post).must_be :valid?
  end
end
