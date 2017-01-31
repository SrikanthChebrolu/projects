var values = [];
$(function() {
    $("#upload").bind("click", function() {
        var dropDown = $("#depdd");

        var regex = /^([a-zA-Z0-9\s_\\.\-:])+(.csv|.txt)$/;
        if (regex.test($("#fileUpload").val().toLowerCase())) {
            if (typeof(FileReader) != "undefined") {
                var reader = new FileReader();
                reader.onload = function(e) {
                    var table = $("<table />");
                    var rows = e.target.result.split("\n");
                    for (var i = 0; i < 1; i++) {
                        var row = $("<tr />");
                        var deparray = new Array();
                        var cells = rows[i].split(",");
                        for (var j = 0; j < cells.length; j++) {
                            var cell = $("<td />");
                            cell.html(cells[j]);
                            row.append(cell);
                            values.push(cells[j]);
                            dropDown.append($('<option value=cells[j]></option>').val(cells[j]).html(cells[j]));
                        }
                        table.append(row);
                    }
                    dropDown.show();

                }
                reader.readAsText($("#fileUpload")[0].files[0]);
            } else {
                alert("This browser does not support HTML5.");
            }
        } else {
            alert("Please upload a valid CSV file.");
        }
    });
});

$(function() {
    $("#depdd").change(function() {
        var dd1 = $("#sdepdd");
        values = jQuery.grep(values, function(value) {
            return value != $("#depdd").val();
        });

        console.info("Values :: " + values + "selected :" + $("#depdd").val());
        for (var k = 0; k < values.length; k++) {
            dd1.append($('<option></option>').val(values[k]).html(values[k]));
        }

        dd1.show();

    });
});

$(function() {
    $("#sdep").change(function() {
        var textarea = $('#indepdd');
        values = jQuery.grep(values, function(value) {
            return value != $("#sdepdd").val();
        });
        for (var l = 0; l < values.length; l++) {
            textarea.append($('<option></option>').val(values[l]).html(values[l]));
        }
        textarea.show();
    });
});