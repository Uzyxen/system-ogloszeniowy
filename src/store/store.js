import { defineStore } from "pinia";
import { sendData } from '../api.js';

export const useUserStore = defineStore('userStore', {
    state: () => ({
        logged: false,
        first_name: '',
        last_name: ''
    }),
    actions: {
        async logInUser(endpoint, data){
            try{
                const response = await sendData(endpoint, data);

                if(response.data){
                    this.logged = response.data.logged;
                    this.first_name = response.data.first_name;
                    this.last_name = response.data.last_name;
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
    
                console.log(response.message);
            }
        }
    }
})