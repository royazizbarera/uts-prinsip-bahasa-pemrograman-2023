#!/usr/bin/perl

use strict;
use warnings;
use Term::ANSIColor;

sub is_valid_password {
    my ($password) = @_;

    if ($password =~ /\s/) {
        print colored("Tidak boleh mengandung spasi.\n\n", 'red');
        return 1;
    }
    elsif ($password !~ /^.{15,}$/) {
        print colored("Minimal 15 karakter.\n\n", 'red');
        return 2;
    }
    elsif ($password !~ /[A-Z]/) {
        print colored("Harus mengandung setidaknya satu huruf kapital.\n\n", 'red');
        return 3;
    }
    elsif ($password !~ /[a-z]/) {
        print colored("Harus mengandung setidaknya satu huruf kecil.\n\n", 'red');
        return 4;
    }
    elsif ($password !~ /\d/) {
        print colored("Harus mengandung setidaknya satu angka.\n\n", 'red');
        return 5;
    }
    elsif ($password !~ /\W/) {
        print colored("Harus mengandung setidaknya satu karakter simbolik.\n\n", 'red');
        return 6;
    }
    else {
        print colored("Kata sandi valid.\n\n", 'green');
        return 0;
    }
}

my $valid = 1;
while ($valid != 0) {
    print colored("Masukan kata sandi anda: ", 'cyan');
    my $password = <STDIN>;
    chomp($password);

    $valid = is_valid_password($password);

    if ($valid != 0) {
        print colored("Kata sandi tidak valid.\n\n", 'red');
    }
}