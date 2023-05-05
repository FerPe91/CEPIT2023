
let container=document.getElementById('container')
let element= document.getElementById('element')
let btnAtrapar = document.getElementById('btnAtrapar')
let btnVer = document.getElementById('btnVer')
let arregloPokemones=[]

function fetchPokemon(id){
  fetch(`https://pokeapi.co/api/v2/pokemon/${id}`)
  .then(response => response.json())
  .then(pokemon => {
    
    let pokeInfo={
      "name":pokemon.name,
      "height":pokemon.height,
      "imagen":pokemon.sprites.other.home.front_default
    }
    arregloPokemones.push(pokeInfo)
  
    mostrarPokemon()  

  })

}

const mostrarPokemon=()=>{
  let fill = document.getElementById('info')
  let elements='';

  for (let i of arregloPokemones){
    elements+=`
    <div  class="card-container"><h1>${i.name}</h1>
    <img id="pokeImg" src="${i.imagen}"></img>
    </div>
    `
  }
  fill.innerHTML=elements
    
}


let guardarIndice=1


function verCantidadDePokemones(){
  
  let inputCantidad=document.getElementById('inputCantidad').value
  let cantidadNumerica = parseInt(inputCantidad, 10)
  for(let i=1;i<=cantidadNumerica;i++){
    fetchPokemon(i)
    
  }
}


console.log(arregloPokemones);


const borrarPokemones=()=>{
  let fill = document.getElementById('info')
  let elementoVacio='';
  arregloPokemones=[]
  fill.innerHTML=elementoVacio
}





btnVer.addEventListener('click', verCantidadDePokemones)
btnBorrar.addEventListener('click', borrarPokemones)





