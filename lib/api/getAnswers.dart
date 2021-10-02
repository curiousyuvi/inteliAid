import 'package:http/http.dart' as http;
import 'dart:convert';

getAnswers() async {
  try {
    // var url =
    //     'https://medical-question-answering.p.rapidapi.com/Project/use_gmas_api/';

    // var response = await http.post(Uri.parse(url),
    //     headers: {
    //       "content-type": "application/x-www-form-urlencoded",
    //       "x-rapidapi-host": "medical-question-answering.p.rapidapi.com",
    //       "x-rapidapi-key": "199347aa33msh56b6460b27d8ea9p1dde44jsn942ec4f7e36e"
    //     },
    //     body: "query=how%20do%20i%20stop%20hair%20loss%3F");

    var body =
        r'[["How to cure redness in pubes?","Just paint them in different color duh"],["How to treat itchy pubes","Just rub them hard enough"]]';

    return (jsonDecode(body));

    // String body = response.body;
    // print(jsonDecode(r'' + body));

  } catch (e) {
    print(e);
  }
}
