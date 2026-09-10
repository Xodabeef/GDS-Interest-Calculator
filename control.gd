extends Control


var pay_in: bool = false
var compound: bool = false
var total_interest: float = 0.0
var total_payment: float = 0.0
var add: float = 0.0



func _ready() -> void:
	print(calc_loan(14150, 6.69, 8))


func calc_loan(loan:float, i_interest:float, installments:int):
	var interest = i_interest/100
	match pay_in:
		false:
			for i in installments:
				add = loan*interest
				total_interest += add
				if compound:
					loan += add
	total_payment = loan + total_interest
	return str("---Input---","\nLoan: ",loan,",\nInterest: ",interest*100,"%,\nInstallments: ",installments,",\nCompound: ",compound,",\nPay-In: ",pay_in,",\n---Output---","\nTotal Interest: ",total_interest,",\nTotal Payment: ",total_payment)
