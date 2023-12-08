function [ r,d ] = abc( a,b,c,options )
% This should cause some violations...
arguments
a ( 1,1 ) double
b ( 1,1 ) double
c ( 1,1 ) double
options.AllowComplex=false
end
d=b^2-4*a*c;
if d<0&&~options.AllowComplex
% No roots.
r=[ ];
else
% At least one root.
r=( -b-sqrt( d ) )/( 2*a );
if d~=0
% Second root (real or complex).
r( 2 )=( -b+sqrt( d ) )/( 2*a );
end
end
end
