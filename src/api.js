const baseUrl = 'http://localhost/system-ogloszeniowy/src/api/api.php';

export const fetchData = async (endpoint) => {
    const response = await fetch(`${baseUrl}${endpoint}`);

    if(!response.ok){
        throw new Error('Błąd sieci!');
    }

    return response.json();
};

export const sendData = async (data) => {
    const response = await fetch('http://localhost/system-ogloszeniowy/src/api/getUser.php', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify(data)
    });

    if(!response.ok) {
        throw new Error('Błąd sieci');
    }

    return response.json();
};