import mycoding from 0x05

pub fun main(account: Address): mycoding.Food {
    return mycoding.foods[account]!
}
