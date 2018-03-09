pragma solidity ^0.4.0;
contract fib{
    uint a=0;
    uint b=1;
    uint c;
    uint[] i;
   function add(uint256 n)public  view returns(uint256[]){
      
          for (c = 2; c<= n; c++)
  {
     c = a+ b;
     a = b;
     b = c;
     i.push(b);
  }
  
return i;
   }
}
