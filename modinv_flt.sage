# Modular inversion with Square and Multiply via Fermat's Little Theorem (FLT)

def modinv_flt(a, p):
    print(f"Modular inverse of {a} mod {p} with FLT (p MUST BE PRIME)")
    e = p-2
    print(f"Inverse of {a} mod {p} according to FLT: {a}^({p}-2) mod {p}  = {a}^{e} mod {p}")
    
    # modular exponentiation
    # solves a^e mod p
    
    print(f"a = {a}")
    print(f"e = {e}")
    print(f"p = {p}")
    print()
    
    print(f"bits of e: {e.bits()}")
    print()
    
    b = a
    print(f"b = a = {a}")
    print()
    
    print(f"Loop {e.nbits()-1} times:")
    print()
    for k in range(e.nbits()-2, -1, -1):
        print(f"..For bit of e at index {k}")
        print(f"....b = b^2 (mod p) = {mod(b^2, p)} (mod {p})")
        b = mod(b^2, p)
        print(f"....The bit at index {k} is equal to {e.bits()[k]}")
        if (e.bits()[k] == 1):
            print(f"....so we multiply")
            print(f"....b = b * a (mod p) = {b} * {a} (mod {p}) = {mod(b*a, p)} (mod {p})")
            b = mod(b*a,p)
        else:
            print(f"....so we don\'t multiply")
    print()

    print(f"Result of {a}^{e} mod {p} = {b}")
        

  
modinv_flt(2^11 -1, 2^5 -3)
