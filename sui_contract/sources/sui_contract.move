/*
/// Module: sui_contract
module sui_contract::sui_contract;
*/

// For Move coding conventions, see
// https://docs.sui.io/concepts/sui-move-concepts/conventions


module sui_contract::counter {
    use sui::object;  // No need to specify {Self, UID}, it's included by default
    use sui::tx_context;  // No need to specify TxContext

    /// Define a Counter object
    public struct Counter has key, store {
        id: object::UID, // Correct way to reference UID
        value: u64
    }

    /// Function to create a new Counter object
    public fun new(ctx: &mut tx_context::TxContext): Counter {
        Counter { 
            id: object::new(ctx), // Generates a new UID
            value: 0 
        }
    }
}


