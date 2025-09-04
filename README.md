# Solidity Learning Repository

Welcome to the Solidity Learning Repository! This repository is a comprehensive collection of tutorials, examples, and explanations to help you master Solidity, the programming language for writing smart contracts on the Ethereum blockchain. Whether you're a beginner or an experienced developer, you'll find resources covering fundamental concepts to advanced topics.

<a href="https://github.com/0xYujan/Solidity/pulls"><img src="https://img.shields.io/github/issues-pr/0xYujan/Solidity" alt="Pull Requests Badge"/></a>
<a href="https://github.com/0xYujan/Solidity/graphs/contributors"><img alt="GitHub contributors" src="https://img.shields.io/github/contributors/0xYujan/Solidity?color=2b9348&style=flat&logo=github"></a>
<a href="https://github.com/0xYujan/Solidity/blob/main/LICENSE"><img src="https://img.shields.io/github/license/0xYujan/Solidity?color=2b9348" alt="License Badge"/></a>

[![GitHub repo forks](https://img.shields.io/github/forks/0xYujan/Solidity?style=flat&logo=github&logoColor=whitesmoke&label=Forks)](https://github.com/0xYujan/Solidity/network)&#160;
[![GitHub repo stars](https://img.shields.io/github/stars/0xYujan/Solidity?style=flat&logo=github&logoColor=whitesmoke&label=Stars)](https://github.com/0xYujan/Solidity/stargazers)&#160;
[![GitHub org sponsors](https://img.shields.io/github/sponsors/0xYujan?style=flat&logo=github&logoColor=whitesmoke&label=Sponsors)](https://github.com/sponsors/0xYujan)&#160;
[![GitHub repo watchers](https://img.shields.io/github/watchers/0xYujan/Solidity?style=flat&logo=github&logoColor=whitesmoke&label=Watchers)](https://github.com/0xYujan/Solidity/watchers)&#160;
[![GitHub repo size](https://img.shields.io/github/repo-size/0xYujan/Solidity?style=flat&logo=github&logoColor=whitesmoke&label=Repo%20Size)](https://github.com/0xYujan/Solidity/archive/refs/heads/main.zip)
[![GitHub repo Issues](https://img.shields.io/github/issues/0xYujan/Solidity?style=flat&logo=github&logoColor=red&label=Issues)](https://github.com/0xYujan/Solidity/issues)&#160;
[![GitHub repo Good Issues for newbies](https://img.shields.io/github/issues/0xYujan/Solidity/good%20first%20issue?style=flat&logo=github&logoColor=green&label=Good%20First%20issues)](https://github.com/0xYujan/Solidity/issues?q=is%3Aopen+is%3Aissue+label%3A%22good+first+issue%22)&#160;
[![GitHub repo PRs](https://img.shields.io/github/issues-pr/0xYujan/Solidity?style=flat&logo=github&logoColor=orange&label=PRs)](https://github.com/0xYujan/Solidity/pulls)&#160;
[![GitHub repo Merged PRs](https://img.shields.io/github/issues-search/0xYujan/Solidity?style=flat&logo=github&logoColor=green&label=Merged%20PRs&query=is%3Amerged)](https://github.com/0xYujan/Solidity/pulls?q=is%3Apr+is%3Amerged)&#160;
[![Awesome](https://cdn.rawgit.com/sindresorhus/awesome/d7305f38d29fed78fa85652e3a63e154dd8e8829/media/badge.svg)](https://github.com/sindresorhus/awesome)&#160;

## Table of Contents

- [About](#about)
- [Prerequisites](#prerequisites)
- [Topics Covered](#topics-covered)
- [Getting Started](#getting-started)
- [Contributing](#contributing)
- [License](#license)

## About

This repository serves as a one-stop resource for learning Solidity. Each topic is organized into its own directory, containing:
- A detailed `README.md` with explanations and code snippets.
- Example Solidity files (`.sol`) demonstrating the concepts.
- Practical projects to apply your knowledge.

The content is structured to build your understanding progressively, from basics to complex smart contract development.

## Prerequisites

Before diving in, ensure you have:
- Basic knowledge of programming concepts.
- Familiarity with Ethereum and blockchain fundamentals.
- A development environment set up with:
  - Node.js and npm
  - Truffle or Hardhat for testing
  - A code editor like VS Code
  - MetaMask or another Ethereum wallet for testing

## Topics Covered

Here's a comprehensive list of topics included in this repository:

### Basic Concepts
- **[ABI](ABI/)**: Application Binary Interface - Encoding and decoding functions.
- **[Bitwise Operators](Bitwise%20Operators/)**: Bit manipulation operations in Solidity.
- **[Constructor](Constructor/)**: Contract initialization and parameter passing.
- **[Data Locations](Data%20Locations/)**: Understanding storage, memory, and calldata.
- **[Enums](Enums/)**: Enumerated types for better code organization.
- **[Events](Events/)**: Logging events on the blockchain.
- **[Fallback](Fallback/)**: Handling unknown function calls.
- **[Function Modifier](Function%20Modifier/)**: Modifying function behavior with modifiers.
- **[Functions](Functions/)**: Overview of functions, including View and Pure.
- **[If_Else](If_Else/)**: Conditional statements.
- **[Import](Import/)**: Importing other contracts and libraries.
- **[Inheritance](Inheritance/)**: Contract inheritance mechanisms.
- **[Keccak256](Keccak256/)**: Hashing functions.
- **[Library](Library/)**: Creating and using libraries.
- **[Loops](Loops/)**: Iteration structures like for and while loops.
- **[Mapping](Mapping/)**: Key-value data structures.
- **[Payable](Payable/)**: Handling Ether payments.
- **[Primitive Data Type](Primitive%20Data%20Type/)**: Basic data types in Solidity.
- **[Sending Ether](Sending%20Ether/)**: Transferring Ether between contracts.
- **[Struct](Struct/)**: Custom data structures.
- **[Variables](Variables/)**: State, local, global, constant, and immutable variables.
- **[Visibility](Visibility/)**: Public, private, internal, and external access modifiers.

### Advanced Topics
- **[Call](Call/)**: Low-level calls to other contracts.
- **[Calling Other Contract](Calling%20Other%20Contract/)**: Interacting with external contracts.
- **[Delegatecall](Delegatecall/)**: Delegating calls to other contracts.
- **[Error](Error/)**: Error handling with require, assert, revert, and custom errors.
- **[Ether Wallet](Ether%20Wallet/)**: Managing Ether balances and wallets.
- **[Gas](Gas/)**: Understanding gas usage and optimization.
- **[Gas Saving Techniques](Gas%20Saving%20Techniques/)**: Efficient coding practices to save gas.
- **[Unchecked](Unchecked/)**: Arithmetic without overflow checks.

### Practical Projects
- **[Program](Program/)**: Practical programs like LeapYear calculator.
- **[Project](Project/)**: Full-fledged smart contract projects including:
  - CrowdFunding: Decentralized crowdfunding platform.
  - EventContract: Event management system.
  - Lottery: Random lottery system.
  - SmartWallet: Secure wallet with guardians.
  - VendingMachine: Automated vending machine simulation.

## Getting Started

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/0xYujan/Solidity.git
   cd Solidity
   ```

2. **Navigate to a Topic**:
   Choose a topic from the list above and explore the corresponding folder.

3. **Read the README**:
   Each folder contains a `README.md` with detailed explanations.

4. **Run the Examples**:
   - Use Remix IDE for online testing.
   - Or set up a local environment with Truffle/Hardhat.

5. **Experiment**:
   Modify the example code and test your changes.

## Contributing

Contributions are welcome! If you'd like to add new topics, improve existing content, or fix issues:

1. Fork the repository.
2. Create a new branch for your changes.
3. Make your modifications.
4. Submit a pull request with a clear description of your changes.

Please ensure your code follows Solidity best practices and includes appropriate documentation.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

Happy coding with Solidity! 🚀

If you find this repository helpful, please give it a star ⭐ and share it with others learning Solidity.

