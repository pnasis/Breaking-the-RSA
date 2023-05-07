e = 65537
n = 5261933844650100908430030083398098838688018147149529533465444719385566864605781576487305356717074882505882701585297765789323726258356035692769897420620858774763694117634408028918270394852404169072671551096321238430993811080749636806153881798472848720411673994908247486124703888115308603904735959457057925225503197625820670522050494196703154086316062123787934777520599894745147260327060174336101658295022275013051816321617046927321006322752178354002696596328204277122466231388232487691224076847557856202967748540263791767128195927179588238799470987669558119422552470505956858217654904628177286026365989987106877656917
print('The value of e is:', e)
print('The value of n is:', n)
print('n is %d bits' % n.nbits())
print("---------------------------Fermat's Factorization Algorithm----------------------------------")
a = isqrt(n) + 1
print('The value of a is:', a)
while True:
    b2 = a ** 2 - n
    if is_square(b2):
        b = sqrt(b2)
        break
    a = a + 1
print('The value of b is:', b)
print("---------------------------After running the algorithm---------------------------")
p = a + b
q = a - b
print('The value of p is:', p)
print('The value of q is:', q)
if next_prime(p) == p and next_prime(q) == q and n == p * q:
    print("Success! Both p and q are prime numbers.")
else:
    print("Error! p and/or q are not prime.")
print("---------------------------Let's find the private key---------------------------")
phi_n = (p-1) * (q-1)
d = inverse_mod(e, phi_n)
print('The value of d is:', d)
