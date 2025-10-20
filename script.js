// Form Validation reservation

document.getElementById("reserveForm").addEventListener("submit", function(event){
    event.preventDefault();

    const room = document.getElementById("room").value;
    const equipment = document.getElementById("equipment");
    const selected = Array.from(equipment.selectedOptions).map(option => option.value);
    const date = document.getElementById("date").value;
    const startTime = document.getElementById("start_time").value;
    const endTime = document.getElementById("end_time").value;
    const error = document.getElementById("error");

})