# Exam 2020 Question 3
print("Exam 2020 Question 3\n")

p = 71
E = EllipticCurve(GF(p),[1,0])

print("a)")
print("Cardinality of E:", E.cardinality())
print("verify with Hasse equation")
lb = float(p+1-2*sqrt(p))
print("lower bound =", lb)
ub = float(p+1+2*sqrt(p))
print("upper bound =", ub)

print("b)")
print("points on E:", E)
for i in range(E.cardinality()):
    print(E[i])
P = E(53,55)
print("P =", P)
Q = 10*P
print("Q =", Q)
print("Our eq: y^2 = x^3 + x")
print(f"Plug in Q: {Q[1]}^2 = {Q[0]}^3 + {Q[0]} (mod {p})")
print(f"Which is equivilant to: {mod(Q[1]^2, p)} = {mod(Q[0]^3 + Q[0], p)}")
print(f"-Q = {Q*-1}")

print("c)")
P = E(64,17)
k = 1
while((P*k)[2]==1):
    k += 1
print(f"k = {k}, k*P = {k*P}")

print("d)")
P = E(67,28)
Q = E(52,68)
print(f"P = {P}, Q = {Q}, D = {P + Q})")
print(f"By hand:")
print(f"m = ({Q[1]} - {P[1]}) / ({Q[0]} - {P[0]}) = ({Q[1] - P[1]}/{Q[0] - P[1]}) = {mod((Q[1] - P[1])/(Q[0] - P[0]), p)} (mod {p})")
m = mod((Q[1] - P[1])/(Q[0] - P[0]), p)
print(f"xD = {m}^2 - {P[0]} - {Q[0]} = {m^2} - {P[0]} - {Q[0]} = {mod(m^2 - P[0] - Q[0], p)} (mod {p})")
xD = mod(m^2 - P[0] - Q[0], p)
print(f"yD = {m}({P[0]} - {xD}) - {P[1]} = {m}({P[0] - xD}) - {P[1]} = {m*(P[0] - xD)} - {P[1]} = {mod(m*(P[0] - xD) - P[1], p)} (mod {p})")
yD = mod(m*(P[0] - xD) - P[1], p)
print(f"Point confirmed ({xD}, {yD})")
