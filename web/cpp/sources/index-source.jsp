<div class="job_details_area" id="cpp_div">
    <div class="container">
        <div class="apply_job_form white-bg" style="margin-right: auto; margin-left: auto;" id="remove_paddings_code">
            <h4 style="font-size: 38px; font-weight: 400; text-align: center" class="wow fadeInLeft"
                data-wow-duration="1s" data-wow-delay=".1s">
                <a class="index_title_links" href="${pageContext.request.contextPath}/cpp/">ScrypC++</a></h4>
            <h5 style="color: #00D363; text-align: center" class="wow fadeInRight" data-wow-duration="1s"
                data-wow-delay=".15s">ScrypC++ - онлайн-компилятор, позволяющий программировать на языке C++ прямо
                в вашем браузере.</h5>
            <form method="POST" autocomplete="on" id="cpp_form" action="javascript:void(0);">
                <div class="col-md-5 wow fadeInUp" data-wow-duration="1s" data-wow-delay=".35s"
                     style="margin-right: auto; margin-left: auto; margin-top: 50px; text-align: center">
                    <button class="buttons" id="run_cpp_code" title="Ctrl+F10"
                            style="font-size: 18px; ">Запустить <i class="fa fa-play"></i></button>
                </div>
                <div class="col-md-12 wow fadeInRight" data-wow-duration="1s" data-wow-delay=".3s"
                     style=" margin-top: 20px">
                    <div class="mein-labels" style="float: left">Код (C++ code)</div>
                    <div class="mein-labels" onclick="clear_code()" style="float: right; cursor: pointer;
                    text-decoration: underline">Очистить</div>
                    <div class="input_field">
                                <textarea id="input_code" class="mein-inputs"
                                          style="height: 400px"></textarea>
                    </div>
                </div>
                <div class="col-md-12 wow fadeInRight" data-wow-duration="1s" data-wow-delay=".3s"
                     style="margin-top: 20px">
                    <div class="mein-labels" style="float: left">Вывод (output)</div>
                    <div class="mein-labels" style="float: right">Provided by w3schools.com</div>
                    <div class="input_field">
                        <iframe id="output_code" class="mein-inputs" name="output_code"
                                style="resize: none; height: 400px; width: 100%; background: black; border-radius: 0; cursor: default"
                                readonly></iframe>
                    </div>
                </div>
            </form>
            <form id="codeForm" autocomplete="off" style="margin:0;display:none;">
                <input type="hidden" name="code" id="code"/>
            </form>
        </div>

    </div>
</div>
<script>

    var editor_input = CodeMirror.fromTextArea(document.getElementById("input_code"), {
        lineNumbers: true,
        mode: "text/x-c++src",
        theme: "idea",
    });
    editor_input.setSize("100%", 400)
    editor_input.setValue("#include <iostream>\n" +
        "using namespace std;\n" +
        "\n" +
        "int main() {\n" +
        "  cout << \"Hello World!\";\n" +
        "  return 0;\n" +
        "}")

    $("#run_cpp_code").on("click", function (e) {
        startInterpreting()
    })
    $(window).keydown(function (e) {
        if (e.ctrlKey && e.which === 121) {
            startInterpreting()
        }
    });

    function startInterpreting() {
        document.getElementById("output_code").addEventListener("load", load_no);
        load_yes()
        var t = editor_input.getValue("\n");
        t = t.replace(/=/gi, "w3equalsign");
        t = t.replace(/\+/gi, "w3plussign");
        var pos = t.search(/script/i)
        while (pos > 0) {
            t = t.substring(0, pos) + "w3" + t.substr(pos, 3) + "w3" + t.substr(pos + 3, 3) + "tag" + t.substr(pos + 6);
            pos = t.search(/script/i);
        }


        document.getElementById("code").value = t;
        document.getElementById("codeForm").action = "https://try.w3schools.com/try_cpp.php?x=" + Math.random();
        document.getElementById('codeForm').method = "post";
        document.getElementById('codeForm').acceptCharset = "utf-8";
        document.getElementById('codeForm').target = "output_code";
        document.getElementById("codeForm").submit();
    }

    function clear_code() {
        editor_input.setValue("");
    }
</script>