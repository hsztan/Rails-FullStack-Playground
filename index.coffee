name = "Henry"

csOutput = document.getElementById("csOutput")

csOutput.innerHTML = "Hello #{name}!"

aString = "I'm a string"

csOutput.insertAdjacentHTML("beforeend", "<br>aString is a String<br>") if typeof aString is "string"