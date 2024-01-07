<template>
    <div id="register-box">
        <div>
            <h2>Utwórz hasło</h2>
            <p>aby kontynuować, utwórz hasło</p>

            <form @submit.prevent="CheckEmail" method="post"> 
                <div>
                    <label for="password">Hasło:</label>
                    <input placeholder="Hasło" type="text" name="password">
                    <span class="error"></span>
                </div>
                <button type="submit">Dalej</button>
            </form>
        </div>
    </div>
</template>

<script>
    export default {
        
    }
</script>

<style>
    #register-box{
        padding: 50px 100px 0;
        width: 400px;
        height: 550px;
        position: absolute;
        top: 30%;
        left: 50%;
        transform: translate(-50%, -30%);
        box-shadow: 0px 1px 5px 0px rgba(0, 0, 0, 0.15);
        border-radius: 2px;
    }

    #register-box h2{
        font-size: 26px;
        text-align: center;
    }

    #register-box p{
        text-align: center;
        margin: 10px 0 50px;
    }

    #register-box form div{
        display: flex;
        flex-direction: column;
        gap: 10px;
    }

    #register-box form div label{
        font-size: 20px;
    }

    #register-box form div input{
        padding: 15px;
        height: 50px;
        box-sizing: border-box;
    }

    #register-box button{
        margin-top: 10px;
        width: 400px;
        background-color: #6244DB;
        color: #fff;
        padding: 15px;
        font-size: 18px;
        cursor: pointer;
    }

    
</style>