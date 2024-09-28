var user = JSON.parse(localStorage.getItem("user")) || {}; 

const guardarPost = async () => {
    let post = document.getElementById("post").value;
    let id = user.idusuario;

    if (post.trim() == "") {
        Swal.fire({ title: "ERROR", text: "Llena el campo del post", icon: "error" });
        return;
    }

    if (!user.idusuario) {
        Swal.fire({ title: "ERROR", text: "Usuario no identificado", icon: "error" });
        return;
    }
    
    let idusuario = user.idusuario;

    let datos = new FormData();
    datos.append("post", post);
    datos.append("idusuario", idusuario);
    datos.append("action", "publicar");

    try {
        let respuesta = await fetch("php/post.php", { method: 'POST', body: datos });
        let json = await respuesta.json();

        if (json.success == true) {
            Swal.fire({ title: "BIEN!", text: json.mensaje, icon: "success" });
            limpiarP();
        } else {
            Swal.fire({ title: "ERROR!", text: json.mensaje, icon: "error" });
        }
    } catch (error) {
        Swal.fire({ title: "ERROR!", text: "No se pudo conectar con el servidor", icon: "error" });
        console.error("Error en la conexión:", error);
    }

    cargarPost();
}

const cargarPost = async () =>{
    let datos = new FormData();
    datos.append("action", "cargarPost");
    let respuesta = await fetch("php/post.php", { method: 'POST', body: datos });
    let json = await respuesta.json();
    var divPost = ``;

    json.map(post=>{
        moment.locale("es");
        moment().format("L");
        var fecha1 = moment(post.fecha).format("YYYY-MM-DD hh:mm A");
        var fecha2 = moment(post.fecha).format("D MMMM YYYY hh:mm A");
        var fecha3 = moment(post.fecha, "YYYY-MM-DD hh:mm:ss");

        divPost+=`
           <div class="card w-50 m-auto mt-3">
        <div class="card-header">
            <div class="col m-2">
                <img src="${post.foto}" alt="User" width="40px" height="40px">
                <b class="mx-1">${post.nombre}</b>
                <small>${fecha2}</small>
            </div>
            <div class="card-body">
                <p class="">${post.post}</p>
            </div>
        </div>
<div class="card-footer d-flex align-items-center">
    <input type="text" class="form-control w-75" placeholder="Comentar">
    <button class="btn btn-dark mx-2 d-inline-block">
        <svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" viewBox="0 0 16 16">
            <path fill="currentColor" fill-rule="evenodd" d="M3 1a3 3 0 0 0-3 3v11.25a.75.75 0 0 0 1.28.53L4.063 13H13a3 3 0 0 0 3-3V4a3 3 0 0 0-3-3zM1.5 4A1.5 1.5 0 0 1 3 2.5h10A1.5 1.5 0 0 1 14.5 4v6a1.5 1.5 0 0 1-1.5 1.5H3.443l-.22.22L1.5 13.44zM11 8a1 1 0 1 0 0-2a1 1 0 0 0 0 2M9 7a1 1 0 1 1-2 0a1 1 0 0 1 2 0M5 8a1 1 0 1 0 0-2a1 1 0 0 0 0 2" clip-rule="evenodd"/>
        </svg>
    </button>
</div>

        
        </div>
    <div class="accordion w-50 m-auto" id="accordionExample">
        <div class="accordion-item">
            <h2 class="accordion-header">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapsed" data-bs-target="#collapse${post.idpost}" aria-expanded="true" aria-controls="collapsedOne">
                    Comentarios
                </button>
            </h2>
            <div id="collapse${post.idpost}" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
                <div class="accordion-body">

                </div>
            </div>
        </div>
    </div>`;
    })
    document.getElementById("divPosts").innerHTML=divPost;
}

cargarPost();

const miPost = async() =>{
    if (!user.idusuario) {
        Swal.fire({ title: "ERROR", text: "Usuario no identificado", icon: "error" });
        return;
    }
    
    let idusuario = user.idusuario;
    let datos = new FormData();
    datos.append("idusuario", idusuario);
    datos.append("action", "cargarMiPost");
    let respuesta = await fetch("php/post.php", { method: 'POST', body: datos });
    let json = await respuesta.json();
    var divPost2 = ``;

    json.map(post=>{
        moment.locale("es");
        moment().format("L");
        var fecha1 = moment(post.fecha).format("YYYY-MM-DD hh:mm A");
        var fecha2 = moment(post.fecha).format("D MMMM YYYY hh:mm A");
        var fecha3 = moment(post.fecha, "YYYY-MM-DD hh:mm:ss");

        divPost2+=`
           <div class="card w-50 m-auto mt-3">
        <div class="card-header">
            <div class="col m-2">
                <img src="${post.foto}" alt="User" width="40px" height="40px">
                <b class="mx-1">${post.nombre}</b>
                <small>${fecha2}</small>
            </div>
            <div class="card-body">
                <p class="">${post.post}</p>
            </div>
        </div>
<div class="card-footer d-flex align-items-center">
    <input type="text" class="form-control w-75" placeholder="Comentar">
    <button class="btn btn-dark mx-2 d-inline-block">
        <svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" viewBox="0 0 16 16">
            <path fill="currentColor" fill-rule="evenodd" d="M3 1a3 3 0 0 0-3 3v11.25a.75.75 0 0 0 1.28.53L4.063 13H13a3 3 0 0 0 3-3V4a3 3 0 0 0-3-3zM1.5 4A1.5 1.5 0 0 1 3 2.5h10A1.5 1.5 0 0 1 14.5 4v6a1.5 1.5 0 0 1-1.5 1.5H3.443l-.22.22L1.5 13.44zM11 8a1 1 0 1 0 0-2a1 1 0 0 0 0 2M9 7a1 1 0 1 1-2 0a1 1 0 0 1 2 0M5 8a1 1 0 1 0 0-2a1 1 0 0 0 0 2" clip-rule="evenodd"/>
        </svg>
    </button>
</div>

    </div>
    <div class="accordion w-50 m-auto" id="accordionExample">
        <div class="accordion-item">
            <h2 class="accordion-header">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapsed" data-bs-target="#collapse${post.idpost}" aria-expanded="true" aria-controls="collapsedOne">
                    Comentarios
                </button>
            </h2>
            <div id="collapse${post.idpost}" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
                <div class="accordion-body">

                </div>
            </div>
        </div>
    </div>`;
    })
    document.getElementById("divMiPosts").innerHTML=divPost2;
}


function limpiarP (){
    let post = document.getElementById("post");

    post.value="";
}