Account subclass: CheckingAccount [

    CheckingAccount class [
    
        new [
            ^super new init
        ]
    ]

    init [
        balance:=0.0.
        customer:=0.0.
        number:=0.0
    ]

    withBalance: newbalance [
        balance:= newbalance
    ]

    withNumber: newNumber [
        number:= newNumber
    ]

    withCustomer: newCustomer [
        customer:= newCustomer
    ]

    accrue: rate [
        
    ]

]

