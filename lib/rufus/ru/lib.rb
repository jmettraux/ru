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


require 'ffi'


module Rufus
module Ru

  module RuLib
    extend FFI::Library

    ffi_lib '/usr/lib/libruby.dylib'
    #ffi_lib '/usr/local/lib/libruby19.dylib'

    attach_function :ruby_init, [], :void
    attach_function :ruby_script, [ :string ], :void

    attach_function :rb_eval_string, [ :string ], :long

    #attach_function :rb_type, [ :long ], :int

    #attach_function :rb_string_value_ptr, [ :pointer ], :string
    attach_function :rb_fix2int, [ :long ], :int
  end

end
end

