<template>
    <transition @enter="hidePopup">
        <div id="modal" v-if="popupStore.failureModalVisible">            
            <div id="icon">
                <svg xmlns="http://www.w3.org/2000/svg" height="1em" viewBox="0 0 384 512"><!--! Font Awesome Free 6.4.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. --><path d="M342.6 150.6c12.5-12.5 12.5-32.8 0-45.3s-32.8-12.5-45.3 0L192 210.7 86.6 105.4c-12.5-12.5-32.8-12.5-45.3 0s-12.5 32.8 0 45.3L146.7 256 41.4 361.4c-12.5 12.5-12.5 32.8 0 45.3s32.8 12.5 45.3 0L192 301.3 297.4 406.6c12.5 12.5 32.8 12.5 45.3 0s12.5-32.8 0-45.3L237.3 256 342.6 150.6z"/></svg>
            </div>
            <h2>
                {{ popupStore.failureModalMessage }}
            </h2>
        </div>
    </transition>
</template>

<script>
    import { usePopupStore } from '../store/store';

    export default {
        setup() {
            const popupStore = usePopupStore();

            return { popupStore }
        },
        methods:{
            hidePopup(){
                setTimeout(() => {
                    this.popupStore.failureModalVisible = false;
                    this.popupStore.failureModalMessage = '';
                }, 3000);
            }
        }
    }
</script>

<style scoped>
    #modal{
        background-color: #FFF;
        box-shadow: 0px 1px 50px 5px rgba(0, 0, 0, 0.15);
        z-index: 9999;
        position: fixed;
        left: calc(50% - 175px);
        top: 40px;
        width: 350px;
        height: 70px;
        display: flex;
        justify-content: start;
        align-items: center;
        gap: 20px;
    }

    h2{
        font-size: 18px;
        padding: 0;
    }

    #icon{
        background-color: #F44534;
        width: 50px;
        height: 70px;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    #icon svg{
        width: 20px;
        height: 20px;
        fill: #FFF;
    }

    .v-enter-active,
    .v-leave-active {
        transition: transform 0.5s cubic-bezier(0.93,-0.67,0.39,1.29);
    }

    .v-enter-from,
    .v-leave-to {
        transform: translateY(-200px);
    }
    
</style>