document.getElementById("reserveForm").addEventListener("submit", function(event) {
    event.preventDefault();
    
    const room = document.getElementById("roomNumber").value;
    const data = document.getElementById("data").value;
    const startTime = document.getElementById("startTime").value;
    const endTime = document.getElementById("endTime").value;
    const error = document.getElementById("error");

    if(!room || !data || !startTime || !endTime){
        error.style.display = "block";
        error.textContent = "Please fill in all fields";
        return;
    }
    

});