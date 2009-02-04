# $Id$

require File.join(File.dirname(__FILE__), %w[spec_helper])

describe Translator do

  before(:each) do
    @babel = Translator::Babel.new("good afternoon")
  end

  it "should return 'buenas tardes'" do
    @babel.translate(Translator::Constants::LANGUAGES[:english], Translator::Constants::LANGUAGES[:spanish]).should == "buenas tardes"
  end

  it "should return 'bonjour'" do
    @babel.translate(Translator::Constants::LANGUAGES[:english], Translator::Constants::LANGUAGES[:french]).should == "bonjour"
  end

  it "should return 'Guten Tag'" do
    @babel.translate(Translator::Constants::LANGUAGES[:english], Translator::Constants::LANGUAGES[:german]).should == "Guten Tag"
  end

  it "should return 'buon pomeriggio'" do
    @babel.translate(Translator::Constants::LANGUAGES[:english], Translator::Constants::LANGUAGES[:italian]).should == "buon pomeriggio"
  end

  it "should return 'boa tarde'" do
    @babel.translate(Translator::Constants::LANGUAGES[:english], Translator::Constants::LANGUAGES[:portugese]).should == "boa tarde"
  end

  it "should translate to arabic" do
    @babel.translate(Translator::Constants::LANGUAGES[:english], Translator::Constants::LANGUAGES[:arabic]).should == "\331\205\330\263\330\247\330\241 \330\247\331\204\330\256\331\212\330\261"
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
