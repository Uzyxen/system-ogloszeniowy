import { defineStore } from "pinia";
import { fetchData, sendData } from '../api.js';


export const userGlobalStore = defineStore('globalStore', {
    state: () => ({
        topbarVisible: true
    })
});

export const usePopupStore = defineStore('popupStore', {
    state: () => ({
        successModalVisible: false,
        successModalMessage: '',

        failureModalVisible: false,
        failureModalMessage: ''
    })
});

export const useUserStore = defineStore('userStore', {
    state: () => ({
        logged: false,
        first_name: '',
        last_name: '',
        description: '',
        phone_number: '',
        email: '',
        position: '',
        gender: '',
        age: 0,
        country: ''
    }),
    actions: {
        async logInUser(endpoint, data){
            try{
                const response = await sendData(endpoint, data);

                if(response.data){
                    this.logged = response.data.logged;
                    this.first_name = response.data.first_name;
                    this.last_name = response.data.last_name;
                    this.description = response.data.description;
                    this.phone_number = response.data.phone_number;
                    this.email = response.data.email;
                    this.position = response.data.position;
                    this.gender = response.data.gender;
                    this.age = response.data.age;
                    this.country = response.data.country;
                }else{
                    console.log(response);
                }
            }catch(error){
                console.log(error);
            }
        },

        async logOutUser(endpoint, data) {
            const response = await sendData(endpoint, data);

            if(response) {
                this.logged = false;
                this.first_name = '';
                this.last_name = '';
                this.description = '';
                this.phone_number = '';
                this.email = '';
                this.position = '';
                this.gender = '';
                this.age = '';
                this.country = '';
    
                console.log(response.message);
            }
        },

        async getUserData(endpoint) {
            const response = await fetchData(endpoint);

            if(response.data) {
                this.logged = response.data.logged;
                this.first_name = response.data.first_name;
                this.last_name = response.data.last_name;
                this.description = response.data.description;
                this.phone_number = response.data.phone_number;
                this.email = response.data.email;
                this.position = response.data.position;
                this.gender = response.data.gender;
                this.age = response.data.age;
                this.country = response.data.country;
            }
        }
    }
});