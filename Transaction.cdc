import mycoding from 0x05

transaction(name: String, primaryfood: String, secondaryfood: String, account: Address) {

    prepare(signer: AuthAccount) {}

    execute {
        mycoding.addFood(name: name, primaryfood: primaryfood, secondaryfood: secondaryfood, account: account)
        log("We're done.")
    }
}
