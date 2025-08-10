void main(List<String> args) {
  var maps1 = {'key1': "value1", 'key2': "value2", 'key3': "value3"};

  //or

  var maps2 = Map<String, String>();
  maps2['key1'] = "value1";
  maps2['key2'] = "value2";
  maps2['key3'] = "value3";

  //or

  var maps3 = <String, String>{
    'key1': "value1",
    'key2': "value2",
    'key3': "value3",
  };
}
