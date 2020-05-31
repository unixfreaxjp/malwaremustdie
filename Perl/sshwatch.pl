#!/usr/bin/perl -w
use Sys::Syslog;

$max=10; # maximum permited atempts

$watchfile=         '/var/log/messages';
$iptables=          '/sbin/iptables';
$iptables_save=     '/sbin/iptables-save';
$iptables_restore=  '/sbin/iptables-restore';
$cfgfile=           '/etc/sysconfig/iptables';

open(LFILE, "<$watchfile");

%tries=();      # number of attempts per ip
%blocked=();    # already blocked ip's

# restore iptables configuration
`$iptables_restore < $cfgfile`;

# load currently blocked ips from iptable list
open(IPTPIPE, "$iptables -L -v -n|");
$blockChain=0;
while (<IPTPIPE>){
  $blockChain=1 if (/^Chain block \(\d+ references\)$/);
  next unless $blockChain;
  last if (/^$/ );
  $blocked{$1}=1 if (/(\d+\.\d+\.\d+\.\d+)/);
}
close IPTPIPE;

$blk_ips=join(", ",keys(%blocked));
syslog('warning',"sshwatch.pl started. currently blocked ip's are: $blk_ips");

# watch the messages file
while (1) {
  for ($curpos = tell(LFILE); $_ = <LFILE>; $curpos = tell(LFILE)) {
    if (/sshd\[\d+\]: Failed password for .+ from \D+(\d+\.\d+\.\d+\.\d+)/) {
      $ip=$1;
      next if defined($blocked{$ip});
      $tries{$ip}+=1;
      if ($tries{$ip} eq $max){
         `$iptables -I block -s $ip -j DROP ; $iptables_save > $cfgfile`;
         $blocked{$ip}=1;
         syslog('warning', "IP $ip has been blocked !");
      }
    }
  }
  sleep 1;
  seek(LFILE, $curpos, 0);
}

=head1 NAME

sshwatch.pl

=head1 Author

Dragos Constantinescu, dragos@venus.nipne.ro

=head1 DESCRIPTION

This script watches the system log file for dictionary sshd attacks and 
automaticaly block the attacker ip after specified number of attempts
before first use: 
 1. create a new iptables chain "block" : iptables -N block
 2. insert a rule in the input chain to send all input packages to "block":
    iptables -I INPUT -i eth0 -j block
 3. save your current iptables configuration: iptables-save > /etc/sysconfig/iptables

=head1 README

This script watches the system log file for dictionary sshd attacks and 
automaticaly block the attacker ip after specified number of attempts

=head1 PREREQUISITES

You need Sys::Syslog and iptables 

=head1 COPYRIGHT

Copyright 2005, Dragos Constantinescu.  All rights reserved.  This program is 
free software.  It may be used, redistributed, and/or modified under 
the same terms as Perl itself.

=pod SCRIPT CATEGORIES

Networking
UNIX/System_administration

=cut
