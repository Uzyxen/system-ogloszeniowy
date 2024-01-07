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
    let requestData;

    if (typeof data === 'object') {
        requestData = data;
    } else {
        requestData = { data };
    }

    const requestOptions = {
        method: 'POST',
        credentials: 'include',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify(requestData)
    };

    const response = await fetch(endpoint, requestOptions);

    if (!response.ok) {
        throw new Error('Błąd sieci');
    }

    return response.json();
};
