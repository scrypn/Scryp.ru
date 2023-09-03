<%@ page import="java.nio.charset.StandardCharsets" %>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.util.Date" %>
<%!
    public static String redirectTo(String url) {
        String to = url;
        try {
            to = URLEncoder.encode(url, StandardCharsets.UTF_8.toString());
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "https://r.scryp.ru?url=" + to;
    }
%>
<section class="blog_area single-post-area section-padding">
    <div class="container">
        <div class="row">
            <div class="col-lg-7 posts-list" style="margin-right: auto; margin-left: auto">
                <div class="single-post">
                    <div class="blog_details wow fadeInLeft" data-wow-duration="1s" data-wow-delay=".2s">
                        <h2 id="title-news-viewer" style="font-size: 38px; font-weight: 400; text-align: center"><a
                                style="color: #aa01d9; font-size: 38px; font-weight: 400; font-family: 'Roboto', sans-serif; font-style: normal;"
                                href="${pageContext.request.contextPath}/about/">Коротко о том, зачем вам нужна карта
                            сайта и что это вообще такое</a></h2>
                        <ul class="blog-info-link mt-3 mb-4">
                            <li><a href="${pageContext.request.contextPath}/"><i class="fa fa-user"></i> Scryp.ru</a>
                            </li>
                        </ul>
                        <p class="excert" id="text-news-viewer">
                        <p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Если вы
                            владеете или поддерживаете веб-сайт или намереваетесь им владеть, было бы здорово, если бы у
                            вас были частые посетители, которые удовлетворены получением именно той информации, которая
                            им нужна, с вашей страницы?</font></font></p>
                        <p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Еще в 2005 году
                            поисковая система Google запустила протокол Sitemap 0.84, предназначенный для использования
                            формата XML.
                        </font></font></p>
                        <p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
                            Карта сайта - это способ организации веб-сайта с указанием URL-адресов и данных в каждом
                            разделе. </font><font style="vertical-align: inherit;">Раньше карты сайта были ориентированы
                            в первую очередь на пользователей веб-сайта. </font><font style="vertical-align: inherit;">Однако
                            формат XML Google был разработан для поисковых систем, что позволяет им находить данные
                            быстрее и эффективнее.

                        </font></font></p>
                        <p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
                            Новый протокол карты сайта Google был разработан в ответ на увеличение размера и сложности
                            веб-сайтов. </font><font style="vertical-align: inherit;">Деловые веб-сайты часто содержат в
                            своих каталогах сотни товаров; </font><font style="vertical-align: inherit;">в то время как
                            популярность блогов привела к тому, что веб-мастера обновляли свои материалы не реже одного
                            раза в день, не говоря уже о популярных инструментах построения сообщества, таких как форумы
                            и доски объявлений. </font><font style="vertical-align: inherit;">По мере того, как
                            веб-сайты становились все больше и больше, поисковым системам было трудно отслеживать весь
                            этот материал, иногда «пропуская» информацию при ее сканировании по этим быстро меняющимся
                            страницам.

                        </font></font></p>
                        <p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
                            Благодаря протоколу XML поисковые системы могут более эффективно отслеживать URL-адреса,
                            оптимизируя свой поиск, размещая всю информацию на одной странице. </font><font
                                style="vertical-align: inherit;">XML также суммирует, как часто обновляется конкретный
                            веб-сайт, и записывает время последнего внесения каких-либо изменений.

                        </font></font></p>
                        <p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
                            Карты сайта XML не были, как некоторые думали, инструментом для поисковой
                            оптимизации. </font><font style="vertical-align: inherit;">Это не влияет на ранжирование, но
                            позволяет поисковым системам делать более точные ранжирование и поиск. </font><font
                                style="vertical-align: inherit;">Он делает это, предоставляя данные, которые нужны
                            поисковой системе, и помещает их в одно место, что весьма удобно, учитывая, что существуют
                            миллионы веб-сайтов, которые нужно просмотреть.

                        </font></font></p>
                        <p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
                            Чтобы побудить другие поисковые системы принять протокол XML, Google опубликовал его под
                            лицензией Attribution / Share Alike Creative Commons. </font><font
                                style="vertical-align: inherit;">Его усилия окупились. </font><font
                                style="vertical-align: inherit;">Недавно Google с радостью объявил, что Yahoo и
                            Microsoft согласились «официально поддерживать» протокол XML, который теперь был обновлен до
                            протокола Sitemap 0.9 и совместно спонсирует </font></font><a
                                href="<%= redirectTo("https://www.sitemaps.org")%>"
                                                                                          target="_blank"><font
                                style="vertical-align: inherit;"><font
                                style="vertical-align: inherit;">www.sitemaps.org</font></font></a><font
                                style="vertical-align: inherit;"><font style="vertical-align: inherit;"> , сайт,
                            объясняющий работу протокола. </font><font style="vertical-align: inherit;">Это хорошая
                            новость для владельцев веб-сайтов и похвальный знак сотрудничества между известными
                            конкурентами.

                        </font></font></p>
                        <p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
                            Совместное распознавание протокола XML означает, что разработчикам веб-сайтов больше не
                            нужно создавать разные типы карт сайта для разных поисковых систем. </font><font
                                style="vertical-align: inherit;">Они могут создать один файл для отправки, а затем
                            обновить его после внесения изменений на сайте. </font><font
                                style="vertical-align: inherit;">Это упрощает весь процесс настройки и расширения
                            веб-сайта.

                        </font></font></p>
                        <p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
                            Благодаря этому формат XML вскоре станет стандартной функцией создания и разработки всех
                            веб-сайтов. </font><font style="vertical-align: inherit;">Сами веб-мастера начали видеть
                            преимущества, которые предоставляет этот файл. </font><font
                                style="vertical-align: inherit;">Поисковые системы ранжируют страницу в соответствии с
                            релевантностью ее содержания определенным ключевым словам, но до формата XML были случаи,
                            когда этот контент не воспринимался должным образом. </font><font
                                style="vertical-align: inherit;">Веб-мастера часто разочаровывались, когда осознавали,
                            что их усилия по созданию веб-сайта остаются незамеченными. </font><font
                                style="vertical-align: inherit;">На создание блогов, дополнительных страниц или даже
                            добавление мультимедийных файлов уходили часы. </font><font
                                style="vertical-align: inherit;">Благодаря XML-файлу эти часы не будут потрачены зря, и
                            их увидят три ведущие поисковые системы - Google, Microsoft и Yahoo.

                        </font></font></p>
                        <p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
                            Недавно компания Ask.com начала поддерживать карты сайта в формате XML, а в обновлении
                            протокола карт сайта появилась возможность сообщать всем поисковым системам местоположение
                            вашей карты сайта в формате XML, поместив запись в файл robots.txt.

                        </font></font></p>
                        <p>
                            <i><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Карта
                                сайта: http://www.mysite.com/sitemap.xml</font></font></i>

                        </p>
                        <p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
                            Чтобы создать карту сайта в формате xml и информировать поисковые системы об изменениях на
                            вашем сайте, попробуйте наш </font></font><a href="${pageContext.request.contextPath}/sitemaps/"><font
                                style="vertical-align: inherit;"><font style="vertical-align: inherit;">бесплатный
                            онлайн-генератор карты сайта</font></font></a><font style="vertical-align: inherit;"><font
                                style="vertical-align: inherit;">.</font></font></p>
                        <p><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Статья XML-Sitemaps.com от 18/04/07</font></font></strong></p>
                        <p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Пример
                            XML-карты сайта, созданной для нашего сайта: </font></font><a
                                href="<%= redirectTo("https://www.scryp.ru/sitemap.xml")%>"><font
                                style="vertical-align: inherit;"><font
                                style="vertical-align: inherit;">sitemap.xml</font></font></a></p>
                        </p>
                    </div>
                </div>
                <div class="navigation-top wow fadeInLeft" data-wow-duration="1s" data-wow-delay=".25s">
                    <div class="d-sm-flex justify-content-between text-center">
                        <p id="news-date"><%=new Date().getYear() + 1900%>
                        </p>
                        <ul class="social-icons">
                            <li>
                                <a href="<%= redirectTo("https://vk.com/nick_scryp")%>" target="_blank">
                                    <i class="fa fa-vk"></i>
                                </a>
                            </li>
                            <li>
                                <a href="<%= redirectTo("https://wa.me/79165814024")%>" target="_blank">
                                    <i class="fa fa-whatsapp"></i>
                                </a>
                            </li>

                            <li>
                                <a href="<%= redirectTo("https://twitter.com/ClausWeiter")%>" target="_blank">
                                    <i class="fa fa-twitter"></i>
                                </a>
                            </li>
                            <li>
                                <a href="<%= redirectTo("https://www.instagram.com/nick_scryp/")%>" target="_blank">
                                    <i class="fa fa-instagram"></i>
                                </a>
                            </li>
                            <li>
                                <a href="<%= redirectTo("https://www.t.me/nikolay_skrip")%>" target="_blank">
                                    <i class="fa fa-telegram"></i>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="blog-author wow fadeInLeft" data-wow-duration="1s" data-wow-delay=".3s">
                    <div class="media align-items-center">
                        <img src="${pageContext.request.contextPath}/vectors/favicon.svg" alt="" width="90" height="90">
                        <div class="media-body">
                            <a href="${pageContext.request.contextPath}/">
                                <h4>Scryp.ru</h4>
                            </a>
                            <p>сайт проектов и сервисов Николая Скрипниченко</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>