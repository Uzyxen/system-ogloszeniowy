<template>
    <div id="root">
        <h2>Oferty pracy</h2>

        <div id="offers">
            <div class="offer" v-for="offer in offers" :key="offer.id" @click="showOfferDetail(offer.id)">
                <div class="offer-content">
                    <h3>{{ offer.title }}</h3>
                    <p class="company">{{ offer.company }}</p>
                    <p class="location">{{ offer.location }}</p>
                    <p class="position">{{ offer.position }}</p>
                </div>

                <div class="offer-bottom">
                    <p>
                        Opublikowano: {{ offer.date }}
                    </p>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
    export default {
        data() {
            return {
                offers: [
                    {
                        id: 1,
                        title: 'starszy vuejs developer',
                        company: 'molzłom Sp. z o.o.',
                        location: 'Warszawa',
                        position: 'Vue.js developer (senior)',
                        date: '30 grudnia 2023'
                    },
                    {
                        id: 2,
                        title: 'młodszy vuejs developer',
                        company: 'gizlomar sp.j.',
                        location: 'Nowy Sącz',
                        position: 'Vue.js developer (junior/regular)',
                        date: '18 listopada 2023'
                    },
                ]
            }
        },
        methods:{
            showOfferDetail(id) {
                this.$router.push({ name: 'oferta', params: { id } });
            }
        }
    }
</script>

<style scoped>
    #root{
        padding: 0 150px;
    }

    h2{
        text-align: center;
        font-size: 30px;
        padding: 20px 0 50px 0;
    }

    #offers{
        display: flex;
        flex-direction: column;
        gap: 20px;
    }

    .offer{
        cursor: pointer;
        box-shadow: 0 0 5px rgba(0,0,0,.12);
        border-radius: 2px;
    }

    .offer .offer-content{
        padding: 15px 20px;
    }

    .offer .offer-bottom{
        border-top: 1px solid #DDD;
    }

    .offer .offer-bottom p{
        font-size: 12px;
        padding: 10px 20px;
        color: #848191;
    }

    .offer h3{
        color: #6244DB;
    }

    .offer p{
        margin: 0;
    }

    p.company{
        font-weight: 600;
        margin-top: 10px;
        
    }

    p.location{
        margin-top: 5px;
    }

    p.position{
        margin-top: 20px;
        opacity: 0.7;
    }

    @media (min-width: 1920px){
        #root{
            max-width: 1440px;
            margin: 0 auto;
        }
    }

</style>