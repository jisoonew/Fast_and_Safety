$(document).on('click', '#deleteButton', function () {
	 var classes = $(this).attr('class');

	    // Extract the value after 'btn-sm'
	    var match = classes.match(/btn-sm\s+(\S+)/);
	    
	    var sr_id = match[1];

    //Ajax로 전송
    $.ajax({
        url: './Storage_delete',
        data: {
        	sr_id: sr_id
        },
        type: 'GET',
        dataType: 'json',
        success: function (result) {
            alert("삭제 성공");
        }
    }); //End Ajax
});