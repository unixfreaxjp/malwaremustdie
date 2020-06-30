#!/usr/bin/perl
# getenv.pl(3), getenv() binary scanner: vade79 -> _v9[v9@fakehalo.org] (!2499b)
#
# data: this perl script is for scanning a binary and fetching what appear to
#       be typical(upper) environment variables.  since this method isn't
#       exactly scientific, you may run into invalid getenv() contents -- but, i
#       think you should be able to tell the difference.
#
# note: i made this script for the sole purpose of checking programs for local
#       buffer overflows in some manner without having the source available to
#       me.
#
# syntax: ./getenv.pl </path/to/binary>.

# (1/4): return values to ignore.
$skip="TTOU TTIN TSTP STOP CONT CHLD STKFLT ALRM PIPE USR2 SEGV USR1 KILL FPE BUS IOT ABRT TRAP ILL QUIT INT HUP _DYNAMIC _GLOBAL_OFFSET_TABLE_ --";
# (2/4): script signals.
$SIG{'INT'}=\&dataexit;
$SIG{'TSTP'}=\&dataexit;
# (3/4): script routines.
sub out{print STDERR"[*] @_";}
sub outr{print STDERR"@_";}
sub outq{print STDERR"[!] @_";exit(-1);}
sub isvalid{$char=substr(shift,0,1);if(ord($char)>64&&ord($char)<91||ord($char)>47&&ord($char)<58||ord($char)==45||ord($char)==95){return(1);}return(0);}
sub readbinary{
 out("$0(3): getenv() binary scanner, by: vade79[v9\@fakehalo.org].\n");
 open(BINARY,shift)||outq("could not open binary.\n");out("opened binary successfully.\n");
 @read=<BINARY>;close(BINARY);$i=0;$tokens=@read;out("scanning binary($tokens): ");while($read[$i]){
  @tmpread=split(chr(0),$read[$i]);$tokens=@tmpread;$j=-1;while($j<$tokens){
   $j++;$k=0;while(isvalid(substr($tmpread[$j],$k,1))&&length($tmpread[$j])>1){
    if($k+1==length($tmpread[$j])){
     $m=0;@s=split(/ /,$skip);$l=0;while($s[$l]){if($s[$l]eq$tmpread[$j]){$m++;}$l++;}
     @s=split(/,/,$result);$l=0;while($s[$l]){if($s[$l]eq$tmpread[$j]||$s[$l]eq" $tmpread[$j]"){$m++;}$l++;}
     if(!$m&&substr($tmpread[$j],0,3)ne"SIG"&&substr($tmpread[$j],0,2)ne"__"&&substr($tmpread[$j],length($tmpread[$j])-2,2)ne"__"){
      if(!$result){$result=$tmpread[$j];}
      else{$result="$result, $tmpread[$j]";}
     }
    }
    $k++;
   }
  }
  $i++;outr(".");
 }
 outr("done!\n");
}
sub data{
 if($result){out("typical getenv() possibilities: $result.\n");}
 else{out("no typical getenv() possibilities found.\n");}
}
sub dataexit{outr("cut!\n");data;outq("cut run, finished.\n");}
# (4/4): script init.
if(!$ARGV[0]){outq("syntax: $0 </path/to/binary>\n");}
if(!-f$ARGV[0]){outq("error, binary not found.\n");}
readbinary($ARGV[0]);data;out("clean run, finished.\n");exit(0);
