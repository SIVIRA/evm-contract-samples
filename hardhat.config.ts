import { defineConfig } from "hardhat/config";

export default defineConfig({
  solidity: {
    version: "0.8.37",
    settings: {
      viaIR: true,
    },
  },
  networks: {
    hardhatMainnet: {
      type: "edr-simulated",
      chainType: "l1",
    },
    hardhatOp: {
      type: "edr-simulated",
      chainType: "op",
    },
  },
});
