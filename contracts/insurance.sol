pragma solidity ^0.8.7;
contract Insurance {

 
     //Define mapping to get and store key-values pairs.
    mapping(string => customer) Mapping;
    
     //Organize customers data using struct
struct customer
    {
        // Customers details required
        string id; 
        string name; 
        uint age;
  }

   
    // Save the customer details
    function saveCustomerDetails(string memory id, string memory name,  uint age) public  {
        Mapping[id] = customer(id, name, age);
    }

   // Get the customer name and age.

    function getCustomer(string memory id) public  view returns(string memory name, uint age){
        return (Mapping[id].name, Mapping[id].age);
   

         
 }


    // In this secction customer will be required to enter the type of insurance
    // if the insuranse is equal "Health insuranse" it will be charge from the customer 100$, otherwise  total will be 0
  uint private healthInsurance;
         
         uint private insurance_price = 100;
         string private type_of_insurance = "Health insurance";
         string private warning = "Wrong option";
         uint public total;
        
  
           function setInsurance(string memory  userInput) public  { 
      // Once user input the insuranse type, it will be compared and if successful the totl will be 100$
  
          
       if(keccak256(bytes(type_of_insurance)) == keccak256(bytes(userInput))) {

         total = insurance_price;
          
        }
        
           else{
            
                total = 0;
           }

  }
    

  
 }