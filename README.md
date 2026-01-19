# Cross-Chain Rebase Token

![Solidity](https://img.shields.io/badge/Solidity-^0.8.24-blue)
![Foundry](https://img.shields.io/badge/Foundry-^1.0.0-red)
![OpenZeppelin](https://img.shields.io/badge/OpenZeppelin-^5.0.0-green)
![Chainlink CCIP](https://img.shields.io/badge/Chainlink%20CCIP-^1.0.0-orange)

## Description

This project implements a cross-chain rebase token using Foundry as the development framework. It leverages OpenZeppelin contracts for secure and standardized ERC-20 functionality and Chainlink CCIP (Cross-Chain Interoperability Protocol) for seamless cross-chain transfers and interactions.

The rebase token automatically adjusts its supply based on predefined mechanisms, enabling dynamic tokenomics across multiple blockchain networks.

For a comprehensive implementation and detailed examples, refer to the [Cyfrin Updraft repository](https://github.com/Cyfrin/foundry-cross-chain-rebase-token-cu).

## Table of Contents

- [Cross-Chain Rebase Token](#cross-chain-rebase-token)
  - [Description](#description)
  - [Table of Contents](#table-of-contents)
  - [Installation](#installation)
  - [Setup](#setup)
  - [Usage](#usage)
    - [Build](#build)
    - [Test](#test)
    - [Format](#format)
    - [Gas Snapshots](#gas-snapshots)
  - [Testing](#testing)
  - [Deployment](#deployment)
  - [Contributing](#contributing)
  - [License](#license)

## Installation

Ensure you have Foundry installed. If not, follow the installation guide at [getfoundry.sh](https://getfoundry.sh/).

Clone the repository:

```bash
git clone https://github.com/your-username/crossChainRebaseToken.git
cd crossChainRebaseToken
```

Install dependencies:

```bash
forge install
```

## Setup

1. Configure your environment variables for private keys and RPC URLs.
2. Update the `foundry.toml` file if needed for custom configurations.

## Usage

### Build

Compile the contracts:

```bash
forge build
```

### Test

Run the test suite:

```bash
forge test
```

### Format

Format the Solidity code:

```bash
forge fmt
```

### Gas Snapshots

Generate gas usage snapshots:

```bash
forge snapshot
```

## Testing

Run specific tests or all tests with verbose output:

```bash
forge test -v
```

## Deployment

Deploy the contract using Forge scripts. Example:

```bash
forge script script/Deploy.s.sol --rpc-url <your_rpc_url> --private-key <your_private_key> --broadcast
```

Note: Update the script name and parameters as per your deployment script.

## Contributing

Contributions are welcome! Please follow the standard Git workflow:

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Run tests
5. Submit a pull request

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
