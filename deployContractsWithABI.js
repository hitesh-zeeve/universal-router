var Web3 = require('web3');
var fs = require('fs');
var web3 = new Web3(web3.currentProvider);

var code = '0x608060405234801561001057600080fd5b506040516106b...';

fs.readFileSync('test/integration-tests/shared/abis/Cryptopunks.json');
var abi = JSON.parse('[{"constant":true,"inputs":[],"name":"word","outputs":...');

var myContract;
function createExampleContract() {

    document.getElementById('create').style.visibility = 'hidden';
    document.getElementById('code').innerText = code;

    web3.eth.defaultAccount = web3.eth.coinbase;
    document.getElementById('status').innerText = "transaction sent, waiting for confirmation";

    web3.eth.contract(abi).new({data: code}, function (err, contract) {
        if(err) {
            console.error(err);
            return;
        } else if(contract.address){
            myContract = contract;
            console.log('address: ' + myContract.address);
            document.getElementById('status').innerText = 'Mined!';
            document.getElementById('call').style.visibility = 'visible';
        }
    });
}

function callExampleContract() {
    var param = parseInt(document.getElementById('value').value);

    myContract.getWord(param, function(err, result) {
      if (err) {
        console.log('e: ' + err);
      } else {
        console.log('r: ' + result);
      }
    });
}