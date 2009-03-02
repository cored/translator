# $Id$

require File.join(File.dirname(__FILE__), %w[spec_helper])

include Translator::Constants
describe Translator do

  before(:each) do
    @babel = Translator::Babel.new("good afternoon")
  end

  it "should return 'buenas tardes'" do
    @babel.translate(ENGLISH, SPANISH).should == "buenas tardes"
  end

  it "should return 'bonjour'" do
    @babel.translate(ENGLISH, FRENCH).should == "bonjour"
  end

  it "should return 'Guten Tag'" do
    @babel.translate(ENGLISH, GERMAN).should == "Guten Tag"
  end

  it "should return 'buon pomeriggio'" do
    @babel.translate(ENGLISH, ITALIAN).should == "buon pomeriggio"
  end

  it "should return 'boa tarde'" do
    @babel.translate(ENGLISH, PORTUGESE).should == "boa tarde"
  end

  it "should translate to japanese" do
    pending
  end

  it "should translate to simplified chinese" do
    pending
  end

  it "should translate to chinese" do
    pending
  end

  it "should translate to russian" do
    pending
  end
  
end

# EOF
