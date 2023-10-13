#!/usr/bin/perl

use strict;
use warnings;

my $tag_html = '<div class="content">Visi DIV Teknik Informatika Menjadi Program Studi unggulanpada jenjang pendidikan diploma IV di bidang Teknik Informatika sehingga mampu menghasilkan tenaga profesional pengembang perangkat lunak yang kompeten, memiliki semangat terus berkembang, bermoral, dan berjiwa wirausaha. </div>';

# Mengekstrak teks dari tag HTML dengan class "content" menggunakan regex
if ($tag_html =~ /<div class="content">(.*?)<\/div>/s) {
    print $1;
} else {
    print "Tag HTML dengan class 'content' tidak ditemukan.";
}
