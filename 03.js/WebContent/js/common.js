/* filename : common.js */

function getCurrentDate() {
	var today = new Date();
	var year = today.getFullYear();
	var month = today.getMonth() + 1;
	var date = today.getDate();
	var hours = today.getHours();
	var minutes = today.getMinutes();
	var seconds = today.getSeconds();
	var currentDate = year + "." + month + "." + date + " " + hours + ":" + minutes + ":" + seconds;
	return currentDate;
}