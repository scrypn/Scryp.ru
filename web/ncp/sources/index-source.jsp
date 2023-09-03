<div class="job_details_area" id="ncp_div">
    <div class="container">
        <div class="row">
            <div class="apply_job_form white-bg" style="margin-right: auto; margin-left: auto;">
                <h4 style="font-size: 38px; font-weight: 400; text-align: center" class="wow fadeInLeft"
                    data-wow-duration="1s" data-wow-delay=".1s">
                    <a class="index_title_links" href="${pageContext.request.contextPath}/ncp/">NCP Фото</a></h4>
                <h5 style="color: #00D363; text-align: center" class="wow fadeInRight" data-wow-duration="1s"
                    data-wow-delay=".15s">NCP - Android приложение, позволяющее визуализировать данные, полученные с сервера,
                    в виде графиков различных видов. Программа создана специально для работы с CP оборудованием, применяющимся с области геодезии
                    для оценки качества трубопроводных систем.</h5>
                <form method="POST" autocomplete="on" id="numsys_form" action="javascript:void(0);">
                    <div class="row" id="ncp_row">
                        <%
                            int photos = 22;
                            for (int i = 1; i <= photos; i++) {%>
                        <div class="col-md-3 wow fadeInLeft" data-wow-duration="1s" data-wow-delay=".2s"
                             style="margin-top: 20px">
                            <div class="mein-labels">Фото <%= i%></div>
                            <a href="${pageContext.request.contextPath}/ncp/photos/photo-<%= i%>.jpg" target="_blank" style="width: inherit; height: inherit">
                                <img src="${pageContext.request.contextPath}/ncp/photos/photo-<%= i%>.jpg" style="width: inherit; height: inherit">
                            </a>
                        </div>
                           <% }%>

                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
