
#R・G・Bのうち、最も大きな値をMAX、最も小さな値をMINとして
#Rが最大値の場合色の相 H = [H/6(60)] × ((G - B) ÷ (MAX - MIN))
#Gが最大値の場合色の相 H = [H/6(60)] × ((B - R) ÷ (MAX - MIN)) +120
#Bが最大値の場合色の相 H = [H/6(60)] × ((R - G) ÷ (MAX - MIN)) +240
#R・G・Bが同じ値の場合の色相 H = 0

#R・G・Bのうち、最も大きな値をMAX、最も小さな値をMINとして
#彩度 S = (MAX - MIN) ÷ MAX

#R・G・Bのうち、最も大きな値をMAXとして
#明度 V = MAX