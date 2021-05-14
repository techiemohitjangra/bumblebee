document.addEventListener("DOMContentLoaded", function (event) {
    maxLength = 100;
    $('#user-input').on('keyup',() => {
        var textField = $("#user-input")
        var words = textField.val().trim().split(' ');
        $('#count').text(maxLength - words.length);
        if (words.length < maxLength){
            textField.removeClass("invalid");
            textField.addClass("valid");
        }else{
            textField.removeClass("valid");
            textField.addClass("invalid");
        }
    });

});
function silence(){
        $("#add-silence").on('click', () => {
            $("#add-silence").checked = true;
            $("#add-skip").checked = false;
        });
    }

function skip(){
        $("#add-skip").on('click', () => {
            $("#add-silence").checked = false;
            $("#add-skip").checked = true;
        });
    }