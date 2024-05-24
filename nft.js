/*
Assessment Requirements
1. Create a variable that can hold a number of NFT's. What type of variable might this be?
2. Create an object inside your mintNFT function that will hold the metadata for your NFTs. 
   The metadata values will be passed to the function as parameters. When the NFT is ready, 
   you will store it in the variable you created in step 1
3. Your listNFTs() function will print all of your NFTs metadata to the console (i.e. console.log("Name: " + someNFT.name))
4. For good measure, getTotalSupply() should return the number of NFT's you have created
*/



// create a variable to hold your NFT's
var nft= [];

// this function will take in some values as parameters, create an
// NFT object using the parameters passed to it for its metadata, 
// and store it in the variable above.
function mintNFT (Name, EyeColor, Type, Country) {
    const nft1 = {
        Name : Name,
        eyeColor : EyeColor,
        shirtType : Type,
        country : Country
    }
    nft.push(nft1);
}


// create a "loop" that will go through an "array" of NFT's
// and print their metadata with console.log()
function listNFTs () {

    for(let i=0;i<nft.length;i++){
        
        console.log("NFT",i+1,":");
        console.log("Name:",nft[i].Name);
        console.log("EyeColor:",nft[i].eyeColor);
        console.log("ShirtType:",nft[i].shirtType);
        console.log("Country:",nft[i].country);
        console.log();
    }

}

// print the total number of NFTs we have minted to the console
function getTotalSupply() {
    
    return nft.length;

}

// call your functions below this line
mintNFT("Alok","brown","cotton","India");
mintNFT("Alex","grey","wollen","USA");
mintNFT("Rachel","greyish-brown","Norway");

listNFTs();
console.log("Total NFTs : ")
console.log(getTotalSupply());
