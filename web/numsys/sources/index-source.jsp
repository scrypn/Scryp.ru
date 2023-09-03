<div class="job_details_area" id="feedback_div">
    <div class="container">
        <div class="row">
            <div class="apply_job_form white-bg" style="margin-right: auto; margin-left: auto; max-width: 900px">
                <h4 style="font-size: 38px; font-weight: 400; text-align: center" class="wow fadeInLeft"
                    data-wow-duration="1s" data-wow-delay=".1s">
                    <a class="index_title_links" href="${pageContext.request.contextPath}/numsys/">Конвертер</a></h4>
                <h5 style="color: #00D363; text-align: center" class="wow fadeInRight" data-wow-duration="1s"
                    data-wow-delay=".15s">Здесь вы можете перевести целое число или десятичную дробь* из одной системы
                    счисления в другую. Интервал
                    систем - от 2 до 36 включительно.
                    Вопросы? Напишите мне через <a href="${pageContext.request.contextPath}/user/feedback">форму
                        обратной связи</a>.</h5>
                <form method="POST" autocomplete="on" id="numsys_form" action="javascript:void(0);">
                    <div class="row">
                        <div class="col-md-3 wow fadeInLeft" data-wow-duration="1s" data-wow-delay=".2s"
                             style="margin-top: 20px">
                            <div class="mein-labels">Перевести</div>
                            <div class="input_field">
                                <input type="text" required class="mein-inputs" maxlength="50" id="number_numsys"
                                       name="number" pattern="[-]?[a-zA-Z0-9]+([\.][0-9]+)?" placeholder="число">
                            </div>
                        </div>
                        <div class="col-md-2 wow fadeInLeft" data-wow-duration="1s" data-wow-delay=".25s"
                             style="margin-top: 20px">
                            <div class="mein-labels">из</div>
                            <div class="input_field">
                                <input type="number" required class="mein-inputs" min="2" max="36" id="from_numsys"
                                       name="from" placeholder="системы">
                            </div>
                        </div>
                        <div class="col-md-2 wow fadeInLeft" data-wow-duration="1s" data-wow-delay=".25s"
                             style="margin-bottom: 25px; margin-top: 20px">
                            <div class="mein-labels">в</div>
                            <div class="input_field">
                                <input type="number" required class="mein-inputs" min="2" max="36" id="to_numsys"
                                       name="to" placeholder="систему">
                            </div>
                        </div>

                        <div class="col-md-3 wow fadeInUp" data-wow-duration="1s" data-wow-delay=".35s"
                             style="margin-right: auto; margin-left: auto; margin-bottom: 25px;">
                            <button type="submit" class="buttons" id="convert_numsys"
                                    style="margin: 50px 0 0 0; width: 100%">Перевести
                            </button>
                        </div>
                        <div class="col-md-12 wow fadeInUp" data-wow-duration="1s" data-wow-delay=".25s"
                             id="result_numsys_div" style="display:none; margin-bottom: 10px; margin-top: 25px">
                            <div class="mein-labels">Результат</div>
                            <div class="input_field">
                                <input type="text" readonly class="mein-inputs" id="result_numsys"
                                       style="font-size: 18px">
                            </div>
                        </div>
                        <div class="col-md-12 wow fadeInUp" style="margin-top: 50px"
                             data-wow-duration="1s" data-wow-delay=".25s">
                            <div align="center" style="color: #00D363; font-size: 15px">
                                <strong>*</strong> 1. Дробь должна быть записана через <span
                                    style="text-decoration: underline">точку</span><br>
                                2. Перевод дроби возможен только из <span
                                    style="text-decoration: underline">10 с/с</span>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<script>
    $("#numsys_form").submit(function (e) {
        try {
            var number = $("#number_numsys").val()
            var fromNumsys = $("#from_numsys").val()
            var toNumsys = $("#to_numsys").val()
            if (fromNumsys === "10") {
                if (parseFloat(number) % 1 === 0) {
                    var output = parseInt(number, fromNumsys).toString(toNumsys)
                    if (output !== "NaN") $("#result_numsys").val(output);
                    else $("#result_numsys").val("Ошибка конвертации...");
                } else {
                    var arr = []
                    var negative = parseFloat(number) < 0 ? "-" : ""
                    var intNumber = Math.abs(parseInt(number))
                    var localNumber = Math.abs(parseFloat(number) % 1)
                    var localToNumsys = parseInt(toNumsys)
                    for (var i = 0; i < 16; i++) {
                        arr.push(parseInt(localNumber * localToNumsys, 10).toString(16))
                        localNumber = (localNumber * localToNumsys) % 1
                        if (localNumber === 0) break
                    }
                    $("#result_numsys").val(negative + parseInt(intNumber, 10).toString(localToNumsys) + "." + arr.join(""));
                }
            } else {
                var output2 = parseInt(number, fromNumsys).toString(toNumsys)
                if (output2 !== "NaN") $("#result_numsys").val(output2);
                else $("#result_numsys").val("Ошибка конвертации...");
            }
        } catch (e) {
            $("#result_numsys").val("Ошибка конвертации...");
        }

        $("#result_numsys_div").show();
        anim_func("#numsys_form")
    })
</script>
