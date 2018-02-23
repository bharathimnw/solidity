pragma solidity ^0.4.0;
import  "./newtoken.sol";
contract invenmng is newtoken{
    struct stocs{
        uint256 id1;
        bytes32 name;
        string pro_type;
        uint256 price;
        uint256 count;
        uint256 amount;
    
    }
     bytes32[] public name1;
    uint256[] public ids;
    address public owner;
    function invenmng()public{
        owner=msg.sender;
    }
        struct users{
        
        string name;
        uint256 amount;
        uint256 buycount;
            }
    
   uint256 public value;
    mapping(uint256=>stocs)public STOCS;
    
    
    mapping(uint256=>users)public USER;
    uint256 nocount;
    
   
    function pro_details(uint256 id,bytes32 names,string ptypes,uint256 prices,uint256 count) public{
        STOCS[id].id1=id;
        STOCS[id].name=names;
        STOCS[id].pro_type=ptypes;
        STOCS[id].price=prices;
        STOCS[id].count=count;
        STOCS[id].amount;
       name1.push(names);
        ids.push(id);
        
    }
    function products()public view returns(bytes32[],uint256[]){
       return (name1,ids);
   }

    function user(uint256 id1,string names,uint256 buycount) public returns(string,uint256) {
        
        USER[id1].name=names;
        USER[id1].amount=1000;
        USER[id1].buycount=buycount;
        
        return(USER[id1].name,USER[id1].amount);
    }
    
      
   
    function purchase(uint256 id,uint256 id1,uint256 amount,uint256 buycount) public returns(bool){
        
       if(USER[id1].buycount==buycount &&STOCS[id].price==amount)
       {     value=USER[id1].buycount*amount;
            USER[id1].amount=USER[id1].amount- value;
            STOCS[id].amount=STOCS[id].amount+value;
             STOCS[id].count=STOCS[id].count-buycount;
             balance[owner]=balance[owner]+ STOCS[id].amount;
          transfer(owner,amount);
            return true;
       }
    }
    
   function pr_update(uint256 id)public view returns(bytes32, string,uint256,uint256,uint256){
        return ( STOCS[id].name,STOCS[id].pro_type,STOCS[id].price, STOCS[id].amount,STOCS[id].count);
    }
    
    function ur_update(uint256 id1)public view returns(string,uint256,uint256){
      
       return (USER[id1].name, USER[id1].amount,USER[id1].buycount);
    }
    function pur_prod(uint256 id)public view returns(bytes32,uint256,uint256){
         return ( STOCS[id].name, STOCS[id].count, STOCS[id].amount);
    }
    
    function sendEther() public payable  {
        uint256 t=msg.value/rate;
        require(balance[owner]>t && msg.value==rate*t);
        owner.transfer(msg.value);
        balance[msg.sender]=balance[msg.sender]+t;
        balance[owner]=balance[owner]-t;
        
    }
    
   
    
}

