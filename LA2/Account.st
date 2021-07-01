Object subclass: Account [

    |number|
    |customer|
    |balance|

    accrue: rate [
        ^self subclassResponsibility
    ]
    
    balance [
        ^balance
    ]

    deposit: amount [
        balance := balance + amount
    ]

    withdraw: amount [
        balance := balance - amount
    ]

    asString [
       ^number asString,':',customer asString,':',balance asString
    ]

]