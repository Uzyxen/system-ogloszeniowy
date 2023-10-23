<template>
    <div id="root">
        <div id="data">
            <h3 id="header">Dane osobowe</h3>
            
            <form>
                <div class="half">
                    Imie 
                    <input type="text" v-model="first_name">
                </div>

                <div class="half">
                    Nazwisko
                    <input type="text" v-model="last_name">
                </div>

                <div class="full">
                    Adres e-mail
                    <input type="text" v-model="email">
                </div>

                <div class="full">
                    Stanowisko
                    <input type="text" v-model="position">
                </div>

                <button id="additional-fields-button" @click.prevent="additional_fields = !additional_fields">Dodatkowe pola ↓</button>

                <div id="additional-fields-box">
                    <div id="additional-fields" v-if="additional_fields">
                        <div class="half">
                            Numer telefonu
                            <input type="text" v-model="phone_number">
                        </div>

                        <div class="half">
                            Adres
                            <input type="text" v-model="address">
                        </div>
                    </div>

                    <h4 id="section-list">Lista sekcji</h4>
                </div>
            </form>
        </div>

        <div id="preview">
            <div id="selected-template">
                <h5>Wybrany szablon: {{ selected_template }}</h5>
            </div>

            <div id="cv">
                <div id="short">
                    <h4>Dane osobowe</h4>

                    <div id="short-content">
                        <div class="short-section" v-if="first_name || last_name">
                            <h6>Imię i nazwisko</h6>
                            <p>{{ first_name }} {{ last_name }}</p>
                        </div>

                        <div class="short-section" v-if="email">
                            <h6>E-mail</h6>
                            <p>{{ email }}</p>
                        </div>

                        <div class="short-section" v-if="phone_number">
                            <h6>Numer telefonu</h6>
                            <p>{{ phone_number }}</p>
                        </div>

                        <div class="short-section" v-if="address">
                            <h6>Adres</h6>
                            <p>{{ address }}</p>
                        </div>
                    </div>
                </div>

                <div id="long">
                    <h3>{{ first_name }} {{ last_name }}</h3>
                    <p>{{ position }}</p>
                </div>
            </div>

            <!-- <div id="buttons">
                <button id="save">Zapisz</button>
                <button id="download">Pobierz</button>
            </div> -->
        </div>
    </div>
</template>

<script>
    export default {
        data() {
            return {
                additional_fields: false,
                selected_template: 'sea',
                first_name: '',
                last_name: '',
                email: '',
                position: '',
                phone_number: '',
                address: ''
            }
        }
    }
</script>

<style scoped>
    #root{
        z-index: 99;
        position: absolute;
        width: 100%;
        height: calc(100% - 61px);
        top: 61px;
        left: 0;
        display: flex;
        overflow: hidden;
    }

    #data{
        background-color: #FFF;
        width: 40%;
        height: 100%;
    }

    #data h3{
        margin: 20px 0;
        text-align: center;
        font-size: 25px;
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
        padding-bottom: 10px;
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
        padding: 10px 0 0 10px;
    }

    #long p{
        margin: 0;
        padding: 0 10px;
        font-size: 10px;
    }

    #selected-template{
        cursor: pointer;
        border: 1px solid #DDD;
        padding: 5px;
    }

    form{
        display: flex;
        flex-wrap: wrap;
        column-gap: 5px;
        row-gap: 10px;
        padding: 0 40px;
    }

    input{
        height: 40px;
        padding: 0 0 0 5px;
        transition: border-color .3s ease-in-out;
    }

    div.half, div.full{
        display: flex;
        flex-direction: column;
        gap: 10px;
    }

    div.half{
        width: calc(50% - 5px);
    }

    div.full{
        width: 100%;
    }

    input:focus{
        border-color: #6244DB;
    }

    #buttons{
        display: flex;
        gap: 10px;
        position: absolute;
        bottom: 20px;
    }

    #buttons button{
        width: 150px;
    }

    #buttons button#save{
        background-color: #6244DB;
        color: #FFF;
        padding: 20px;
    }

    #buttons button#download{
        border: 4px solid #6244DB;
        color: #6244DB;
        padding: 20px;
    }

    #additional-fields-button{
        margin-top: 20px;
        background-color: transparent;
        color: #6244DB;
        font-size: 15px;
        padding: 0;
        font-weight: 600;
        cursor: pointer;
    }

    #additional-fields{
        display: flex;
        row-gap: 10px;
        column-gap: 5px;
    }

    #additional-fields-box{
        display: flex;
        flex-direction: column;
        width: 100%;
    }

    h4#section-list{
        margin-top: 20px;
        text-align: center;
        font-size: 25px;
    }
</style>