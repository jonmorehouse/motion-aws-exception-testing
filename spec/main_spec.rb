describe "Application 'aws-exceptions'" do
  before do
    @app = UIApplication.sharedApplication
  end

  it "has one window" do
    lambda { raise StandardError.new(:test_exception) }.should.raise(StandardError)
  end
end
