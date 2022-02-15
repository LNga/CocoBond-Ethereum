pragma solidity ; // A Complétet
import ; // A Compléter

contract CocobondECE is usingProvable {
    uint public ETHEUR;
    event LogPriceUpdated(string price);
    event LogNewProvableQuery(string description);
    event LogCurrentPrice(bool convertible,uint current_price);

    mapping(int => uint) public strike_price;

    constructor()
        public payable
    {
        updatePrice();
    }

    function subscribe (int id, uint price) public returns (bool){
        strike_price[id]=price;
        return true;
    }
    
    function convert(int bondId)public payable{
       
    }

   function __callback(bytes32 _myid,
        string memory _result) public {
       require(msg.sender == provable_cbAddress());
       ETHEUR = parseInt(_result,2);
       emit LogPriceUpdated(_result);
   }

    function updatePrice()public payable returns (bool){
      
    }
}
