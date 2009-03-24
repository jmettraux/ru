
#
# Specifying rufus-ru
#
# Tue Mar 24 22:20:31 JST 2009
#

require File.dirname(__FILE__) + '/spec_base'


describe Rufus::Ru do

  it 'should eval and return nil' do
    Rufus::Ru.init
    Rufus::Ru.eval('nil').should.be.nil
  end

  it 'should eval and return fixnums' do
    Rufus::Ru.init
    Rufus::Ru.eval('777').should.equal(777)
  end

  it 'should eval and return symbols' do
    Rufus::Ru.init
    Rufus::Ru.eval(':symbol').should.equal('<SYMBOL>') # TODO : fix me
  end

end

