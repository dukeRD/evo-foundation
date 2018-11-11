<div id="tab-page1" class="tab-page" style="display:block;">

    <script>
        $(document).ready(function()
        {
            $('#tpl,#checktv').SumoSelect();

            Dropzone.autoDiscover = false;
            $("div#fileuploader").dropzone({
                url: "/assets/modules/editdocs/ajax.php",
                paramName: "myfile",
                acceptedFiles: ".xls,.xlsx, .ods",
                dictDefaultMessage: "Перетащите сюда нужный EXCEL-файл или выберите по клику",
                init: function() {
                    this.on("success", function(file, responseText) {
                        console.log(responseText);
                        //excelTable(responseText);
                        $('#result').html(responseText);
                        $('.sending').show(0);
                    });
                }
            });



            $('body').on('click', '#process', function () {


                $("#hidf").val($('.tabres tr:nth-child(1) td:nth-child(1)').html());
                var dada = $('form#pro').serialize();

                loading();
                //console.log(dada);
                $.ajax({
                    type: "POST",
                    url: "/assets/modules/editdocs/ajax.php",
                    data: dada,
                    success: function (result) {

                        $('#result').html(result);


                    }

                }); //end ajax
            }); //end click


            $('body').on('click', '#clear', function () {

                $.ajax({
                    type: "POST",
                    url: "/assets/modules/editdocs/ajax.php",
                    data: "clear=1",
                    success: function (result) {

                        $('#warning').html(result);
                        top.mainMenu.reloadtree();


                    }

                }); //end ajax
            }); //end click


        });

        function loading() {
            $('#result').html('<div class="loading">Загружаюсь...</div>');
        }

    </script>

    <div class="alert-ok">
        ВНИМАНИЕ!<br/>
        Для работы импорта в файле Excel должен обязательно быть столбец(поле) с названием <b>pagetitle</b>
    </div>

    <div id="fileuploader"  class="dropzone"></div>
    <br/><br/>
    <div class="sending">
        <form id="pro">
            <div class="parf">
                ID родителя<br/>
                <input type="text" name="parimp" id="parent" class="inp" style="width: 70px"/>
            </div>
            <div class="parf" style="width: 300px">
                Шаблон<br/>

                <select id="tpl" name="tpl">
                    <option selected="selected" value="file">Из файла</option>
                    [+tpl+]
                    <option value="blank">(blank)</option>
                </select>
            </div>
            <div class="parf">
                TV для проверки наличия в базе<br/>
                <select id="checktv" name="checktv">
                    <option value="0" selected="selected">без проверки</option>
                    <optgroup label="TV - параметры">
                        [+tvs+]
                    </optgroup>

                </select>
            </div>
            <div class="subbat">
                <button class="btn btn-success" id="process" type="button"><i class="fa fa-edit"></i> ПОЕХАЛИ!</button>
                <label class="form-check-label">
                    <input type="checkbox" id="test" name="test" value="1" class="form-check-input"/> Тестовый режим (без обновления)
                </label>
            </div>
            <div class="mess">
                <div id="warning"></div>
                <br/>
                <button id="clear" type="button" class="btn btn-info"><i class="fa fa-gavel"></i>  Сбросить кэш</button>
            </div>
            <input type="hidden" name="imp" value="1" />
            <br/>
        </form>
        <div class="clear"></div>
    </div>

    <br/><br/>
    <div id="result"></div>

</div>