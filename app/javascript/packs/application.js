// console.log('hello from application.js')
import "bootstrap";
import './application.css';

import { initTabs } from "../components/tabs";

import { bindSweetAlertButtonDemo } from '../components/confirmation';
bindSweetAlertButtonDemo();

const dashboardTabsTest = document.getElementById('dashboard-tabs');
if (dashboardTabsTest) {
  initTabs();
}

import { responseMessageNotification } from'../components/response-message-notification';

if (document.getElementById('response-message-notification')) {
  responseMessageNotification();
}

import { dateSelector } from '../components/dateselector';

dateSelector();

import '../components/star-rating';
