import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:tp7_test/entities/matiere.dart';

Future getAllmatieres() async {
  Response response =
      await http.get(Uri.parse("http://10.0.2.2:8081/matiere/all"));
  return jsonDecode(response.body);
}

Future deletematiere(int id) {
  return http.delete(Uri.parse("http://10.0.2.2:8081/matiere/delete?id=${id}"));
}

Future addmatiere(Matiere matiere) async {
  Response response =
      await http.post(Uri.parse("http://10.0.2.2:8081/matiere/add"),
          headers: {"Content-type": "Application/json"},
          body: jsonEncode(<String, dynamic>
              //         private Long code;
              // private String nom;
              // private int coef;
              // private int nbHeures;
              {
            "nom": matiere.nom,
            "coef": matiere.coef,
            "nbHeures": matiere.nbHeures,
            "classe": matiere.classe
          }));

  return response.body;
}

Future updatematieree(Matiere matiere) async {
  Response response =
      await http.put(Uri.parse("http://10.0.2.2:8081/matiere/update"),
          headers: {"Content-type": "Application/json"},
          body: jsonEncode(<String, dynamic>{
            "nom": matiere.nom,
            "code": matiere.code,
            "coef": matiere.coef,
            "nbHeures": matiere.nbHeures,
            "classe": matiere.classe
          }));

  return response.body;
}
