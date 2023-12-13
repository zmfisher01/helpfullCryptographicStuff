# stolen from prelab2.sage
# barretreduction.sage:

# barret reduction

# input: x, p<2^k, and mu = floor(2^2k / p)
# output: r = x mod p
def barretReduction(x, p):
    k = p.nbits()
    print(f"Barret Reduction for x = {x}, p = {p}, and k = {k}")
    mu = (2 << ((k<<1)-1))//p
    print("mu: ", mu)
    q1 = x//(2<<(k-2))
    print("q1: ", q1)
    q2 = q1 * mu
    print("q2: ", q2)
    q3 = q2//(2<<(k))
    print("q3: ", q3)
    r1 = x & (2<<(k+1)-1)-1
    print("r1: ", r1)
    r2 = (q3 * p) & ((2<<k)-1)
    print("r2: ", r2)
    r = r1 - r2
    print("r: ", r)
    if(r < 0):
        r = r + (2<<k)
        print("r: ", r)
    while(r >= p):
        r = r - p
        print("r: ", r)
    return r

x = (2^11)-1
p = 2^4
print(f"Result of {x} mod {p} via Barret Reduction: {barretReduction(x, p)}")
