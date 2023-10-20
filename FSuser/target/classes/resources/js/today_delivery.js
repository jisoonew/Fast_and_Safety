// mypage[same_day_delivery] 시작

// 당일 배송 셀렉트 년도
var selectYearStart = 2023;
var selectYearEnd = 2033;
var selectYearOptions = "";
var year_text = "년도";
var year_element = document.getElementById("year");
if(true){
	selectYearOptions = "<option selected>"+"<a>"+year_text+"</a>"+"</option>"
for (var year = selectYearStart; year <= selectYearEnd; year++) {
     selectYearOptions += "<option id='" + year + "'>" + year + "<a>년</a>" + "</option>";
     $('#' + year).val(year);
     year_element.name= year;
     
}
document.getElementById("year").innerHTML = selectYearOptions;
}

//당일 배송 셀렉트 월
var selectMonthStart = 1;
var selectMonthEnd = 12;
var selectMonthOptions = "";
var month_text = "월";
var element = document.getElementById("month"); // Assuming the id of the element is "month"

if (element) {
  selectMonthOptions = "<option selected>" + "<a>" + month_text + "</a>" + "</option>";

  for (var month = selectMonthStart; month <= selectMonthEnd; month++) {

    if (month > 9) {
      selectMonthOptions += "<option id='" + month + "'>" + month + "<a>월</a>" + "</option>";
      $('#' + month).val(month);
      element.name=month;
    }
    else {
        selectMonthOptions += "<option id='" + month + "'>" + month + "<a>월</a>" + "</option>";
        $('#' + month).val("0" + month);
        element.name="0" + month;
    }
  }
}
  document.getElementById("month").innerHTML = selectMonthOptions;

//당일 배송 셀렉트 일
var dateObj = new Date();
var selectDateStart = 1;
var selectDateEnd = new Date(dateObj.getFullYear(), dateObj.getMonth()+1, 0).getDate();
var selectDateOptions = "";
var date_text = "일";
var date_element = document.getElementById("date");
if(true){
	selectDateOptions = "<option selected>"+"<a>"+date_text+"</a>"+"</option>"
for (var date = selectDateStart; date<=selectDateEnd; date++){
	
	if (date > 9) {
     selectDateOptions += "<option id='" + date + "'>"+ date + "<a>일</a>" + "</option>";
     $('#' + date).val(date);
     date_element.name= date;
	}
	else {
		selectDateOptions += "<option id='" + date + "'>"+ date + "<a>일</a>" + "</option>";
		$('#' + date).val("0" + date);
	     date_element.name= "0" + date;
	}
    
}
document.getElementById("date").innerHTML = selectDateOptions;
}


//검색 버튼 클릭 이벤트 핸들러
$(document).on('click', "#y_m_d_dtn",function () {
    var yearSelect = document.getElementById("year");
    var selectedYear = yearSelect.options[yearSelect.selectedIndex].text;
    console.log("Selected year name:", selectedYear);

    var monthSelect = document.getElementById("month");
    var selectedMonth = monthSelect.options[monthSelect.selectedIndex].text;
    console.log("Selected month name:", selectedMonth);

    var dateSelect = document.getElementById("date");
    var selectedDate = dateSelect.options[dateSelect.selectedIndex].text;
    console.log("Selected date name:", selectedDate);

    var selectedYear = selectedYear.replace("년", "");
    var selectedMonth = selectedMonth.replace("월", "");
    var selectedDate = selectedDate.replace("일", "");

    
    $.ajax({
        type: 'POST',
        url: '/mypage/today_delivery',
        data: {
            year: selectedYear,
            month: selectedMonth,
            date: selectedDate
        },
        dataType: 'json',
        success: function(response) {
            console.log("response " + response);
            $('#no_search_table > tbody').empty();
            response.delivery_date.forEach(function(item) {
                var str = '<tr>';
                str += "<td>" + item.td_name + "</td>";
                str += "<td>" + item.td_phone + "</td>";
                str += "<td>" + item.kind_release + "</td>";
                str += "</tr>";
                $('#no_search_table').append(str);
            });
        },
        error: function(error) {
            console.error(error);
        }
    });
});

