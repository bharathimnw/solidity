pragma solidity ^0.4.0;
contract prime{
    uint256[] i;
    uint256  a;
    function isprime(uint n)public view returns(uint256[]){
        for(a=2;a<=n;a++){
            if(a%2==0){
               i.push(a);
            }
        
        
        }
        return i;
    }
}