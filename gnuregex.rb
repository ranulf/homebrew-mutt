require 'formula'

class Gnuregex < Formula
  homepage 'http://ftp.gnu.org/old-gnu/regex/'
  url 'http://ftp.gnu.org/old-gnu/regex/regex-0.12.tar.gz'
  sha256 'f36e2d8d56bf15054a850128fcb2f51807706a92d3bb4b37ceadd731535ce230'

  def install
    system "./configure"
    system "make subdirs=test all"
    system "mkdir -p #{prefix}/lib"
    system "libtool -lSystem -dynamic -install_name #{prefix}/lib/libgnuregex.dylib -o #{prefix}/lib/libgnuregex.dylib regex.o"
    system "mkdir -p #{prefix}/include"
    system "cp regex.h #{prefix}/include/gnuregex.h"
  end
end
