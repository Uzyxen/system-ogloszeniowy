<template>
    <div id="root">
        <div id="data">
            <h3>Dane osobowe</h3>
            
            <form>
                Imie:
                <input type="text" v-model="first_name">

                Nazwisko:
                <input type="text" v-model="last_name">

                Adres e-mail:
                <input type="text" v-model="email">
            </form>
        </div>

        <div id="preview">
            <div id="selected-template">
                <h5>Wybrany szablon: sea</h5>
            </div>

            <div id="cv">
                <div id="short">
                    <h4>Dane osobowe</h4>

                    <div id="short-content">
                        <div class="short-section">
                            <h6>Imię i nazwisko</h6>
                            <p>{{ first_name }} {{ last_name }}</p>
                        </div>

                        <div class="short-section">
                            <h6>E-mail</h6>
                            <p>{{ email }}</p>
                        </div>
                    </div>
                </div>

                <div id="long">
                    <h3>{{ first_name }} {{ last_name }}</h3>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
    export default {
        data() {
            return {
                first_name: '',
                last_name: '',
                email: ''
            }
        }
    }
</script>

<style>
    #root{
        z-index: 99999;
        position: absolute;
        width: 100%;
        height: 100%;
        top: 61px;
        left: 0;
        display: flex;
    }

    #data{
        background-color: #FFF;
        width: 40%;
        height: 100%;
    }

    #data h3{
        text-align: center;
        font-size: 20px;
    }

    #preview{
        border-left: 2px solid #DDD;
        background-color: #FFF;
        width: 60%;
        height: 100%;
        display: flex;
        justify-content: start;
        align-items: center;
        padding-top: 20px;
        flex-direction: column;
    }

    #preview #cv{
        border: 1px solid #AAA;
        width: 500px;
        height: 700px;
        display: flex;
        margin-top: 30px;
    }

    #cv #short{
        background-color: #97B2E6;
        height: calc(100% - 30px);
        width: 120px;
        padding: 15px;
    }

    #short h4{
        text-align: left;
        font-size: 15px;
    }

    #short-content{
        width: 100%;
        height: 100%;
        display: flex;
        flex-direction: column;
        gap: 10px;
    }

    .short-section h6{
        margin: 0;
        font-size: 11px;
        font-weight: 600;
    }

    .short-section p{
        margin: 0;
        font-size: 9px;
    }

    #long h3{
        padding: 10px;
    }

    #selected-template{
        cursor: pointer;
        border: 1px solid #DDD;
        padding: 5px;
    }

</style>