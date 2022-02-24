function fetchCadidates() { 
    console.log("fetched");
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
                $("#ranking").html("");
                for (var i = 0; i < data.length; i++) {
                    var object = data[i];
                    var name = object.fname + object.lname;
                    var voteCount = object.votes > 1 ? `${object.votes} Votes` : `${object.votes} Vote`; 
                    item = `
                        <div class="col-md-6 col-lg-4 item"><img class="rounded-circle" src="${object.path}">
                            <h3 class="name">${name}</h3>
                            <p class="title" style="color: rgb(0,0,0);">${voteCount}</p>
                        </div>`;
                    $("#ranking").append(item);

                }
            }
            setTimeout(function () {
                fetchCadidates();
            }, 5000);
        }
    })
}

fetchCadidates();