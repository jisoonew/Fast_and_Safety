// mypage[same_day_delivery] 시작

// 당일 배송 셀렉트 년도
var selectYearStart = 2023;
var selectYearEnd = 2033;
var selectYearOptions = "";
var year_text = "년도";

if(true){
	selectYearOptions = "<option selected>"+"<a>"+year_text+"</a>"+"</option>"
for (var year = selectYearStart; year <= selectYearEnd; year++) {
     selectYearOptions += "<option>" + year + "<a>년</a>" + "</option>";
}
document.getElementById("year").innerHTML = selectYearOptions;
}

// 당일 배송 셀렉트 월
var selectMonthStart = 1;
var selectMonthEnd = 12;
var selectMonthOptions = "";
var month_text = "월";

if(true){
	selectMonthOptions = "<option selected>"+"<a>"+month_text+"</a>"+"</option>"
for (var month = selectMonthStart; month <= selectMonthEnd; month++) {
     selectMonthOptions += "<option>" + month + "<a>월</a>" + "</option>";
}
}
document.getElementById("month").innerHTML = selectMonthOptions;


//당일 배송 셀렉트 일
var dateObj = new Date();
var selectDateStart = 1;
var selectDateEnd = new Date(dateObj.getFullYear(), dateObj.getMonth()+1, 0).getDate();
var selectDateOptions = "";
var date_text = "일";

if(true){
	selectDateOptions = "<option selected>"+"<a>"+date_text+"</a>"+"</option>"
for (var date = selectDateStart; date<=selectDateEnd; date++){
     selectDateOptions += "<option>"+ date + "<a>일</a>" + "</option>";
}
document.getElementById("date").innerHTML = selectDateOptions;
}

//당일 배송 테이블
var tableStart = 1;
var tableEnd = 10;
var table_tbody_content = "";

for (var content0 = 1; content0<=1; content0++){
	table_tbody_content += "<tr>";
for (var content1 = tableStart; content1<=tableEnd; content1++){
	table_tbody_content += "<th>"+ content1+"</th>";
for (var content2 = 0; content2<=5; content2++){
	table_tbody_content += "<td>"+ content2+"</td>";
}
table_tbody_content += "</tr>";
}
}
document.getElementById("table_tbody").innerHTML = table_tbody_content;