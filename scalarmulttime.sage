import time

ec272 = EllipticCurve(GF(7588550360256754183279148073529370729071901715047420004889892225542593764571217919), [0,22042,0,1,0])
G272 =  ec272([2,622589279264231876231442286774405401325032943382499207831498351503403453087106701,1])


ec25519 = EllipticCurve(GF(2**255-19), [0,486662,0,1,0])   
G25519 = ec25519([9,14781619447589544791020593568409986887264606134616475288964881837755586237401,1])


start_time = time.time()

G25519*1453468177398150159809606346685740164243661205766570829425902097956971527778558271329393537

end_time = time.time()

print("Total time took for Curve25519 to perform scalar multiplication on 250 bits scalar",end_time-start_time)



start_time = time.time()

G272*1453468177398150159809606346685740164243661205766570829425902097956971527778558271329393537
end_time = time.time()

print("Total time took for Curve272 to perform scalar multiplication on 250 bits scalar",end_time-start_time)






#Output
#sage: load("scalarmulttime.sage")
#('Total time took for Curve272 to perform scalar multiplication on 150 bits scalar', 0.026827096939086914)
#('Total time took for Curve25519 to perform scalar multiplication on 150 bits scalar', 0.0281679630279541)
#sage: load("scalarmulttime.sage")

#('Total time took for Curve272 to perform scalar multiplication on 150 bits scalar', 0.010461091995239258)
#('Total time took for Curve25519 to perform scalar multiplication on 150 bits scalar', 0.012859821319580078)
#sage: load("scalarmulttime.sage")

#('Total time took for Curve272 to perform scalar multiplication on 250 bits scalar', 0.028937101364135742)
#('Total time took for Curve25519 to perform scalar multiplication on 250 bits scalar', 0.02915787696838379)