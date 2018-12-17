// console.log('hello from application.js')
import "bootstrap";

import { initTabs } from "../components/tabs";

import { bindSweetAlertButtonDemo } from '../components/confirmation';
bindSweetAlertButtonDemo();

const dashboardTabsTest = document.getElementById('dashboard-tabs');
if (dashboardTabsTest) {
  initTabs();
}

const mapTest = document.getElementById('map');
if (mapTest) {
  mapToggle();
}

// import { responseMessageNotification } from'../components/response-message-notification';

// responseMessageNotification();
