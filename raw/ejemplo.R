mathprog_example <- "# Size of knapsack
param c;

# Items: index, size, profit
set I, dimen 3;

# Indices
set J := setof{(i,s,p) in I} i;

# Assignment
var a{J}, binary;

maximize obj :
  sum{(i,s,p) in I} p*a[i];

s.t. size :
  sum{(i,s,p) in I} s*a[i] <= c;
data;

# Size of the knapsack
param c := 100;

# Items: index, size, profit
set I :=
  1 10 10
  2 10 10
  3 15 15
  4 20 20
  5 20 20
  6 24 24
  7 24 24
  8 50 50;

end;"

save(mathprog_example, file = "~/Dropbox (UPC)/Oriol/MQ/mqoi/data/mathprog_example.RData")
