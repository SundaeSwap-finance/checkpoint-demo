echo "d87980" | xxd -r -p > void.cbor

cardano-cli transaction build \
  --tx-in 64c444fad57dd05c786d190a7e97b806f9205120cf30491b4561d79081ca546d#1 \
  --tx-out addr_test1wquu2gxsvfa2lfeg7ljd6yq59dmuy4up8sm02l3vhz8h9fg4q3ckq+2000000 \
  --tx-out-inline-datum-cbor-file void.cbor \
  --change-address addr_test1qzas6txq6lmmsrfup4a843zp7wr9llffwcfuvlcxj50t07npncyu8nng5l3t652y80eklqa623cen7xks5df9fdhac0s6eqdlc \
  --testnet-magic 2 \
  --out-file always-true.tx
