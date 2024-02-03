pub contract mycoding {

    pub var foods: {Address: Food}
    
    pub struct Food {
        pub let name: String
        pub let primaryfood: String
        pub let secondaryfood: String
        pub let account: Address

        init(_name: String, _primaryfood: String, _secondaryfood: String, _account: Address) {
            self.name = _name
            self.primaryfood = _primaryfood
            self.secondaryfood = _secondaryfood
            self.account = _account
        }
    }

    pub fun addFood(name: String, primaryfood: String, secondaryfood: String, account: Address) {
        let newFood = Food(_name: name, _primaryfood: primaryfood, _secondaryfood: secondaryfood, _account: account)
        self.foods[account] = newFood
    }

    init() {
        self.foods = {}
    }
}
