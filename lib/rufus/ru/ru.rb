#--
# Copyright (c) 2009, John Mettraux, jmettraux@gmail.com.
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.
#
# Made in Japan.
#++


require 'rufus/ru/lib'


module Rufus::Ru

  def self.init (ru_name='ru0')

    RuLib.ruby_init
    RuLib.ruby_script(ru_name)
  end

  # TODO : find a way to switch interpreter

  def self.eval (code)

    extract_value(RuLib.rb_eval_string(code))
  end

  protected

  def self.extract_value (v)

    # cannot bind rb_type(v)  :(

    case v
      when 0 then return false
      when 2 then return true
      when 4 then return nil
    end

    return RuLib.rb_fix2int(v) if (v & 0x01) # FIXNUM_FLAG
    return '<SYMBOL>' if ((v & 0xff) == 0x0e) # SYMBOL_FLAG

    '<ELSE>'
  end
end

