import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:coffee/main.dart';
const List<String> optionsFilhos = <String>['Nenhum', 'Um', 'Dois', 'Três ou mais'];
const List<String> optionsMae = <String>['Solteira', 'Casada', 'Não é chefe de família'];
const List<String> optionsEscola = <String>['estão na escola', 'não estao na escola','não tenho filhos'];
const List<String> optionsVacina = <String>['estão vacinados', 'não estao vacinados ','não tenho filhos'];
const List<String> optionsSalarios= <String>['abaixo de dois salários mínimos', 'abaixo de um salário mínimo', 'maior que as outras opções '];
List<DropdownMenuItem<String>> get dropdownItems{
  List<DropdownMenuItem<String>> menuItems = [
    DropdownMenuItem(child: Text("Nenhum"),value: "Nenhum"),
    DropdownMenuItem(child: Text("Um"),value: "Um"),
    DropdownMenuItem(child: Text("Dois"),value: "Dois"),
    DropdownMenuItem(child: Text("Três ou mais"),value: "Três ou mais"),

  ];
  return menuItems;
}
List<DropdownMenuItem<String>> get dropdownItems1{
  List<DropdownMenuItem<String>> menuItems = [
    DropdownMenuItem(child: Text("Solteira"),value: "Solteira"),
    DropdownMenuItem(child: Text("Casada"),value: "Casada"),
    DropdownMenuItem(child: Text("Não é chefe de família"),value: "Não é chefe de família"),
  ];
  return menuItems;
}
List<DropdownMenuItem<String>> get dropdownItems2{
  List<DropdownMenuItem<String>> menuItems = [
    DropdownMenuItem(child: Text("estão na escola"),value: "estão na escola"),
    DropdownMenuItem(child: Text("não estao na escola"),value: "não estao na escola"),
    DropdownMenuItem(child: Text("não tenho filhos"),value: "não tenho filhos"),
  ];
  return menuItems;
}
List<DropdownMenuItem<String>> get dropdownItems3{
  List<DropdownMenuItem<String>> menuItems = [
    DropdownMenuItem(child: Text("estão vacinados"),value: "estão vacinados"),
    DropdownMenuItem(child: Text("não estao vacinados"),value: "não estao vacinados"),
    DropdownMenuItem(child: Text("não tenho filhos"),value: "não tenho filhos"),
  ];
  return menuItems;
}
List<DropdownMenuItem<String>> get dropdownItems4{
  List<DropdownMenuItem<String>> menuItems = [
    DropdownMenuItem(child: Text("abaixo de dois salários mínimos"),value: "abaixo de dois salários mínimos"),
    DropdownMenuItem(child: Text("abaixo de um salário mínimo"),value: "abaixo de um salário mínimo"),
    DropdownMenuItem(child: Text("maior que as outras opções "),value: "maior que as outras opções "),
  ];
  return menuItems;
}
void main(){
  runApp(MaterialApp(home: Home(),));
}
class Home extends StatefulWidget{
  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _infoText = "Informe seus dados";
  String? selectedValue = null;
  String? selectedValue1 = null;
  String? selectedValue2 = null;
  String? selectedValue3 = null;
  String? selectedValue4 = null;
  void _resetFields(){

    _formKey = GlobalKey<FormState>();

    setState(() {
      _infoText = "Informe seus dados";
    });

  }
  void  _calculate(){

    //agora preciso alterar o info
    setState(() {
      switch (selectedValue) {
        case "Nenhum":
          if (selectedValue1 == "Solteira") {
            if (selectedValue2 == "estão na escola") {
              if (selectedValue3 == "estão vacinados") {
                if (selectedValue4 == "abaixo de um salário mínimo") {
                  _infoText =
                  "Seu auxilio é de 2,5 salários minimos + 600 reais adicionais";
                } else
                if (selectedValue4 == "abaixo de dois salários mínimos") {
                  _infoText = "Seu auxilio é de 1,5 salários mínimos + 600 reais adicionais";
                } else if (selectedValue4 == "maior que as outras opções "){
                  _infoText = "Não tem direito ao auxilio";
                }
              } else if (selectedValue3 == "não estao vacinados") {
                _infoText = "Não tem direito ao auxilio";
              }
            } else if (selectedValue2 == "não estao na escola") {
              _infoText = "Não tem direito ao auxilio";
            }
          } else if (selectedValue1 == "Casada") {
            if (selectedValue2 == "estão na escola") {
              if (selectedValue3 == "estão vacinados") {
                if (selectedValue4 == "abaixo de um salário mínimo") {
                  _infoText =
                  "Seu auxilio é de 2,5 salários minimos";
                } else
                if (selectedValue4 == "abaixo de dois salários mínimos") {
                  _infoText = "Seu auxilio é de 1,5 salários mínimos";
                }
              } else if (selectedValue3 == "não estao vacinados") {
                _infoText = "Não tem direito ao auxilio";
              }
            } else if (selectedValue2 == "não estao na escola") {
              _infoText = "Não tem direito ao auxilio";
            }
          } else if (selectedValue1 == "Não é chefe de família"){
            if (selectedValue2 == "estão na escola") {
              if (selectedValue3 == "estão vacinados") {
                if (selectedValue4 == "abaixo de um salário mínimo") {
                  _infoText =
                  "Seu auxilio é de 2,5 salários minimos";
                } else
                if (selectedValue4 == "abaixo de dois salários mínimos") {
                  _infoText = "Seu auxilio é de 1,5 salários mínimos";
                }else if (selectedValue4 == "maior que as outras opções "){
                  _infoText = "Não tem direito ao auxilio";
                }
              } else if (selectedValue3 == "não estao vacinados") {
                _infoText = "Não tem direito ao auxilio";
              }
            } else if (selectedValue2 == "não estao na escola") {
              _infoText = "Não tem direito ao auxilio";
            }
          }
          break;
        case "Um":
          if (selectedValue1 == "Solteira") {
            if (selectedValue2 == "estão na escola") {
              if (selectedValue3 == "estão vacinados") {
                if (selectedValue4 == "abaixo de um salário mínimo") {
                  _infoText =
                  "Seu auxilio é de 2,5 salários minimos + 600 reais adicionais";
                } else
                if (selectedValue4 == "abaixo de dois salários mínimos") {
                  _infoText = "Seu auxilio é de 1,5 salários mínimos + 600 reais adicionias";
                }else if (selectedValue4 == "maior que as outras opções "){
                  _infoText = "Não tem direito ao auxilio";
                }
              } else if (selectedValue3 == "não estao vacinados") {
                _infoText = "Não tem direito ao auxilio";
              }
            } else if (selectedValue2 == "não estao na escola") {
              _infoText = "Não tem direito ao auxilio";
            }
          } else if (selectedValue1 == "Casada") {
            if (selectedValue2 == "estão na escola") {
              if (selectedValue3 == "estão vacinados") {
                if (selectedValue4 == "abaixo de um salário mínimo") {
                  _infoText =
                  "Seu auxilio é de 2,5 salários minimos";
                } else
                if (selectedValue4 == "abaixo de dois salários mínimos") {
                  _infoText = "Seu auxilio é de 1,5 salários mínimos";
                }else if (selectedValue4 == "maior que as outras opções "){
                  _infoText = "Não tem direito ao auxilio";
                }
              } else if (selectedValue3 == "não estao vacinados") {
                _infoText = "Não tem direito ao auxilio";
              }
            } else if (selectedValue2 == "não estao na escola") {
              _infoText = "Não tem direito ao auxilio";
            }
          } else if (selectedValue1 == "Não é chefe de família"){
            if (selectedValue2 == "estão na escola") {
              if (selectedValue3 == "estão vacinados") {
                if (selectedValue4 == "abaixo de um salário mínimo") {
                  _infoText =
                  "Seu auxilio é de 2,5 salários minimos";
                } else
                if (selectedValue4 == "abaixo de dois salários mínimos") {
                  _infoText = "Seu auxilio é de 1,5 salários mínimos";
                }else if (selectedValue4 == "maior que as outras opções "){
                  _infoText = "Não tem direito ao auxilio";
                }
              } else if (selectedValue3 == "não estao vacinados") {
                _infoText = "Não tem direito ao auxilio";
              }
            } else if (selectedValue2 == "não estao na escola") {
              _infoText = "Não tem direito ao auxilio";
            }
          }
          break;
        case "Dois":
          if (selectedValue1 == "Solteira") {
            if (selectedValue2 == "estão na escola") {
              if (selectedValue3 == "estão vacinados") {
                if (selectedValue4 == "abaixo de um salário mínimo") {
                  _infoText =
                  "Seu auxilio é de 2,5 salários minimos + 600 reais adicionais";
                } else
                if (selectedValue4 == "abaixo de dois salários mínimos") {
                  _infoText = "Seu auxilio é de 1,5 salários mínimos + 600 ";
                }else if (selectedValue4 == "maior que as outras opções "){
                  _infoText = "Não tem direito ao auxilio";
                }
              } else if (selectedValue3 == "não estao vacinados") {
                _infoText = "Não tem direito ao auxilio";
              }
            } else if (selectedValue2 == "não estao na escola") {
              _infoText = "Não tem direito ao auxilio";
            }
          } else if (selectedValue1 == "Casada") {
            if (selectedValue2 == "estão na escola") {
              if (selectedValue3 == "estão vacinados") {
                if (selectedValue4 == "abaixo de um salário mínimo") {
                  _infoText =
                  "Seu auxilio é de 2,5 salários minimos";
                } else
                if (selectedValue4 == "abaixo de dois salários mínimos") {
                  _infoText = "Seu auxilio é de 1,5 salários mínimos";
                }else if (selectedValue4 == "maior que as outras opções "){
                  _infoText = "Não tem direito ao auxilio";
                }
              } else if (selectedValue3 == "não estao vacinados") {
                _infoText = "Não tem direito ao auxilio";
              }
            } else if (selectedValue2 == "não estao na escola") {
              _infoText = "Não tem direito ao auxilio";
            }
          } else if (selectedValue1 == "Não é chefe de família"){
            if (selectedValue2 == "estão na escola") {
              if (selectedValue3 == "estão vacinados") {
                if (selectedValue4 == "abaixo de um salário mínimo") {
                  _infoText =
                  "Seu auxilio é de 2,5 salários minimos";
                } else
                if (selectedValue4 == "abaixo de dois salários mínimos") {
                  _infoText = "Seu auxilio é de 1,5 salários mínimos";
                }else if (selectedValue4 == "maior que as outras opções "){
                  _infoText = "Não tem direito ao auxilio";
                }
              } else if (selectedValue3 == "não estao vacinados") {
                _infoText = "Não tem direito ao auxilio";
              }
            } else if (selectedValue2 == "não estao na escola") {
              _infoText = "Não tem direito ao auxilio";
            }
          }
          break;
        case "Três ou mais":
          if (selectedValue1 == "Solteira") {
            if (selectedValue2 == "estão na escola") {
              if (selectedValue3 == "estão vacinados") {
                if (selectedValue4 == "abaixo de um salário mínimo") {
                  _infoText =
                  "Seu auxilio é de 3 salários minimos + 600 reais adicionais";
                } else
                if (selectedValue4 == "abaixo de dois salários mínimos") {
                  _infoText = "Seu auxilio é de 3 salários mínimos + 600 reais adicionais";
                }else if (selectedValue4 == "maior que as outras opções "){
                  _infoText = "Não tem direito ao auxilio";
                }
              } else if (selectedValue3 == "não estao vacinados") {
                _infoText = "Não tem direito ao auxilio";
              }
            } else if (selectedValue2 == "não estao na escola") {
              _infoText = "Não tem direito ao auxilio";
            }
          } else if (selectedValue1 == "Casada") {
            if (selectedValue2 == "estão na escola") {
              if (selectedValue3 == "estão vacinados") {
                if (selectedValue4 == "abaixo de um salário mínimo") {
                  _infoText =
                  "Seu auxilio é de 3 salários minimos";
                } else
                if (selectedValue4 == "abaixo de dois salários mínimos") {
                  _infoText = "Seu auxilio é de 3 salários mínimos";
                }else if (selectedValue4 == "maior que as outras opções "){
                  _infoText = "Não tem direito ao auxilio";
                }
              } else if (selectedValue3 == "não estao vacinados") {
                _infoText = "Não tem direito ao auxilio";
              }
            } else if (selectedValue2 == "não estao na escola") {
              _infoText = "Não tem direito ao auxilio";
            }
          } else if (selectedValue1 == "Não é chefe de família"){
            if (selectedValue2 == "estão na escola") {
              if (selectedValue3 == "estão vacinados") {
                if (selectedValue4 == "abaixo de um salário mínimo") {
                  _infoText =
                  "Seu auxilio é de 3 salários minimos";
                } else
                if (selectedValue4 == "abaixo de dois salários mínimos") {
                  _infoText = "Seu auxilio é de 3 salários mínimos";
                }else if (selectedValue4 == "maior que as outras opções "){
                  _infoText = "Não tem direito ao auxilio";
                }
              } else if (selectedValue3 == "não estao vacinados") {
                _infoText = "Não tem direito ao auxilio";
              }
            } else if (selectedValue2 == "não estao na escola") {
              _infoText = "Não tem direito ao auxilio";
            }
          }
          break;
      }
    });




  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Auxilio"),centerTitle: true,
        backgroundColor: Colors.brown,

        actions: <Widget>[
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.refresh)
          ),


        ],),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Icon(Icons.monetization_on, size: 120.0, color: Colors.brown,),

              Text("Quantidade de Filhos",textAlign: TextAlign.center,
                style: TextStyle(color: Colors.brown, fontSize: 25.0),),
              DropdownButtonFormField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.pinkAccent, width: 2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    filled: true,
                    fillColor: Colors.brown,
                  ),
                  validator: (value) => value == null ? "Select" : null,
                  dropdownColor: Colors.brown,
                  value: selectedValue,
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedValue = newValue!;
                    });
                  },
                  items: dropdownItems),
              Text("A mãe é chefe de família? se sim, ela é solteira ou casada?",textAlign: TextAlign.center,
                style: TextStyle(color: Colors.brown, fontSize: 25.0),),
              DropdownButtonFormField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.brown, width: 2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.brown, width: 2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    filled: true,
                    fillColor: Colors.brown,
                  ),
                  validator: (value) => value == null ? "Select " : null,
                  dropdownColor: Colors.brown,
                  value: selectedValue1,
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedValue1 = newValue!;
                    });
                  },
                  items: dropdownItems1),
              Text("Os filhos estão na escola?",textAlign: TextAlign.center,
                style: TextStyle(color: Colors.brown, fontSize: 25.0),),
              DropdownButtonFormField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.brown, width: 2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.brown, width: 2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    filled: true,
                    fillColor: Colors.brown,
                  ),
                  validator: (value) => value == null ? "Select " : null,
                  dropdownColor: Colors.brown,
                  value: selectedValue2,
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedValue2 = newValue!;
                    });
                  },
                  items: dropdownItems2),
              Text("Os filhos estão vacinados?",textAlign: TextAlign.center,
                style: TextStyle(color: Colors.brown, fontSize: 25.0),),
              DropdownButtonFormField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.brown, width: 2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.brown, width: 2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    filled: true,
                    fillColor: Colors.brown,
                  ),
                  validator: (value) => value == null ? "Select " : null,
                  dropdownColor: Colors.brown,
                  value: selectedValue3,
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedValue3 = newValue!;
                    });
                  },
                  items: dropdownItems3),
              Text("Renda (abaixo de 2 salários mínimos = abaixo de 2424,00 reais e abaixo de 1 salário mínimo = abaixo de 1212,00 reais)",textAlign: TextAlign.center,
                style: TextStyle(color: Colors.brown, fontSize: 25.0),),
              DropdownButtonFormField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.brown, width: 2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.brown, width: 2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    filled: true,
                    fillColor: Colors.brown,
                  ),
                  validator: (value) => value == null ? "Select " : null,
                  dropdownColor: Colors.brown,
                  value: selectedValue4,
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedValue4 = newValue!;
                    });
                  },
                  items: dropdownItems4),

              Text("Aperte em calcular para saber seu auxilio",textAlign: TextAlign.center,
                style: TextStyle(color: Colors.brown, fontSize: 25.0),),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate())
                    _calculate();
                },
                child: Text("Calcular", style: TextStyle(color: Colors.white, fontSize: 25.0),),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.brown, foregroundColor: Colors.brown ),
              ),
              Text(
                "$_infoText",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.brown, fontSize: 25.0),
              ),
            ],

          ),
        ),
      ),
    );
  }
}


