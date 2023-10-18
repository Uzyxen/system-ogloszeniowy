import { defineStore } from "pinia";

export const useMainStore = defineStore('mainStore', {
    state: () => ({
        logged: false,
        first_name: '',
        last_name: ''
    })
})