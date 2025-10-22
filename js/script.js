// document.getElementById("reserveForm").addEventListener("submit", function(event) {
//     event.preventDefault();
    
//     const room = document.getElementById("roomNumber").value;
//     const date = document.getElementById("data").value;
//     const startTime = document.getElementById("startTime").value;
//     const endTime = document.getElementById("endTime").value;
//     const error = document.getElementById("error");

//     if(!room || !date || !startTime || !endTime){ 
//         error.style.display = "block";
//         error.textContent = "Please fill in all fields";
//         return;
//     }

    
// });


fetch("api/getReservation.php")
    .then(res => res.json())
    .then(data => {
        console.log(data);
    })
    .catch(err => console.log(err));