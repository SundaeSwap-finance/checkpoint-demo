use aiken/hash.{Blake2b_224, Hash}
use aiken/list
use aiken/transaction.{ScriptContext}
use aiken/transaction/credential.{VerificationKey}
 
type Datum {
  owner: Hash<Blake2b_224, VerificationKey>,
}
 
type Redeemer {
  msg: ByteArray,
}
 
validator {
  fn hello_world(datum: Datum, redeemer: Redeemer, context: ScriptContext) -> Bool {
		let own_input = ...;

    let must_say_hello =
      redeemer.msg == "Hello, World!"
 
    let must_be_signed =
      list.has(context.transaction.extra_signatories, datum.owner)

		let output = list.find(context.transaction.outputs, fn(o) { o.address.payment_credential == datum.owner })

		let can_only_take_half = own_input.value.lovelace / 2 == output.value.lovelace

		must_say_hello && must_be_signed && can_only_take_half
  }
}
