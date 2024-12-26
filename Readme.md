# 🩺 Health Tracker Blockchain Application

## Project Overview

Health Tracker is a decentralized application (dApp) that allows users to securely track and manage their personal health metrics using blockchain technology. By leveraging Solidity smart contracts and Web3 integration, users can privately store and retrieve their health records.

## 🌟 Features

- **Secure Health Tracking**: Store health metrics on the blockchain
- **Private Records**: Only accessible by the record owner
- **Immutable Logging**: Permanent and tamper-proof health record storage
- **Easy Web Interface**: Simple, user-friendly frontend

## 📋 Health Metrics Tracked

- Weight
- Blood Pressure (Systolic/Diastolic)
- Heart Rate
- Personal Notes

## 🛠 Technologies Used

- **Smart Contract**: Solidity
- **Blockchain**: Ethereum
- **Frontend**: HTML, JavaScript
- **Web3 Library**: Web3.js
- **Wallet Integration**: MetaMask

## 🚀 Getting Started

### Prerequisites

- MetaMask Browser Extension
- Ethereum-compatible wallet
- Web3 browser support

### Installation Steps

1. **Smart Contract Deployment**

   - Deploy the `HealthTracker.sol` contract to an Ethereum network
   - Note the contract address

2. **Update Frontend**

   - Replace `CONTRACT_ADDRESS` in the HTML file with your deployed contract address
   - Update `CONTRACT_ABI` to match your contract's ABI

3. **Connect Wallet**
   - Open the HTML file in a Web3-compatible browser
   - Click "Connect Wallet"
   - Select your MetaMask account

## 🔧 Development Setup

### Smart Contract Development

```bash
# Recommended Development Environment
$ npm install -g truffle
$ npm install -g ganache-cli
$ npm install @openzeppelin/contracts
```

### Deployment

```bash
# Deploy to local blockchain
$ ganache-cli

# Compile contract
$ truffle compile

# Migrate contract
$ truffle migrate
```

## 📦 Project Structure

```
health-tracker/
│
├── contracts/
│   └── HealthTracker.sol    # Solidity Smart Contract
│
├── frontend/
│   └── index.html           # Web3 Integration Frontend
│
└── README.md                # Project Documentation
```

## 🔒 Security Considerations

- Records are private and accessible only by the owner
- Input validation in the smart contract
- Requires wallet connection for interactions

## 🌐 Supported Networks

- Ethereum Mainnet
- Ethereum Testnets (Sepolia, Goerli)
- Local development networks

## 📝 Usage Example

1. Connect your MetaMask wallet
2. Fill in health metrics form
3. Click "Add Health Record"
4. View your stored health records

## 🤝 Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## ⚠️ Disclaimer

This application is for demonstration purposes. Always consult healthcare professionals for medical advice and do not rely solely on this application for health monitoring.

## 📄 License

Distributed under the MIT License. See `LICENSE` for more information.

## 🙏 Acknowledgements

- Web3.js
- Solidity
- MetaMask
- Ethereum Community

---

**Happy Health Tracking! 🏥📊**
