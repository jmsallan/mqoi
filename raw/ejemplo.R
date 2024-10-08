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

assignment_example <- "param m, integer, > 0;  /* number of agents */
param n, integer, > 0;  /* number of tasks */
set I := 1..m;          /* set of agents */
set J := 1..n;          /* set of tasks */

param c{i in I, j in J}, >= 0;
/* cost of allocating task j to agent i */

var x{i in I, j in J}, >= 0;
/* x[i,j] = 1 means task j is assigned to agent i
   note that variables x[i,j] are binary, however, there is no need to
   declare them so due to the totally unimodular constraint matrix */

s.t. phi{i in I}: sum{j in J} x[i,j] <= 1;
/* each agent can perform at most one task */

s.t. psi{j in J}: sum{i in I} x[i,j] = 1;
/* each task must be assigned exactly to one agent */

minimize obj: sum{i in I, j in J} c[i,j] * x[i,j];

data;

/* These data correspond to an example from [Christofides]. */

/* Optimal solution is 76 */

param m := 8;

param n := 8;

param c : 1  2  3  4  5  6  7  8 :=
      1  13 21 20 12  8 26 22 11
      2  12 36 25 41 40 11  4  8
      3  35 32 13 36 26 21 13 37
      4  34 54  7  8 12 22 11 40
      5  21  6 45 18 24 34 12 48
      6  42 19 39 15 14 16 28 46
      7  16 34 38  3 34 40 22 24
      8  26 20  5 17 45 31 37 43 ;

end;"

save(assignment_example, file = "~/Dropbox (UPC)/Oriol/MQ/mqoi/data/assignment_example.RData")
