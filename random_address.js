const ethers = require('ethers');

for (i=0;i<150;i++){
// Create a new wallet
const wallet = ethers.Wallet.createRandom();

// Print the private key and address
console.log('Private Key:', wallet.privateKey);
console.log('Address:', wallet.address);
}