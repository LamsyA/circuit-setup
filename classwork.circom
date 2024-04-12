pragma circom  2.0.0;

// x**3 + x + 5 == 35

// sym1 = x * x
// sym2 = sym1 * x
// sym3 = sym2 + x
// sym4 = sym3 + 5
// sym4 == 35


template Vitalik(n) {
    signal input x;x

    signal sym1 <== x * x;
    signal sym2 <== sym1 * x;
    signal sym3 <== sym2 + x;
    signal sym4 <== sym3 + 5;
    sym4 === n;
}

component main {public [x]} = Vitalik(35); 