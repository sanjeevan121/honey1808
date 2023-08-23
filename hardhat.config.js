require("@nomicfoundation/hardhat-toolbox");
require('dotenv').config();
/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.18",
  settings: {
    optimizer: {
      enabled: true,
      runs: 1000
    },
  },
  gasReporter: {
    enabled: true,
    currency: "INR",
    coinmarketcap: process.env.COINMARKETCAP,
    token: "bnb",
    outputFile: "gasReports.txt",
    noColors: true
  },
  networks:
  {
    BSC: {
      url: process.env.BSC,
      accounts: [`0x${process.env.bnbChain}`]
    },
    TBNB:{
      url: process.env.tbnburl,
      accounts:[`0x${process.env.tbnbpvtkey}`]
    }
  }

};
