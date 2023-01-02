import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="address"
export default class extends Controller {
  connect() {
    
    console.log("Connetcted to elemen5t")
    if (window.google){
      this.initGoogle();
    }
  }
  initGoogle(){
console.log("google inIT  this is working ");
console.log(google)
var id =document.getElementById("destination_address")
var autocomplete =new google.maps.places.Autocomplete(id)
autocomplete.addListener('place_changed', function () {
var place = autocomplete.getPlace();
// place variable will have all the information you are looking for.
 
  document.getElementById("destination_latitude").value = place.geometry['location'].lat();
  document.getElementById("destination_longitude").value = place.geometry['location'].lng();
});

  }



  placeSelected(){

  }
}
