$.addEventListener("DOMContentLoaded", () => {
    // $.querySelectorAll('#user-input').split().length;
    maxLength = 100;
    $('#user-input').on('keyup',function(){
        var count = $('#user-input').val().trim().split(' ');
        $('#word-count').text(maxLength - parseInt(count.text));
        if (count < maxLength){
            $("#user-input").addClass("valid");
        }else{
            $("#user-input").removeClass("valid");
            $("#user-input").addClass("invalid");
        }
        
    }); 
});