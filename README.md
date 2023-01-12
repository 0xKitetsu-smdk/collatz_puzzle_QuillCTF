## Collatz Puzzle
### Problem statement
 - contract code size must be less than or equal to 32 and must be greater than zero
 - contract has to return proper number based on the input 'n' (first arg in calldata)
    - if n is odd,return 3 * n + 1;
    - if n is even, return n / 2