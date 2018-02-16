pragma solidity ^0.4.0;
import "./ERC20.sol";
import "./ERC20Basic.sol";

contract Createtoken is ERC20Basic,ERC20{
    string standard="Token 1.0";
    string name;
    string symbol;
   uint256 public totalsupply;
   uint256  initialallowed;
   

    mapping(address=>uint) public balanceOf;
    mapping(address=>mapping(address=>uint256))public allowed;


function Createtoken()public{
    totalsupply=50000;
    balanceOf[msg.sender]=totalsupply;
    symbol="mc";
    initialallowed=500;
    
}
function transferFrom(address from, address to, uint256 value)public view returns(bool) {
    require(to != address(0));
    require(value <= balanceOf[from]);
    require(value <= allowed[from][msg.sender]);

    balanceOf[from]=balanceOf[from]-(value);
    balanceOf[to] =balanceOf[to]+(value);
    allowed[from][msg.sender] = allowed[from][msg.sender]-(value);
    return true;
    
  }
  function balanceOf(address who) public view returns (uint256){
      return balanceOf[who];
  }

function allowance(address owner, address to) public view returns (uint256) {
    
    allowed[owner][to]=initialallowed;
    return allowed[owner][to];
}
  function transfer(address to, uint256 value) public view returns (bool){
            require(value<=balanceOf[msg.sender]);
            require(value<=allowed[msg.sender][to]);
            balanceOf[msg.sender]=balanceOf[msg.sender]-(value);
            balanceOf[to]=balanceOf[to]+(value);
        
        return true;
  }

function approve(address spender, uint256 value) public view returns (bool) {
    allowed[msg.sender][spender] = value;
   
    return true;
}
function totalSupply()public view returns(uint256){
    return totalsupply;
}
    function increaseApproval(address to, uint value) public returns(bool)
    {
        
        allowed[msg.sender][to]=allowed[msg.sender][to]+(value);
        return true;
    }
    function decreaseApproval(address to, uint value) public returns(bool)
    {
        allowed[msg.sender][to]=allowed[msg.sender][to]-(value);
    }

}


contract Mintable is Createtoken {
    event Mint(address indexed to, uint256 amount);
    
    bool public mintfinish=false;
    function mint(address to,uint256 amount)public returns(bool){
        totalsupply+=amount;
        balanceOf[to]+=amount;
        mint(to,amount);
        return true;
    }
    
}


contract crwodsale is Createtoken,Mintable{
    uint256 public starttime;
    uint256 public endtime;
    address public wallet;
    uint256 public rate=300;
    uint256 public weiraised;
    
    
    event TokenPurchase(address indexed purchaser, address indexed beneficiary, uint256 value, uint256 amount);
function crowdsale(uint256 sttime,uint256 edtime,uint256 _rate,address _wallet)public{
    starttime=sttime;
    endtime=edtime;
    rate=_rate;
    
    
    require(sttime>=now);
    require(edtime>=sttime);
    require(rate>0);
     
    
}
    function()payable public{
     buyToken(msg.sender); 
     
    }
function buyToken(address beneficiary)public payable{
        require(beneficiary!=address(0));
        uint256 weiAmount=msg.value;
        uint256 tokens=weiAmount*rate;
        weiraised+=weiAmount;
        balanceOf[beneficiary]+=tokens;
         TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
         
}
  function forward () internal {
    wallet.transfer(msg.value);
}
    

}