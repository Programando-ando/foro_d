const API = async () => {
    const response = await fetch('https://api.breakingbadquotes.xyz/v1/quotes');
    const res = await response.json();

        document.getElementById("frase").innerHTML = `
                <p><b>${res[0].quote}</b></p> <small>${res[0].author}</small>
        `;

};

API();
