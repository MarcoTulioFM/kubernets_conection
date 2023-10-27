$("#button-blue").on("click", function() {
    
    let txt_nome = $("#name").val();
    let txt_email = $("#email").val();
    let txt_comentario = $("#comment").val();

    $.ajax({
        url: "http://34.172.23.157",
        
        type: "post",
        data: {nome: txt_nome, comentario: txt_comentario, email: txt_email},
        beforeSend: function() {
        
            console.log("Tentando enviar os dados....");

        }
    }).done(function(e) {
        alert("Dados Salvos");
    })

});