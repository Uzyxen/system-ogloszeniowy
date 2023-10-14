import { createRouter, createWebHistory } from 'vue-router'

import MainPage from '../views/MainPage.vue'
import JobOffers from '../views/JobOffers.vue'
import CVCreator from '../views/CVCreator.vue'
import MyAccount from '../views/MyAccount.vue'

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    {path: '/', name: 'strona-glowna', component: MainPage},
    {path: '/praca', name: 'praca', component: JobOffers},
    {path: '/kreator-cv', name: 'kreator-cv', component: CVCreator},
    {path: '/moje-konto', name: 'moje-konto', component: MyAccount}
  ]
})

export default router
