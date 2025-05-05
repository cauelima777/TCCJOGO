/// string_wrap(texto, largura_maxima)
function string_wrap(_text, _max_length) {
    var words = string_split(_text, " ");
    var line = "";
    var result = "";

    for (var i = 0; i < array_length(words); i++) {
        if (string_length(line + words[i]) < _max_length) {
            line += words[i] + " ";
        } else {
            result += line + "\n";
            line = words[i] + " ";
        }
    }
    result += line;
    return result;
}
