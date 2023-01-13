class Results {
  final List<Output1> output1;

  Results({
    required this.output1,
  });

  factory Results.fromJson(Map<String, dynamic> json) {
    var list = json['output1'] as List;
    List<Output1> output1List = list.map((i) => Output1.fromJson(i)).toList();

    return Results(
      output1: output1List,
    );
  }
}class Output1 {
  final String age;
  final String sex;
  final String cp;
  final String trestbps;
  final String chol;
  final String fbs;
  final dynamic restecg;
  final String thalach;
  final String exang;
  final dynamic oldpeak;
  final String slope;
  final String ca;
  final String thal;
  final String target;
  final String scoredProbabilitiesForClass0;
  final String scoredProbabilitiesForClass1;
  final String scoredLabels;

  Output1({
    required this.age,
    required this.sex,
    required this.cp,
    required this.trestbps,
    required this.chol,
    required this.fbs,
    this.restecg,
    required this.thalach,
    required this.exang,
    this.oldpeak,
    required this.slope,
    required this.ca,
    required this.thal,
    required this.target,
    required this.scoredProbabilitiesForClass0,
    required this.scoredProbabilitiesForClass1,
    required this.scoredLabels,
  });

  factory Output1.fromJson(Map<String, dynamic> json) {
    return Output1(
      age: json['age'],
      sex: json['sex'],
      cp: json['cp'],
      trestbps: json['trestbps'],
      chol: json['chol'],
      fbs: json['fbs'],
      restecg: json['restecg'],
      thalach: json['thalach'],
      exang: json['exang'],
      oldpeak: json['oldpeak'],
      slope: json['slope'],
      ca: json['ca'],
      thal: json['thal'],
      target: json['target'],
      scoredProbabilitiesForClass0: json['Scored Probabilities for Class "0"'],
      scoredProbabilitiesForClass1: json['Scored Probabilities for Class "1"'],
      scoredLabels: json['Scored Labels'],
    );
  }
}

















/*class ReportResult {
  
  final String age;
  final String sex;
  final String cp;
  final String trestbps;
  final String chol;
  final String fbs;
  final String restecg;
  final String thalach;
  final String exang;
  final String oldpeak;
  final String slope;
  final String ca;
  final String thal;
  final String target;
  final String ScoredProbabilitiesFor0;
  final String ScoredProbabilitiesFor1;
  final String ScoredLabels;

  ReportResult(
      {required this.age,
      required this.sex,
      required this.cp,
      required this.trestbps,
      required this.chol,
      required this.fbs,
      required this.restecg,
      required this.thalach,
      required this.exang,
      required this.oldpeak,
      required this.slope,
      required this.ca,
      required this.thal,
      required this.target,
      required this.ScoredProbabilitiesFor0,
      required this.ScoredProbabilitiesFor1,
      required this.ScoredLabels});



  factory ReportResult.fromJson(Map<String, dynamic> json) {

    //List<dynamic> reports = json['Results'];
   // List<ReportResult> Values = reports.map((e) => ReportResult.fromJson(e)).toList(); //here i changed by @Richard Heap answer
    return ReportResult(
      age: json['age'] as String,
      sex: json['sex'] as String,
      cp: json['cp'] as String,
      trestbps: json['trestbps']  as String ,
      chol: json['chol']  as String,
      fbs: json['fbs']  as String,
      restecg: json['restecg']  as String,
      thalach: json['thalach']  as String,
      exang: json['exang']  as String,
      oldpeak: json['oldpeak']  as String,
      slope: json['slope']  as String,
      ca: json['ca']  as String,
      thal: json['thal']  as String,
      target: json['target']  as String,
      ScoredProbabilitiesFor0:
          json['Scored Probabilities for Class \"0\"']  as String,
      ScoredProbabilitiesFor1:
          json['Scored Probabilities for Class \"1\"']  as String,
      ScoredLabels: json['Scored Labels']  as String,
   
    );
  }
}
*/


/*class ReportResult {
  final List<String> columnNames;
  final List<String> columnTypes;
  final List<Map<String,dynamic>> values;
  ReportResult({required this.columnNames, required this.columnTypes, required this.values});
}*/