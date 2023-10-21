<template>
    <teleport to="body">
        <transition>
            <div id="modal" v-if="isOpened">            
                <div id="icon">
                    <svg xmlns="http://www.w3.org/2000/svg" height="1em" viewBox="0 0 448 512"><!--! Font Awesome Free 6.4.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. --><path d="M438.6 105.4c12.5 12.5 12.5 32.8 0 45.3l-256 256c-12.5 12.5-32.8 12.5-45.3 0l-128-128c-12.5-12.5-12.5-32.8 0-45.3s32.8-12.5 45.3 0L160 338.7 393.4 105.4c12.5-12.5 32.8-12.5 45.3 0z"/></svg>
                </div>
                <slot/>
            </div>
        </transition>
    </teleport>
</template>

<script>
    export default {
        data(){
            return {
                isOpened: false
            }
        },
        mounted(){
            setTimeout(() => {
                this.isOpened = true;
            }, 100);

            setTimeout(() => {
                this.isOpened = false;
            }, 3000);
        }
    }
</script>

<style>
    #modal{
        background-color: #FFF;
        box-shadow: 0px 1px 50px 5px rgba(0, 0, 0, 0.15);
        z-index: 9999;
        position: absolute;
        left: calc(50% - 175px);
        top: 40px;
        width: 350px;
        height: 70px;
        display: flex;
        justify-content: start;
        align-items: center;
        gap: 20px;
    }

    #modal p{
        margin: 0;
        padding: 0;
    }

    #icon{
        background-color: #46B559;
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