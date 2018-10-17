$(document).ready(function(){
  $('#new_product').validate({
    errorClass: "invalid",
    validClass: "success",
    rules:{
      'product[name]': 'required',
      'product[strain_type]': 'required',
      'product[photo]': {
        required: true,
        extension: "jpg|png|jpeg",
        maxfiles:1
      }
    },
    messages:{
      'product[name]': 'Please enter the product\'s name.',
      'product[strain_type]': 'Select the type.',
      'product[photo]': 'Please attach at least on photo. Supported file types are jpg|jpeg|png.'
    }
  });
  // A function to determine number of files attached to File Field before uploading.Will use it later.
  // $('#productfileField').on('change',function(){
  //   var filelistCount = this.files.length;
  //   console.log("Number of attached files are")
  //   console.log(filelistCount)
  // })
});