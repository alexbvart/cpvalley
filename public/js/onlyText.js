

$('#descripcion').on('input', function () { 
    this.value = this.value.replace(/[^0-9a-zA-ZñÑáéíóúÁÉÍÓÚ.()/::,@ _-]/g,'');
});

$('.onlyText').on('input', function () { 
    this.value = this.value.replace(/[^0-9a-zA-ZñÑáéíóúÁÉÍÓÚ.()/::,@ _-]/g,'');
});
$('.onlyLeter').on('input', function () { 
    this.value = this.value.replace(/[^a-zA-ZñÑáéíóúÁÉÍÓÚ.()/::,@ _-]/g,'');
});



/*     function OnlyText(text) {
        var OnlyText = text.replace(/[^0-9a-zA-ZñÑáéíóúÁÉÍÓÚ.()/::,@ _-]/g,'');
        return OnlyTex;
    } */

/*     $('.input-number-line').on('input', function () { 
      this.value = this.value.replace(/[^0-9-]/g,'');
    });
     $('.input-number-guion-abajo').on('input', function () { 
      this.value = this.value.replace(/[^0-9_]/g,'');
    });
    $('.input-number').on('input', function () { 
      this.value = this.value.replace(/[^0-9]/g,'');
    });
    
     $('.texto').on('input', function () { 
      this.value = this.value.replace(/[^a-zA.():/,@ _-]/g,'');
    }); */
  /*    let descripcion = document.getElementById("descripcion");
      descripcion.addEventListener('keyup', (e) => {
  
          var valued = descripcion.value;
           let teclaPulsada = e.charCode
  
          if (teclaPulsada > 32 && teclaPulsada < 48) {
              valued = valued.preg_replace(/<\/?[^>]+(>|$)/g,'');          
          }
          if (teclaPulsada >= 57 && teclaPulsada < 64) {
              valued = valued.preg_replace(/<\/?[^>]+(>|$)/g,'');            
          } 
  
          console.log(valued);
      
      });
  
    */  
  /*     var regexp = '/^[a-z0-9]+$/i';
  
      var resultado = preg_match(regexp, $descripcion);
  
      if (!resultado) {
          descripcion = descripcion.replace(/<\/?[^>]+(>|$)/g,'');
      } */