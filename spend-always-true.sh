cardano-cli transaction build \
  --tx-in c126c034ac96bc2796ec2c43a57daafed486772493dd44172bdf50f9ebb10bc0#1 \
  --tx-in ec27d1437645f7550cd7a736bd3f1d17b64de74dcc13cb3e21150c330266ce18#0 \
  --tx-in-script-file always-true.cbor \
  --change-address addr_test1qzas6txq6lmmsrfup4a843zp7wr9llffwcfuvlcxj50t07npncyu8nng5l3t652y80eklqa623cen7xks5df9fdhac0s6eqdlc \
  --testnet-magic 2 \
  --out-file spend-always-true.tx
