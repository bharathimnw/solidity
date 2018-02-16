pragma solidity ^0.4.0;
contract libmng{
    uint256 time;
    uint256 endtime;
    uint256 fine=0;
    
    struct b_detail{
        
        uint256 isbl_no;
        
        uint256 b_count;
        
        
    
    }
    
    mapping(uint256=>b_detail) public Books;
    struct u_detail{
        
        uint256 u_id;
        uint256 count;
        uint256 ubook;
        
    }
    mapping(uint256=>u_detail)public User;
    

    
    function addbooks(uint256 isblno,uint256 i_no)public returns(uint256){
        
        Books[isblno].isbl_no=i_no;
        
        Books[isblno].b_count++;
        
         return(i_no);
        
        
        
    }
    function addusers(uint256 no,uint256 uid)public  returns(uint256){
        
        User[no].u_id=uid;
        User[no].count++;
        User[no].ubook;
        
        
        
        return(uid);
    }
    function getbooks(uint256 isblno,uint256 no)public{
             time=now;
           endtime=now+3 * 1 minutes;
         if(search(isblno)==true)
         User[no].ubook++;
        Books[isblno].b_count--;
        
    
        
    }
   function r_book(uint256 no,uint256 isblno)public returns(uint256){
      
    
        require(User[no].ubook>0);
        
        User[no].ubook--;
        Books[isblno].b_count++;
        
        
        if(now>endtime)
        {
            uint256 f=now-endtime;
            uint256 f1=f/60;
            fine=f1*1;
        }
        return fine;
        
    }
    
        
    function search(uint256 isblno)public view returns(bool){
           if( Books[isblno].b_count>0){
           if(Books[isblno].isbl_no==isblno)
           return true;
           }
           
           return true;
        
    
    }
    function show()public view returns(uint256){
        return fine;
    }
  
        
    
}