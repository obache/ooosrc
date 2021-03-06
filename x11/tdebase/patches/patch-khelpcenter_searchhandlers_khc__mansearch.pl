$NetBSD$

--- khelpcenter/searchhandlers/khc_mansearch.pl.orig	2011-11-29 07:39:00.000000000 +0000
+++ khelpcenter/searchhandlers/khc_mansearch.pl
@@ -55,7 +55,7 @@ my @results;
 while( <MAN> ) {
 #  print "RAW:$_";
   chop;
-  /^([^\s]+)\s+\((.*)\)\s+-\s+(.*)$/;
+  /^([^(]+)\s+\((.*)\)\s+-\s+(.*)$/;
   my $page = $1;
   my $section = $2;
   my $description = $3;
@@ -73,6 +73,7 @@ if ( $nummatches > 0 ) {
   for my $result ( @results ) {
     my ( $page, $section, $description ) = @$result;
     my $url = "man:" . $page;
+    $url =~ s/,.*//;
     print "<li><a href=\"$url\">";
     print "$page - $description</a></li>\n";
     if ( ++$count == $maxcount ) { last; }
