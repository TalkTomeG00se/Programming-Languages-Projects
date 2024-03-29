Object subclass: Bank [

    |accounts|

    Bank class [
        new [
            ^super new init
        ]
    ]

    init [
        accounts := Set new
    ]

    add: account [
        accounts add: account
    ]

    accrue: rate [
        accounts do: [:account | account accrue: rate]
    ]

    asString [
        |s| s:=''.
        accounts do: [:account | s := s, (Character nl asString) , account asString].
        ^s
    ]
]

|bank| bank := Bank new.
|c| c := Customer new withName: 'Ann'.
bank add: (((account:=CheckingAccount new withNumber:'01001') withCustomer:c)withBalance:100.00).
bank add: (((account:=SavingsAccount new withNumber:'01002') withCustomer:c) withBalance:200.00).
bank accrue: 0.02.
bank asString printNl