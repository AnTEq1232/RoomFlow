// fetch("api/getReservation.php")
//     .then(res => res.json())
//     .then(data => {
//         console.log("Otrzymane dane z PHP:", data);
//         alert("Sprawdź konsolę (F12) — dane zostały pobrane");
//     })
//     .catch(err => console.error("Błąd fetch:", err));


document.getElementById("reserveForm").addEventListener("submit", function(event) {
    event.preventDefault();

    const room = document.getElementById("roomNumber").value;
    const date = document.getElementById("data").value;

fetch(`api/getReservation.php?room=${room}&date=${date}`)
    .then(response => response.json())
    .then(data => {
        console.log("Otrzymane dane z PHP:", data);
        alert("Sprawdź konsolę (F12) — dane zostały pobrane");
    })
    .catch(err => console.error("Błąd fetch:", err));


});