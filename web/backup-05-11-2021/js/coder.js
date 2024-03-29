﻿function Valid_PSW() {
    var myInput = document.getElementById("create-email-pass");
    var letter = document.getElementById("letter");
    var capital = document.getElementById("capital");
    var number = document.getElementById("number");
    var length = document.getElementById("length");

// When the user clicks on the password field, show the message box
    /*myInput.onfocus = function() {
      document.getElementById("message").style.display = "block";
    }

    // When the user clicks outside of the password field, hide the message box
    myInput.onblur = function() {
      document.getElementById("message").style.display = "none";
    }*/

// When the user starts to type something inside the password field
    myInput.onkeyup = function () {
        // Validate lowercase letters
        var lowerCaseLetters = /[a-zа-я]/g;
        if (myInput.value.match(lowerCaseLetters)) {
            letter.classList.remove("invalid");
            letter.classList.add("valid");
            $("#letter-status").addClass("fa-check").removeClass("fa-times");
        } else {
            letter.classList.remove("valid");
            letter.classList.add("invalid");
            $("#letter-status").addClass("fa-times").removeClass("fa-check");
        }

        // Validate capital letters
        var upperCaseLetters = /[A-ZА-Я]/g;
        if (myInput.value.match(upperCaseLetters)) {
            capital.classList.remove("invalid");
            capital.classList.add("valid");
            $("#capital-status").addClass("fa-check").removeClass("fa-times");
        } else {
            capital.classList.remove("valid");
            capital.classList.add("invalid");
            $("#capital-status").addClass("fa-times").removeClass("fa-check");
        }

        // Validate numbers
        var numbers = /[0-9]/g;
        if (myInput.value.match(numbers)) {
            number.classList.remove("invalid");
            number.classList.add("valid");
            $("#number-status").addClass("fa-check").removeClass("fa-times");
        } else {
            number.classList.remove("valid");
            number.classList.add("invalid");
            $("#number-status").addClass("fa-times").removeClass("fa-check");
        }

        // Validate length
        if (myInput.value.length >= 8 && myInput.value.length <= 20) {
            length.classList.remove("invalid");
            length.classList.add("valid");
            $("#length-status").addClass("fa-check").removeClass("fa-times");
        } else {
            length.classList.remove("valid");
            length.classList.add("invalid");
            $("#length-status").addClass("fa-times").removeClass("fa-check");
        }
    }
}

function Valid_PSW_NP() {
    var myInput = document.getElementById("fp-new-pass");
    var letter = document.getElementById("letter-np");
    var capital = document.getElementById("capital-np");
    var number = document.getElementById("number-np");
    var length = document.getElementById("length-np");

// When the user clicks on the password field, show the message box
    /*myInput.onfocus = function() {
      document.getElementById("message").style.display = "block";
    }

    // When the user clicks outside of the password field, hide the message box
    myInput.onblur = function() {
      document.getElementById("message").style.display = "none";
    }*/

// When the user starts to type something inside the password field
    myInput.onkeyup = function () {
        // Validate lowercase letters
        var lowerCaseLetters = /[a-zа-я]/g;
        if (myInput.value.match(lowerCaseLetters)) {
            letter.classList.remove("invalid");
            letter.classList.add("valid");
            $("#letter-status-np").addClass("fa-check").removeClass("fa-times");
        } else {
            letter.classList.remove("valid");
            letter.classList.add("invalid");
            $("#letter-status-np").addClass("fa-times").removeClass("fa-check");
        }

        // Validate capital letters
        var upperCaseLetters = /[A-ZА-Я]/g;
        if (myInput.value.match(upperCaseLetters)) {
            capital.classList.remove("invalid");
            capital.classList.add("valid");
            $("#capital-status-np").addClass("fa-check").removeClass("fa-times");
        } else {
            capital.classList.remove("valid");
            capital.classList.add("invalid");
            $("#capital-status-np").addClass("fa-times").removeClass("fa-check");
        }

        // Validate numbers
        var numbers = /[0-9]/g;
        if (myInput.value.match(numbers)) {
            number.classList.remove("invalid");
            number.classList.add("valid");
            $("#number-status-np").addClass("fa-check").removeClass("fa-times");
        } else {
            number.classList.remove("valid");
            number.classList.add("invalid");
            $("#number-status-np").addClass("fa-times").removeClass("fa-check");
        }

        // Validate length
        if (myInput.value.length >= 8 && myInput.value.length <= 20) {
            length.classList.remove("invalid");
            length.classList.add("valid");
            $("#length-status-np").addClass("fa-check").removeClass("fa-times");
        } else {
            length.classList.remove("valid");
            length.classList.add("invalid");
            $("#length-status-np").addClass("fa-times").removeClass("fa-check");
        }
    }
}

function Valid_PSW_LK() {
    var myInput = document.getElementById("pass_lk");
    var letter = document.getElementById("letter_lk");
    var capital = document.getElementById("capital_lk");
    var number = document.getElementById("number_lk");
    var length = document.getElementById("length_lk");

// When the user clicks on the password field, show the message box
    /*myInput.onfocus = function() {
      document.getElementById("message").style.display = "block";
    }

    // When the user clicks outside of the password field, hide the message box
    myInput.onblur = function() {
      document.getElementById("message").style.display = "none";
    }*/
    $("#pass_lk").focusin(function () {
        lk_psw_validate();
    }).on('mouseover', function () {
        lk_psw_validate();
    });
// When the user starts to type something inside the password field
    myInput.onkeyup = function () {
        lk_psw_validate();
    }

    function lk_psw_validate() {
        var lowerCaseLetters = /[a-zа-я]/g;
        if (myInput.value.match(lowerCaseLetters)) {
            letter.classList.remove("invalid");
            letter.classList.add("valid");
            $("#letter-status-lk").addClass("fa-check").removeClass("fa-times");
        } else {
            letter.classList.remove("valid");
            letter.classList.add("invalid");
            $("#letter-status-lk").addClass("fa-times").removeClass("fa-check");
        }

        // Validate capital letters
        var upperCaseLetters = /[A-ZА-Я]/g;
        if (myInput.value.match(upperCaseLetters)) {
            capital.classList.remove("invalid");
            capital.classList.add("valid");
            $("#capital-status-lk").addClass("fa-check").removeClass("fa-times");
        } else {
            capital.classList.remove("valid");
            capital.classList.add("invalid");
            $("#capital-status-lk").addClass("fa-times").removeClass("fa-check");
        }

        // Validate numbers
        var numbers = /[0-9]/g;
        if (myInput.value.match(numbers)) {
            number.classList.remove("invalid");
            number.classList.add("valid");
            $("#number-status-lk").addClass("fa-check").removeClass("fa-times");
        } else {
            number.classList.remove("valid");
            number.classList.add("invalid");
            $("#number-status-lk").addClass("fa-times").removeClass("fa-check");
        }

        // Validate length
        if (myInput.value.length >= 8 && myInput.value.length <= 20) {
            length.classList.remove("invalid");
            length.classList.add("valid");
            $("#length-status-lk").addClass("fa-check").removeClass("fa-times");
        } else {
            length.classList.remove("valid");
            length.classList.add("invalid");
            $("#length-status-lk").addClass("fa-times").removeClass("fa-check");
        }
    }
}