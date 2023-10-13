var btnF = document.getElementById('botonF'),
    overlayF = document.getElementById('overlayF'),
    popupF = document.getElementById('popupF'),
    btnCerrarP1 = document.getElementById('botonFC');


var btnC = document.getElementById('botonC'),
    overlayC = document.getElementById('overlayC'),
    popupC = document.getElementById('popupC'), 
    btnCerrarP2 = document.getElementById('botonCC');

    btnF.addEventListener('click', function(){
        overlayF.classList.add('active');
        popupF.classList.add('active');
    });
    
    btnCerrarP1.addEventListener('click', function(){
        overlayF.classList.remove('active');
        popupF.classList.remove('active');
    });
    
    
    btnC.addEventListener('click', function(){
        overlayC.classList.add('active');
        popupC.classList.add('active');
    });
    
    btnCerrarP2.addEventListener('click', function(){
        overlayC.classList.remove('active');
        popupC.classList.remove('active');
    });