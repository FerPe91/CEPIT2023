let container = document.querySelector('#container');
let params = [];

const processParam = () => {

    let paramString = window.location.search.substring(1) /* 'index=1' */
    let paramArray = paramString.split('&');


    for (let i = 0; i < paramArray.length; i++) {

        let tmpArray = paramArray[i].split('='); /*['index', '1'] */

        params[tmpArray[0]] = tmpArray[1] /* params['index'] = 1 */
    }
}


const getVehiculoDetail = async () => {
    try {
        processParam();
        const response = await fetch(`http://localhost:3000/concesionaria/${params["index"]}`)

        if (!response.ok) {
            throw new Error("Network response was not ok");
        } else {
            const vehiculo = await response.json();
            document.querySelector('#id').innerHTML += vehiculo['id'];
            document.querySelector('#marca').innerHTML += vehiculo['marca'];
            document.querySelector('#patente').innerHTML += vehiculo['patente'];
            document.querySelector('#modelo').innerHTML += vehiculo['modelo'];
            document.querySelector('#año').innerHTML += vehiculo['año'];
            document.querySelector('#precio').innerHTML += vehiculo['precio'];
            document.querySelector('#camioneta').innerHTML += vehiculo['camioneta'];
            document.querySelector('#carga').innerHTML += vehiculo['carga'];
        }
    } catch (error) {
        console.error(error);
        container.innerHTML = "<h1>Connection error</h1>";

    }
}


getVehiculoDetail();
