const fs = require('fs');
const randomNormal = require('random-normal');
const ethers = require('ethers');
const excel=require('exceljs');

const workbook = new excel.Workbook();
const worksheet = workbook.addWorksheet('Sheet 1');

worksheet.columns = [
    { header: 'Column 1', key: 'column1', width: 10 },
    { header: 'Column 2', key: 'column2', width: 10 },
    { header: 'Column 3', key: 'column3', width: 20 },
];


    // Create a new wallet
    const wallet = ethers.Wallet.createRandom();

    // Print the private key and address
    console.log('Private Key:', wallet.privateKey);
    console.log('Address:', wallet.address);

const mean = 1000000;
const standardDeviation = 100000;
const numberOfRandomNumbers = 150;

const randomNumbers = [];
const addresses=[];
const privateKeys=[];
for (let i = 0; i < numberOfRandomNumbers; i++) {
    const randomNumber = randomNormal({ mean, dev: standardDeviation });
    randomNumbers.push(randomNumber);
    const wallet = ethers.Wallet.createRandom();
    addresses.push(wallet.address);
    privateKeys.push(wallet.privateKey);
    
}

for (let i = 0; i < numberOfRandomNumbers; i++) {
    worksheet.addRow({
        column1: randomNumbers[i],
        column2: addresses[i],
        column3: privateKeys[i],
    });
}

workbook.xlsx.writeFile('excel_table.xlsx')
    .then(() => {
        console.log('Excel file created successfully!');
    })
    .catch((error) => {
        console.error('Error:', error);
    });















// const resultText = randomNumbers.join('\n');
// const resultAddresses=addresses.join('\n')
// const privateKeysList=privateKeys.join('\n')
// fs.writeFile('randomNumbers.txt', privateKeysList, (err) => {
//     if (err) {
//         console.error('Error writing to file:', err);
//     } else {
//         console.log('Random numbers written to randomNumbers.txt');
//     }
// });
