import { createRouter, createWebHistory } from 'vue-router';

import MainPage from '../views/MainPage.vue';
import JobOffers from '../views/JobOffers.vue';
import CVCreator from '../views/CVCreator.vue';
import MyAccount from '../views/MyAccount.vue';
import LoginForm from '../views/LoginForm.vue';
import ProfileView from '../views/ProfileView.vue';
import UserSettings from '../views/UserSettings.vue';
import OfferDetail from '../views/OfferDetail.vue';

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    { path: '/', name: 'strona-glowna', component: MainPage, meta: { showTopBar: true } },
    { path: '/oferty', name: 'oferty', component: JobOffers, meta: { showTopBar: true } },
    { path: '/kreator-cv', name: 'kreator-cv', component: CVCreator, meta: { showTopBar: true } },
    { path: '/moje-konto', name: 'moje-konto', component: MyAccount, meta: { showTopBar: true } },
    { path: '/logowanie', name: 'logowanie', component: LoginForm, meta: { showTopBar: false } },
    { path: '/profil', name: 'profil', component: ProfileView, meta: { showTopBar: true } },
    { path: '/ustawienia', name: 'ustawienia', component: UserSettings, meta: { showTopBar: true } },
    { path: '/oferta/:id', name: 'oferta', component: OfferDetail, meta: { showTopBar: true } }
  ]
});

export default router;
