const crypto = require('crypto');
const Entities = require('html-entities').XmlEntities;
// A 的 keys:
let A = crypto.createDiffieHellman(512);        
let A_keys = A.generateKeys();                 

let prime = A.getPrime();
let generator = A.getGenerator();

console.log('Prime: ' + prime.toString('hex'));
console.log('Generator: ' + generator.toString('hex'));

// B 的 keys:
let B = crypto.createDiffieHellman(prime, generator);
let B_keys = B.generateKeys();

// C
let C = crypto.createDiffieHellman(prime, generator);
let C_keys = C.generateKeys();

// exchange and generate secret:
let AB_secret = A.computeSecret(B_keys);
let BC_secret = B.computeSecret(C_keys);
let AC_secret = C.computeSecret(A_keys);

let ABC_secret = C.computeSecret(AB_secret);
let BCA_secret = A.computeSecret(BC_secret);
let ACB_secret = B.computeSecret(AC_secret);

// print secret:
console.log('Secret of  A: ' + BCA_secret.toString('hex'));
console.log('Secret of  B: ' + ACB_secret.toString('hex'));
console.log('Secret of  C: ' + ABC_secret.toString('hex'));


var LargeNumberTimes = function(a, b) {
  var result = [],
      // 转换为整型数组
      aArr = a.toString().split('').map(t => parseInt(t)),
      bArr = b.toString().split('').map(t => parseInt(t)),
      aLen=aArr.length,
      bLen=bArr.length;

  // 逐位相乘，不算进位，与计算方向无关
  for (var bIndex=bLen-1; bIndex>=0; bIndex--) {
      for (var aIndex=aLen-1; aIndex>=0; aIndex--) {
          !result[bIndex + aIndex] && ( result[bIndex + aIndex] = 0 );

          result[bIndex + aIndex] += bArr[bIndex] * aArr[aIndex];
      }
  }

  // 因为是从左到右的计算顺序，所以进位要反向
  // （也方便最高位进位时，数组可扩）。
  result.reverse();

  // 最高位可能会进位，所以每次循环重新计算length。
  for (var i=0; i<result.length; i++) {
      var more;

      !result[i] && (result[i] = 0);

      more = parseInt(result[i] / 10);
      if (more > 0) {
          !result[i + 1] && (result[i + 1] = 0);
          result[i + 1] += more;
      }
      result[i] = result[i] % 10;
  }

  return result.reverse().join('');
};


console.log(Entities.encode('<>"&©®∆'));