function fetchCadidates() { 
    var data = new FormData();
    data.append("fetchCadidates", "true");
    $.ajax({
        type: "POST",
        url: "./assets/functions/index.php",
        data: data,
        processData:false,
        contentType: false,
        success: function (data) {
            if (data != "No Data") {
                data = JSON.parse(data);

                for (var i = 0; i < data.length; i++) {
                    var object = data[i];
                    var name = object.fname + object.lname;
                    var voteCount = object.votes > 1 ? `${object.votes} Votes` : `${object.votes} Vote`; 

                    item = `
                        <div class="col-md-6 col-lg-4 item"><img class="rounded-circle" src="${object.path}">
                            <h3 class="name">${name}</h3>
                            <p class="title" style="color: #FFA500;" onclick="vote(${object.id})">CLick here to Vote</p>
                            <p class="title" style="color: rgb(0,0,0);">(${voteCount})</p>
                        </div>`;
                    $("#candidateList").append(item);

                }
             }
        }
    })
}
function vote(id) {
    console.log(id);
    Swal.fire({
    title: 'Are you sure you want to cast your vote?',
    showDenyButton: true,
    confirmButtonText: 'Yes',
    denyButtonText: `No`,
    }).then((result) => {
    /* Read more about isConfirmed, isDenied below */
    if (result.isConfirmed) {
        $(".title").hide();
        var data = new FormData();
        data.append("cadidateId", id);
        $.ajax({
            type: "POST",
            url: "./assets/functions/index.php",
            data: data,
            processData:false,
            contentType: false,
            success: function (data) {
                if (data == "success") {
                    swal.fire("Success!", "Your vote has been casted!", "success");
                } else if (data == "error") {
                    swal.fire("Error!", "Something went wrong. Please Reload the page and try again", "error");
                } else if (data =="voted") { 
                    swal.fire("Oops!", "You already casted your Vote.", "info");
                }
            }
        })
    } else if (result.isDenied) {
        
    }
    })
    
}
fetchCadidates();