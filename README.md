# groupcidr
## A CIDR block grouping tool

Takes a set of dotted-quad IP addresses, ranges, or CIDR blocks, on
 stdin; at EOF, prints a minimal set of CIDR ranges to stdout.

Input consists of a stream of dotted-quads, pairs of dotted-quads
 separated by a dash, or dotted-quads with /number widths after
 them.  Dash-separated ranges refer to all addresses between the
 two, inclusive; an address with a /number after it refers to a
 CIDR-style block.  It is not an error for an address to be
 specified in the input more than once.  Whitespace may appear
 anywhere except within a dotted-quad or CIDR width.  Characters
 other than digits, dots, dashes, and whitespace are errors.  If a
 number in a dotted-quad is greater than 255, or a CIDR width is
 greater than 32, or other syntax errors occur (such as too many
 dots without whitespace, dash, or slash) a complaint is printed and
 the dotted-quad, range, or block in which it appears is skipped.

Output consists of zero or more lines, each a dotted-quad/width CIDR
 net-with-mask, including all and only the addresses in the input.
 It will be a minimal set, in that no two blocks in the output can
 be collapsed without resorting to noncontiguous netmasks.

Compile-time options:
```
     -DNO_PROGNAME
             Provide __progname, for systems that don't have it.  If
             it shows up undefined at link time, try compiling with
             this turned on.
```
The C and Golang versions are both in the public domain are not
encumbered by any license.

Originally from http://www.spamshield.org/cidr-convert.c 

