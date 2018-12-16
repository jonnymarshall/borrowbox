console.log('hello from application.js')
import "bootstrap";

import { initTabs } from "../components/tabs";

import { bindSweetAlertButtonDemo } from '../components/confirmation';
bindSweetAlertButtonDemo();

import { mapToggle } from'../components/map-toggle';

const dashboardTabsTest = document.getElementById('dashboard-tabs');
if (dashboardTabsTest) {
  initTabs();
}

const mapTest = document.getElementById('map');
if (mapTest) {
  mapToggle();
}
