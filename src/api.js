export const fetchData = async (endpoint) => {
    const response = await fetch(endpoint, {
        method: 'POST',
        credentials: 'include'
    });

    if(!response.ok){
        throw new Error('Błąd sieci!');
    }

    return response.json();
};

export const sendData = async (endpoint, data) => {
    const response = await fetch(endpoint, {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify(data),
        credentials: 'include'
    });

    if(!response.ok) {
        throw new Error('Błąd sieci');
    }

    return response.json();
};