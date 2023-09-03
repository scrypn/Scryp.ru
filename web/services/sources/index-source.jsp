<div class="job_details_area" id="ncp_div">
    <div class="container">
        <div class="apply_job_form white-bg" style="margin-right: auto; margin-left: auto;" id="remove_paddings_services">
            <h4 style="font-size: 38px; font-weight: 400; text-align: center" class="wow fadeInLeft"
                data-wow-duration="1s" data-wow-delay=".1s">
                <a class="index_title_links" href="${pageContext.request.contextPath}/services/">Проекты и сервисы Scryp.ru</a></h4>
            <h5 style="color: #00D363; text-align: center" class="wow fadeInRight" data-wow-duration="1s"
                data-wow-delay=".15s">Здесь собраны все проекты и сервисы Николая Скрипниченко, представленные на портале Scryp.ru</h5>
            <div class="job_listing_area plus_padding col-md-12" style="padding: 30px 10px; height: fit-content; margin-top: 50px; background-color: white" >
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="col-lg-12">
                                <div class="job_lists m-0">
                                    <div class="row">
                                        <div class="col-lg-12 col-md-12">
                                            <%
                                                String[][] data = {
                                                        {"Почтовый сервер", "www.scryp.ru/mail-server/", "20.08.21", "favicon.svg", "false"},
                                                        {"ScrypChat", "chat.scryp.ru", "12.08.21", "scryp-favicon-filled.svg", "true"},
                                                        {"ScrypJava", "www.scryp.ru/java/", "28.05.21", "favicon.svg", "false"},
                                                        {"ScrypC++", "www.scryp.ru/cpp/", "27.05.21", "favicon.svg", "false"},
                                                        {"ScrypPY", "www.scryp.ru/py/", "23.05.21", "favicon.svg", "false"},
                                                        {"Приложение NCP", "www.scryp.ru/ncp/", "14.05.21", "favicon.svg", "false"},
                                                        {"NumSys Конвертер", "www.scryp.ru/numsys/", "02.05.21", "favicon.svg", "false"},
                                                        {"ScrypSitemaps", "sm.scryp.ru", "12.04.21", "favicon.svg", "false"},
                                                        {"ScrypCloud", "cloud.scryp.ru", "05.03.21", "scryp-favicon-filled.svg", "true"},
                                                        {"Tutres.com", "www.tutres.com", "26.09.20", "favicon-filled.svg", "true"},
                                                        {"ScrypMail", "mail.scryp.ru", "27.02.21", "favicon.svg", "true"},
                                                        {"ScrypTest", "test.scryp.ru", "27.02.21", "favicon.svg", "true"},
                                                        {"ScrypApp", "app.scryp.ru", "27.02.21", "scryp-favicon-filled.svg", "true"},
                                                };
                                                for (int i = 0; i < data.length; i++) {%>
                                            <div class="single_jobs white-bg d-flex justify-content-between wow fadeInLeft" data-wow-duration="1s"
                                                 data-wow-delay="<%=0.2 + 0.05*i%>s">
                                                <div class="jobs_left d-flex align-items-center">
                                                    <div class="thumb">
                                                        <img src="${pageContext.request.contextPath}/vectors/<%=data[i][3]%>"
                                                             width="48" height="48" alt="" style="border-radius: 5px">
                                                    </div>
                                                    <div class="jobs_conetent">
                                                        <a href="https://<%=data[i][1]%>" <%=data[i][4].equals("true") ? "target=\"_blank\"" : ""%> ><h4><%=data[i][0]%></h4></a>
                                                        <div class="links_locat d-flex align-items-center">
                                                            <div class="location">
                                                                <p><i class="fa fa-link"></i> <a
                                                                        style='font-size: 16px; color: #AAB1B7; cursor: text'><%=data[i][1]%></a>
                                                                </p>
                                                                <p><i class="fa fa-clock-o"></i> <a
                                                                        style='font-size: 16px; color: #AAB1B7; cursor: text'>Создано <%=data[i][2]%></a>
                                                                </p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="jobs_right">
                                                    <div class="apply_now" style="margin-top: 25px">
                                                        <a href="https://<%=data[i][1]%>" <%=data[i][4].equals("true") ? "target=\"_blank\"" : ""%> class="boxed-btn3"
                                                           style="color: white;">Перейти на сайт <i class="fa fa-arrow-right"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <%}%>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>

    </div>
</div>