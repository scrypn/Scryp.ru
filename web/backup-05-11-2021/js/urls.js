var main_site_path;
const domain = window.location.hostname
if (domain === "localhost")main_site_path = window.location.origin + "/scryp/";
else main_site_path = window.location.origin + "/";
function toHomePage() {
    document.location = main_site_path;
}
function toFeedBackPage() {
    document.location = main_site_path + 'usr/feedback';
}
function load_yes() {
    $("#loader-ellipsis").show()
    $("#darker").show()
}

function load_no() {
    $("#loader-ellipsis").hide()
    $("#darker").hide()
}

const feed_servlet_path = main_site_path + "feed.ntr";
const sitemap_servlet_path = main_site_path + "sitemap.ntr";
const val_servlet_path = main_site_path + "val.ntr";
const create_email_servlet_path = main_site_path + "create-email.ntr";

    function ntf(title, text, icon) {
    swal.fire({
        title: title,
        text: text,
        icon: icon,
        footer: '<a style="color: rgb(72, 31, 187); cursor: pointer; font-size: 20px" href="https://www.scryp.ru/user/feedback">Вопросы? Обратитесь к нам</a>',
    })
}
function serverError() {
    ntf("Ошибка", "Произошла ошибка во время обращения к серверу. Повторите попытку позже, либо свяжитесь с нами", "error");
}