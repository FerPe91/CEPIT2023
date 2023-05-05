let btnAgregar = document.getElementById("btnAgregar")
let verCamionetas = document.getElementById("verCamionetas")

let vehiculos = [
    id="2",
    marca="ford",
    patente="dfg-234",
    modelo="falcon",
    año="2012",
    precio="1213",
    camioneta=false,
    carga=""

];


const mostrarVehiculos = () => {
    let contenedor = document.getElementById('tblVehiculo');
    let tabla ='';

    for (let r of vehiculos) {
        console.log("dato:"+ r)
        tabla +=
            `<tr>
                <td>${r.id}</td> 
                <td>${r.marca}</td>
                <td>${r.patente}</td>
                <td>${r.modelo}</td>
                <td>${r.año}</td>
                <td>${r.precio}</td>
                <td>${r.camioneta=r.camioneta ? "si" : "no"}</td>
                <td>${r.carga}</td>
                <td><button type="button" class="btnEliminar" id=${r.id}>Eliminar</button></td>
            </tr>`

            console.log(vehiculos);
    }
    contenedor.innerHTML = tabla;


    const miCheckbox = document.getElementById('miCheckbox');
    const carga = document.getElementById('carga');

    miCheckbox.addEventListener("change", function() {
        if (miCheckbox.checked) {
            carga.disabled = false;
        } else {
            carga.disabled = true; 
            r.carga=""
        }
    });



    let botonesEliminar = document.querySelectorAll(".btnEliminar")

    const eliminarVehiculo = async(e)=>{
        let id = e.target.id;
        let respuesta = await fetch(`/concesionaria/${id}`,{
        method:'DELETE',
        headers:{"content-type" : "application/json"}
        })
        load()
    }


    botonesEliminar.forEach(boton => {
        boton.addEventListener('click',(e) =>{
            eliminarVehiculo(e)
        })
    })

}

async function load(){
    const url_base = 'http://localhost:3000'
    const endpoint = '/concesionaria';
    const respuesta = await fetch(url_base + endpoint);
    vehiculos = await respuesta.json();
    console.log(vehiculos);
    
    mostrarVehiculos()
}

const agregar = async () => {
    let marca = document.getElementById('marca').value;
    let patente = document.getElementById('patente').value;
    let modelo = document.getElementById('modelo').value;
    let año = document.getElementById('año').value;
    let precio = document.getElementById('precio').value;
    let camioneta = document.getElementById('miCheckbox').value;
    let carga = document.getElementById('carga').value;

    let vehiculo = {
    "marca": marca,
    "patente": patente,
    "modelo": modelo,
    "año": año,
    "precio": precio,
    "camioneta":camioneta,
    "carga":carga,
    }
    if (aServidor(vehiculo)) {
        vehiculos.push(vehiculo);
        mostrarVehiculos();
    }

}




const aServidor = async (datos) => {
    let respuesta = await fetch('/concesionaria', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(datos)
    });
        return (await respuesta.text() == "ok");
}


btnAgregar.addEventListener('click', agregar)
load()
