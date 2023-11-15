# example avs built on blockless networking stack

This example `avs` is built as a low level on rails system using Blockless SDK.

There are two command line entries for this repository.

- `avs` - located under `cmd/avs`, this is the base AVS Node System. The topology launch is left to the developer of the network.
- `keys` - located under `cmd/keys`, this is the base Key system built on libp2p keys. This can be adjusted as a AVS developer sees fit.

# core AVS functionality

`_avs-core` is a low level WASM application, that runs in the `Blockless Runtime`. This is recommended, so that an AVS can port it's core logic externally from the Operator Network. This ensures seamless upgrades when required, much like updating Smart Contracts, the core functionality of the AVS network can
remain untouched, while the portable executor logic can be updated.
