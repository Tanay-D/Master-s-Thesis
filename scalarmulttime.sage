import time

ec272 = EllipticCurve(GF(7588550360256754183279148073529370729071901715047420004889892225542593764571217919), [0,22042,0,1,0])
G272 =  ec272([2,622589279264231876231442286774405401325032943382499207831498351503403453087106701,1])


ec25519 = EllipticCurve(GF(2**255-19), [0,486662,0,1,0])   
G25519 = ec25519([9,14781619447589544791020593568409986887264606134616475288964881837755586237401,1])


scalar = 1349397239861193685604952047145083720762927653646760346278895392085772735750643974225413742441888625638994430876934225006

start_time = time.time()
G25519*scalar
end_time = time.time()
print("Total time took for Curve25519 to perform scalar multiplication on 400 bits scalar",end_time-start_time)



start_time = time.time()
G272*scalar
end_time = time.time()
print("Total time took for Curve272 to perform scalar multiplication on 400 bits scalar",end_time-start_time)







#('Total time took for Curve25519 to perform scalar multiplication on 250 bits scalar', 0.01612997055053711)
#('Total time took for Curve272 to perform scalar multiplication on 250 bits scalar', 0.017477035522460938)

#('Total time took for Curve25519 to perform scalar multiplication on 300 bits scalar', 0.03300905227661133)
#('Total time took for Curve272 to perform scalar multiplication on 300 bits scalar', 0.03593802452087402)

#('Total time took for Curve25519 to perform scalar multiplication on 400 bits scalar', 0.02141118049621582)
#('Total time took for Curve272 to perform scalar multiplication on 400 bits scalar', 0.02892303466796875)

#('Total time took for Curve25519 to perform scalar multiplication on 500 bits scalar', 0.06619787216186523)
#('Total time took for Curve272 to perform scalar multiplication on 500 bits scalar', 0.06926798820495605)
