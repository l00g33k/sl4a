# typical invocation:
#   perl -MCross Makefile.PL
#   perl -MCross=wince -V:cc
package Cross;

sub import {
  my ($package,$platform) = @_;
  unless (defined $platform) {
    # if $platform is not specified, then use last one when
    # 'configpm; was invoked with --cross option
    $platform = 'arm';
  }
  @INC = map {/\blib\b/?(do{local $_=$_;s/\blib\b/xlib\/$platform/;$_},$_):($_)} @INC;
  $::Cross::platform = $platform;
}

1;
