<div class="job_details_area" id="sitemap_div">
    <div class="container">
        <div class="row">
            <div class="apply_job_form white-bg" style="margin-right: auto; margin-left: auto; max-width: 900px">
                <h4 style="font-size: 38px; font-weight: 400; text-align: center" class="wow fadeInLeft"
                    data-wow-duration="1s" data-wow-delay=".1s">
                    <a class="index_title_links" href="${pageContext.request.contextPath}/sitemaps">SiteMap
                        генератор</a>
                </h4>
                <h5 style="color: #00D363; text-align: center" class="wow fadeInRight" data-wow-duration="1s"
                    data-wow-delay=".15s">
                    Создайте бесплатно Google sitemap.xml* файл. В индекс включается <span
                        style="text-decoration: underline">не более 100 страниц</span>.
                    Вопросы? Напишите мне через <a href="${pageContext.request.contextPath}/user/feedback">форму
                    обратной связи</a></h5>
                <form method="POST" autocomplete="on" id="sitemap_form" action="javascript:void(0);">
                    <div class="row">
                        <div class="col-md-10 wow fadeInLeft" data-wow-duration="1s" data-wow-delay=".2s"
                             style="margin: 20px auto 25px auto">
                            <div class="mein-labels" id="sitemap_input_title">URL вашего web-сайта</div>
                            <div class="input_field">
                                <input type="text" class="mein-inputs" required maxlength="75" id="sitemap_input"
                                       name="from_name_feedback">
                            </div>
                        </div>
                        <div class="col-md-5 wow fadeInUp" data-wow-duration="1s" data-wow-delay=".25s"
                             style="margin-right: auto; margin-left: auto" id="sitemap_button_div">
                            <button class="buttons" id="sitemap_button" style="margin: 50px 0 0 0; width: 100%"
                                    type="submit">Создать
                                файл
                            </button>
                        </div>
                        <div class="col-md-5 wow fadeInUp" data-wow-duration="1s" data-wow-delay=".1s"
                             style="display: none; margin-right: auto; margin-left: auto"
                             id="sitemap_button_div_download">
                            <button class="buttons_blue" id="sitemap_button_download"
                                    style="margin: 50px 0 0 0; width: 100%" type="button"><i
                                    class="fa fa-cloud-download"></i> Скачать
                            </button>
                        </div>
                        <div class="col-md-12 wow fadeInLeft" style="display: none; margin-top: 15px"
                             data-wow-duration="1s" data-wow-delay=".15s" id="sitemap_copy_div">
                            <div align="center"><a onclick="copy_link()" id="sitemap_copy">Копировать ссылку</a>
                                <a style="display: none" id="sitemap_copy_done"><i class="fa fa-check-square-o"></i>Скопировано</a>
                            </div>
                        </div>
                        <div class="col-md-12 wow fadeInLeft" style="display: none; margin-top: 15px"
                             data-wow-duration="1s" data-wow-delay=".2s" id="sitemap_viewer_div">
                            <div align="center"><a onclick="viewer()" id="sitemap_viewer">Просмотр</a>
                            </div>
                        </div>
                        <div class="col-md-12 wow fadeInLeft" style="display: none; margin-top: 15px"
                             data-wow-duration="1s" data-wow-delay=".25s" id="sitemap_restart_div">
                            <div align="center"><a onclick="restart()" id="sitemap_restart" style="color: red">Сброс</a>
                            </div>
                        </div>

                        <div class="col-md-12 wow fadeInLeft" style="margin-top: 50px"
                             data-wow-duration="1s" data-wow-delay=".2s" id="sitemap_ps_div">
                            <div align="center" style="color: #00D363; font-size: 15px">*<a
                                    href="${pageContext.request.contextPath}/sitemaps/about"
                                    style="text-decoration: underline">Подробнее о sitemap</a>.<br>
                                Процесс создания карты сайта может занять несколько минут, наберитесь терпения.
                            </div>
                        </div>

                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<script>
    <%String domain = request.getParameter("d");
    if (domain != null && !domain.equals("")){%>
    $("#sitemap_input").val("<%=domain%>")
    generateSitemap()
    <%}%>
    var sm_file = "";
    $("#sitemap_form").submit(function (e) {
        generateSitemap()
    })

    function generateSitemap() {
        $("#sitemap_button").attr("disabled", true);
        load_yes()
        $.ajax({
            url: sitemap_servlet_path,
            type: "POST",
            dataType: "html",
            data: "url=" + $("#sitemap_input").val(),
            success: function (resultText) {
                load_no()
                if (resultText !== "error") {
                    $("#sitemap_button_div").hide()
                    $("#sitemap_input_title").text("Ссылка на sitemap.xml")
                    $("#sitemap_input").val("https://sm.scryp.ru/files/" + resultText).attr("disabled", true)
                    $("#sitemap_button_div_download").show()
                    sm_file = resultText
                    $("#sitemap_restart_div").show()
                    $("#sitemap_copy_div").show()
                    $("#sitemap_viewer_div").show()
                    $("#sitemap_ps_div").hide()
                    anim_func("#sitemap_div");
                } else {
                    $("#sitemap_button").attr("disabled", false)
                    swal.fire({
                        title: "Что-то пошло не так",
                        html: "При доступе к указанному URL произошла ошибка:<br>" + $("#sitemap_input").val() +
                            "<br>Убедитесь, что URL указан правильно.",
                        icon: "error",
                        footer: '<a style="color: rgb(72, 31, 187); cursor: pointer; font-size: 20px" href="https://www.scryp.ru/user/feedback">Вопросы? Обратитесь к нам</a>',
                    })
                }

            },
            error: function (response) {
                load_no()
                $("#sitemap_button").attr("disabled", false);
                serverError();
            }
        });
    }

    $("#sitemap_button_download").on("click", function (ev) {
        downloadFile("https://www.scryp.ru/sitemaps/files/" + sm_file)
    })

    function restart() {
        $("#sitemap_button_div_download").hide()
        $("#sitemap_button_div").show()
        $("#sitemap_button").attr("disabled", false)
        $("#sitemap_input_title").text("URL вашего web-сайта")
        $("#sitemap_input").val("").attr("disabled", false);
        $("#sitemap_restart_div").hide()
        $("#sitemap_copy_div").hide()
        $("#sitemap_viewer_div").hide()
        $("#sitemap_ps_div").show()


    }

    function viewer() {
        window.open("https://www.scryp.ru/sitemaps/xml-viewer?file=" + encodeURIComponent(sm_file), "_blank");
    }

    function downloadFile(filePath) {
        var link = document.createElement('a');
        link.href = filePath;
        link.download = "sitemap.xml";
        link.click();
    }

    function copy_link() {
        var aux = document.createElement("input");

        // Assign it the value of the specified element
        aux.setAttribute("value", "https://sm.scryp.ru/files/" + sm_file);

        // Append it to the body
        document.body.appendChild(aux);

        // Highlight its content
        aux.select();

        // Copy the highlighted text
        document.execCommand("copy");

        // Remove it from the body
        document.body.removeChild(aux);
        $("#sitemap_copy").hide()
        $("#sitemap_copy_done").show()
        setTimeout(function () {
            $("#sitemap_copy_done").hide()
            $("#sitemap_copy").show()

        }, 5000);
    }
</script>