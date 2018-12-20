// console.log('hello from application.js')
import "bootstrap";
import './application.css';

import { initTabs } from "../components/tabs";
import { bindSweetAlertButtonDemo } from '../components/confirmation';
import { responseMessageNotification } from'../components/response-message-notification';
import { dateSelector } from '../components/dateselector';
import { clearStars } from '../components/star-rating';


const dashboardTabsTest = document.getElementById('dashboard-tabs');
if (dashboardTabsTest) {
  initTabs();
}

if (document.getElementById('response-message-notification')) {
  responseMessageNotification();
}

bindSweetAlertButtonDemo();
dateSelector();
clearStars();
