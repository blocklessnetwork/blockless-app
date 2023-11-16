# Example AVS built on Blockless Networking Stack

This example Actively Validated Service (`avs`) demonstrates a low-level, on-rails system architecture utilizing the Blockless SDK.

## Repository Structure

The repository consists of three primary components:

1. AVS Node System (`cmd/avs`):
   - This is the foundational AVS Node System.
   - Topology launch configuration is left to the network developer's discretion.
2. Key System (`cmd/keys`):
   - Forms the base Key system, built on libp2p keys.
   - Offers flexibility for AVS developers to modify as needed.
3. Core AVS Functionality (`_avs-core`)
   - A low-level WebAssembly (WASM) application running in the `Blockless Runtime`.
   - Designed for AVSs to port their core logic outside of the Operator Network.
   - Facilitates seamless upgrades, akin to updating smart contracts. This allows the core functionality of the AVS network to remain consistent, while the portable executor logic can be updated as required.
