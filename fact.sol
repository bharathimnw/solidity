pragma solidity ^0.4.0;
contract fact{
   
    uint256 f=1;
    
    function factorial(uint256 n)public returns(uint256){
     for(uint256 i=1;i<=n;i++){
         f=f*i;
     }
     return f;
     
}
}