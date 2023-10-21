<template>
    <teleport to="body">
        <div id="modal">
            <slot/>
        </div>
    </teleport>
</template>

<script>
    export default {
        
    }
</script>

<style>
    #modal{
        background-color: #FFF;
        box-shadow: 0px 1px 50px 0px rgba(0, 0, 0, 0.15);
        z-index: 9999;
        position: absolute;
        top: 30px;
        left: 50%;
        transform: translateX(-50%);
        width: 400px;
        height: 150px;
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
    }
    
</style>