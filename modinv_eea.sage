# EEA for inverse of a mod p

def modinv_eea(a, p):
    print(f"Modular inversei of {a} mod {p} using EEA")
    b = p
    u = 1
    v = 0
    d = a
    v1 = 0
    v3 = b
    print("gcd(",a,",",b,"):")
    print("u =", u)
    print("v =", v)
    print("d = a =", d)
    print("v1 =", v1)
    print("v3 = b =", v3)
    print("while(v3 != 0):")
    while (v3 != 0):
        q = floor(d/v3)
        print("q = floor(d/v3) =", d, "/", v3,"=",q)
        t3 = d % v3
        print("t3 = d % v3 =", d,"mod",v3,"=",t3)
        t1 = u - (q*v1)
        print("t1 = u - (q*v1) =", u,"-",q,"*",v1)
        u = v1
        print("u = v1 =", v1)
        d = v3
        print("d = v3 =", v3)
        v1 = t1
        print("v1 = t1 =", t1)
        v3 = t3
        print("v3 = t3 =", t3)
        end
    v = (d-(a*u))/b
    if u < 0:
        u += p
    if v < 0:
        v += p
    if d < 0:
        d += p

    print("v = (d-(a*u))/b = (", d, "-(",a,"*",u,"))/",b,"=",v)
    print("u = ", u, ", v = ", v, ", d = ", d)

    print(f"Inverse of {a} mod {p} = {u}")

modinv_eea(51, 2^17-1)
